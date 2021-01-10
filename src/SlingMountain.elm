module SlingMountain exposing (Flags, Model, Msg, application)

import Browser
import Browser.Dom as Dom
import Browser.Events
import Browser.Navigation as Nav
import Embed exposing (Embed)
import Embed.Youtube
import Embed.Youtube.Attributes
import Html exposing (Html)
import Html.Attributes as Attr
import Html.Events as Events
import Html.Keyed as Keyed
import Html.Tailwind as TW
import Json.Decode as Decode
import Json.Encode as Encode
import Ports
import Random
import SHA1
import Scenario exposing (Scenario)
import Svg exposing (Attribute)
import Svg.Tailwind as STW
import Task
import TodoList exposing (TodoList)
import Ui.Card as Card
import Ui.Card.Action as Action exposing (Action)
import Ui.Card.Footer as Footer exposing (Footer)
import Ui.Card.Frame as Frame
import Ui.Card.Title as Title
import Ui.Icons as Icons
import Url exposing (Url)


type alias Flags =
    Maybe Encode.Value


type Model
    = Model
        { embed : Embed
        , key : Nav.Key
        , showCompleted : Bool
        , showRemaining : Bool
        , showDisabled : Bool
        , showInformation : Bool
        , todo : TodoList Key Scenario
        , width : Int
        , url : Url
        }


type ShowSection
    = ShowCompleted
    | ShowRemaining
    | ShowDisabled
    | ShowInformation


type alias Key =
    String


type Msg
    = Complete
    | SkipCurrent
    | DisableCurrent
    | Disable Key
    | Restore Key
    | RestoreAll
    | RestoreAllCompleted
    | RestoreAllDisabled
    | DomResult
    | GotFirst (TodoList Key Scenario)
    | GotTodoList (TodoList Key Scenario)
    | GotViewport (Result Dom.Error Dom.Viewport)
    | GotState Encode.Value
    | Resize
    | SetEmbed Embed
    | SetShow ( ShowSection, Bool )
    | LinkClicked Browser.UrlRequest
    | UrlChanged Url


application : List Scenario -> Program Flags Model Msg
application scenarios =
    Browser.application
        { init = init scenarios
        , update = update
        , subscriptions = subscriptions
        , view = view
        , onUrlRequest = LinkClicked
        , onUrlChange = UrlChanged
        }


init : List Scenario -> Flags -> Url -> Nav.Key -> ( Model, Cmd Msg )
init list flags url navKey =
    let
        listWithKeys : List ( Key, Scenario )
        listWithKeys =
            withKeys list

        key : String
        key =
            keyFromUrl url

        todoListFromFlags : Maybe (TodoList String Scenario)
        todoListFromFlags =
            Maybe.andThen (Decode.decodeValue (TodoList.decoder listWithKeys) >> Result.toMaybe) flags
                |> Maybe.map (TodoList.pick key)

        model : Model
        model =
            initialModel url navKey
    in
    case todoListFromFlags of
        Just todoList ->
            updateAndSaveTodo todoList
                ( model
                , Cmd.batch
                    [ Task.attempt GotViewport (Dom.getViewportOf "current")
                    , replaceUrl navKey url (urlForCurrentTodo todoList)
                    ]
                )

        Nothing ->
            ( model
            , Random.generate GotFirst (TodoList.chooseFromList key listWithKeys)
            )


initialModel : Url -> Nav.Key -> Model
initialModel url key =
    Model
        { embed = Embed.None
        , key = key
        , todo = TodoList.empty
        , width = 0
        , showCompleted = False
        , showRemaining = False
        , showDisabled = False
        , showInformation = False
        , url = url
        }


withKeys : List Scenario -> List ( Key, Scenario )
withKeys =
    List.map
        (\scenario ->
            ( Scenario.mapTitle (SHA1.fromString >> SHA1.toBase64) scenario
            , scenario
            )
        )



--- UPDATE


update : Msg -> Model -> ( Model, Cmd Msg )
update msg (Model model) =
    case msg of
        Complete ->
            ( Model { model | embed = Embed.step model.embed }
            , Random.generate GotTodoList (TodoList.complete model.todo)
            )

        SkipCurrent ->
            ( Model model
            , Random.generate GotTodoList (TodoList.skip model.todo)
            )

        DisableCurrent ->
            ( Model { model | embed = Embed.step model.embed }
            , Random.generate GotTodoList (TodoList.disableCurrent model.todo)
            )

        Disable key ->
            updateAndSaveTodo (TodoList.disable key model.todo)
                ( Model { model | embed = Embed.step model.embed }
                , Cmd.batch
                    [ Task.attempt GotViewport (Dom.getViewportOf "current")
                    ]
                )

        Restore key ->
            updateAndSaveTodo (TodoList.restore key model.todo)
                ( Model model, Cmd.none )

        RestoreAll ->
            let
                restoreAllFn : TodoList comparable v -> TodoList comparable v
                restoreAllFn =
                    -- If there's any completed scenarios then restore all
                    -- completed, otherwise restore all disabled instead.
                    case TodoList.completed model.todo of
                        [] ->
                            TodoList.restoreAllDisabled

                        _ ->
                            TodoList.restoreAllCompleted
            in
            updateAndSaveTodo (restoreAllFn model.todo)
                ( Model model, Cmd.none )

        RestoreAllCompleted ->
            updateAndSaveTodo (TodoList.restoreAllCompleted model.todo)
                ( Model model, Cmd.none )

        RestoreAllDisabled ->
            updateAndSaveTodo (TodoList.restoreAllDisabled model.todo)
                ( Model model, Cmd.none )

        GotFirst newTodo ->
            ( Model { model | todo = newTodo }
            , Cmd.batch
                [ Task.attempt GotViewport (Dom.getViewportOf "current")
                , replaceUrl model.key model.url (urlForCurrentTodo newTodo)
                ]
            )

        GotTodoList newTodo ->
            updateAndSaveTodo newTodo
                ( Model model
                , Cmd.batch
                    [ Task.attempt GotViewport (Dom.getViewportOf "current")
                    , pushUrl model.key model.url (urlForCurrentTodo newTodo)
                    ]
                )

        GotState newState ->
            case TodoList.update newState model.todo of
                Ok newTodo ->
                    ( Model { model | todo = newTodo }
                    , pushUrl model.key model.url (urlForCurrentTodo newTodo)
                    )

                Err _ ->
                    ( Model model, Cmd.none )

        Resize ->
            ( Model model
            , Task.attempt GotViewport (Dom.getViewportOf "current")
            )

        DomResult ->
            ( Model model, Cmd.none )

        GotViewport (Ok viewport) ->
            ( Model { model | width = round viewport.scene.width }, Cmd.none )

        GotViewport _ ->
            ( Model model, Cmd.none )

        SetEmbed embed ->
            ( Model { model | embed = embed }, Cmd.none )

        SetShow ( ShowCompleted, show ) ->
            ( Model { model | showCompleted = show }, Cmd.none )

        SetShow ( ShowRemaining, show ) ->
            ( Model { model | showRemaining = show }, Cmd.none )

        SetShow ( ShowDisabled, show ) ->
            ( Model { model | showDisabled = show }, Cmd.none )

        SetShow ( ShowInformation, show ) ->
            ( Model { model | showInformation = show }, Cmd.none )

        LinkClicked (Browser.Internal url) ->
            ( Model model
            , Nav.pushUrl model.key (Url.toString url)
            )

        LinkClicked (Browser.External href) ->
            ( Model model
            , Nav.load href
            )

        UrlChanged url ->
            pick (keyFromUrl url) (Model { model | url = url })


pick : String -> Model -> ( Model, Cmd Msg )
pick key (Model model) =
    let
        newTodo : TodoList String Scenario
        newTodo =
            TodoList.pick key model.todo
    in
    updateAndSaveTodo newTodo
        ( Model { model | embed = Embed.step model.embed }
        , Cmd.batch
            [ Task.attempt (\_ -> DomResult) (Dom.setViewport 0 0)
            , Task.attempt GotViewport (Dom.getViewportOf "current")
            , replaceUrl model.key model.url (urlForCurrentTodo newTodo)
            ]
        )


replaceUrl : Nav.Key -> Url -> String -> Cmd msg
replaceUrl navKey currentUrl string =
    if currentUrl.path /= string then
        Nav.replaceUrl navKey string

    else
        Cmd.none


pushUrl : Nav.Key -> Url -> String -> Cmd msg
pushUrl navKey currentUrl string =
    if currentUrl.path /= string then
        Nav.pushUrl navKey string

    else
        Cmd.none


urlForCurrentTodo : TodoList Key Scenario -> String
urlForCurrentTodo todo =
    TodoList.current todo
        |> Maybe.map (Tuple.first >> keyToHref)
        |> Maybe.withDefault "/"


updateAndSaveTodo : TodoList Key Scenario -> ( Model, Cmd Msg ) -> ( Model, Cmd Msg )
updateAndSaveTodo todo ( Model model, cmd ) =
    if model.todo /= todo then
        ( Model { model | todo = todo }
        , Cmd.batch [ cmd, saveScenarios todo ]
        )

    else
        ( Model model, cmd )


saveScenarios : TodoList Key Scenario -> Cmd Msg
saveScenarios todo =
    TodoList.encoder todo
        |> Ports.storeScenarios


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.batch
        [ Browser.Events.onResize (\_ _ -> Resize)
        , Ports.loadScenarios GotState
        ]



--- VIEW


view : Model -> Browser.Document Msg
view model =
    { title = documentTitle model
    , body =
        [ Html.div
            [ TW.flex
            , TW.flexCol
            , TW.itemsCenter
            , TW.mdPx3
            , TW.py3
            ]
            [ viewTitle
            , viewScenarios model
            ]
        ]
    }


documentTitle : Model -> String
documentTitle (Model { todo }) =
    currentScenarioTitle todo
        |> Maybe.map (\title -> title ++ "\u{00A0}#SlingMountain")
        |> Maybe.withDefault "#SlingMountain"


currentScenarioTitle : TodoList Key Scenario -> Maybe String
currentScenarioTitle todo =
    TodoList.current todo
        |> Maybe.map (Tuple.second >> Scenario.mapTitle identity)


viewScenarios : Model -> Html Msg
viewScenarios (Model { embed, todo, width, showCompleted, showRemaining, showDisabled, showInformation }) =
    let
        options : { embed : Embed, maxWidth : Int }
        options =
            { embed = embed, maxWidth = width }
    in
    (TodoList.current todo |> viewCurrentScenario options)
        :: viewScenarioList
            { options = options
            , position = TodoList.Remaining
            , show = ( ShowRemaining, showRemaining )
            , heading = ( "heading-available", viewHeading "Available" )
            , footer = Nothing
            , scenarios = TodoList.remaining todo
            }
        ++ viewScenarioList
            { options = options
            , position = TodoList.Completed
            , show = ( ShowCompleted, showCompleted )
            , heading = ( "heading-completed", viewHeading "Completed" )
            , footer = Just viewRestoreAllCompletedButton
            , scenarios = TodoList.completed todo
            }
        ++ viewScenarioList
            { options = options
            , position = TodoList.Disabled
            , show = ( ShowDisabled, showDisabled )
            , heading = ( "heading-disabled", viewHeading "Disabled" )
            , footer = Just viewRestoreAllDisabledButton
            , scenarios = TodoList.disabled todo
            }
        ++ viewInformationList
            { options = options
            , show = ( ShowInformation, showInformation )
            }
        |> Keyed.node "div" [ TW.smMaxWLg, TW.wFull ]


viewTitle : Html Msg
viewTitle =
    Html.nav [ TW.text3xl, TW.mdText4xl, TW.leadingNormal, TW.mb2, TW.fontTitle ]
        [ Html.span [ TW.textGray700, TW.text2xl, TW.mdText3xl, TW.leadingNormal ] [ Html.text "#" ]
        , Html.text "SlingMountain"
        ]


viewInformationList : { options : { a | embed : Embed, maxWidth : Int }, show : ( ShowSection, Bool ) } -> List ( String, Html Msg )
viewInformationList { options, show } =
    viewCardList
        ( "heading-info", { title = "Information", show = show } )
        [ ( "phill-sparks"
          , { frame = Frame.Default
            , title =
                Title.static Icons.info "Phill Sparks"
                    |> Title.withActions
                        [ Action.link { icon = Icons.instagram, href = "https://www.instagram.com/sparksphill/", text = "Phill Sparks on Instagram" }
                        ]
            , body =
                [ Html.p [] [ Html.text "Phill Sparks is a Climbing Instructor based in the Midlands. He built this site to choose random things to practice and to quickly find the videos that explain those techniques." ]
                ]
            , footer = Footer.image { src = "/img/phill-sparks.jpg", alt = "Photo of Phill Sparks standing at the top of a crag, wearing an orange coat and waving." }
            }
          )
        , ( "get-in-touch"
          , { frame = Frame.Default
            , title =
                Title.static Icons.inboxCheck "Get in touch"
                    |> Title.withActions
                        [ Action.link { icon = Icons.bug, href = "https://github.com/sparksp/sling-mountain/issues", text = "Report a bug" }
                        ]
            , body =
                [ Html.div []
                    [ Html.p [ TW.mb2 ]
                        [ Html.text "Please get in touch with Phill if you have any suggestions for the website. If you find any bugs or typos please "
                        , Html.a [ Attr.href "https://github.com/sparksp/sling-mountain/issues", Attr.title "Report issues on GitHub", TW.hoverTextBlack ] [ Html.text "report them on GitHub" ]
                        , Html.text " where you can also find the code for this site."
                        ]
                    , Html.p []
                        [ Html.text "Please make sure you head over to YouTube and give a \"like\" to any videos you find useful. You can also leave any questions about the material covered in the video comments." ]
                    ]
                ]
            , footer = Footer.link { href = "https://phills.me.uk/contact", text = "Send Phill a message." }
            }
          )
        , ( "jb-mountain-skills"
          , { frame = Frame.Default
            , title =
                Title.static Icons.info "JB Mountain Skills"
                    |> Title.withActions
                        [ Action.link
                            { icon = Icons.instagram
                            , href = "https://www.instagram.com/jbmountainskills/"
                            , text = "JB Mountain Skills on Instagram"
                            }
                        ]
            , body =
                [ Html.p [] [ Html.text "JB Mountain Skills is a Mountaineering and Climbing Instructor based in North Wales. During 2020 he started producing YouTube videos about Climbing and Mountaineering rope work on his #SlingMountain at home." ]
                ]
            , footer = youtubeFooter options "CEwaEAh2-qE"
            }
          )
        , ( "peak-climbing-school"
          , { frame = Frame.Default
            , title =
                Title.static Icons.info "The Peak Climbing School"
                    |> Title.withActions
                        [ Action.link
                            { icon = Icons.instagram
                            , href = "https://www.instagram.com/peakclimbingschool/"
                            , text = "Peak Climbing School on Instagram"
                            }
                        ]
            , body =
                [ Html.p [] [ Html.text "The Peak Climbing School specialises in providing professionally run climbing, hill walking and mountaineering training courses in the Peak District and across the UK.  Their short videos are about techniques, hints and tips to help you progress your personal climbing skills." ]
                ]
            , footer =
                Footer.link
                    { href = "https://www.youtube.com/channel/UCqLWFSN4Be_vBRpF4geGl4A"
                    , text = "Follow the Peak Climbing School on YouTube"
                    }
            }
          )
        , ( "attribution"
          , { frame = Frame.Default
            , title = Title.static Icons.bookmarkOutline "Attribution"
            , body =
                [ Html.ul []
                    [ Html.li []
                        [ Icons.chevronRight [ STW.h4, STW.w4, STW.my1, STW.mr1, STW.floatLeft ]
                        , Html.text "Icons designed by "
                        , Html.a
                            [ Attr.href "https://www.zondicons.com/"
                            , Attr.title "Zondicons"
                            , TW.hoverTextBlack
                            ]
                            [ Html.text "Steve Schoger from Zondicons"
                            ]
                        , Html.text "."
                        ]
                    , Html.li []
                        [ Icons.chevronRight [ STW.h4, STW.w4, STW.my1, STW.mr1, STW.floatLeft ]
                        , Html.text "Icons designed by "
                        , Html.a
                            [ Attr.href "https://www.flaticon.com/authors/pixel-perfect"
                            , Attr.title "Pixel Perfect"
                            , TW.hoverTextBlack
                            ]
                            [ Html.text "Pixel Perfect from Flaticon."
                            ]
                        ]
                    ]
                ]
            , footer = Footer.none
            }
          )
        ]


viewCardList : ( String, { title : String, show : ( ShowSection, Bool ) } ) -> List ( String, Card.Card Msg ) -> List ( String, Html Msg )
viewCardList ( headingKey, { title, show } ) cards =
    case cards of
        [] ->
            []

        _ ->
            let
                heading : ( String, Html Msg )
                heading =
                    ( headingKey, viewHeading title { count = List.length cards, show = show } )
            in
            if Tuple.second show then
                heading :: List.map (Tuple.mapSecond Card.view) cards

            else
                [ heading ]


viewHeading :
    String
    ->
        { count : Int
        , show : ( ShowSection, Bool )
        }
    -> Html Msg
viewHeading heading { count, show } =
    let
        iconAttr : List (Attribute msg)
        iconAttr =
            [ STW.h4
            , STW.w4
            , STW.transitionTransform
            , STW.easeInOut
            , STW.duration200
            , STW.transform
            ]

        icon : Html msg
        icon =
            if Tuple.second show then
                Icons.chevronRight (STW.rotate90 :: iconAttr)

            else
                Icons.chevronRight iconAttr
    in
    Html.h2 [ TW.mt6, TW.mb3, TW.flex, TW.flexRow, TW.textGray600, TW.fontTitle ]
        [ Html.span [ TW.flex1, TW.borderGray400, TW.borderB, TW.mAuto, TW.mr2 ] []
        , Html.button
            [ Events.onClick (SetShow (Tuple.mapSecond not show))
            , TW.flex
            , TW.flexRow
            , TW.itemsCenter
            , TW.hoverTextGray800
            ]
            [ Html.span [] [ icon ]
            , Html.text (heading ++ " (" ++ String.fromInt count ++ ")")
            ]
        , Html.span [ TW.flex1, TW.borderGray400, TW.borderB, TW.mAuto, TW.ml2 ] []
        ]


viewCurrentScenario : { a | embed : Embed, maxWidth : Int } -> Maybe ( Key, Scenario ) -> ( Key, Html Msg )
viewCurrentScenario options maybe =
    case maybe of
        Just ( key, scenario ) ->
            viewScenario options TodoList.Current ( key, scenario )

        Nothing ->
            ( "all-done"
            , Card.view
                { frame = Frame.Default
                , title =
                    Title.static Icons.check "All done!"
                        |> Title.withActions
                            [ restoreAllButton RestoreAll
                            ]
                , body =
                    [ Html.p [] [ Html.text "Outstanding work, you've finished all the scenarios!" ]
                    ]
                , footer = Footer.none
                }
            )


viewRestoreAllCompletedButton : ( Key, Html Msg )
viewRestoreAllCompletedButton =
    ( "restore-all-completed"
    , Html.div
        [ TW.flex
        , TW.flexRow
        , TW.justifyCenter
        ]
        [ Html.button
            [ Events.onClick RestoreAllCompleted
            , TW.textGray600
            , TW.hoverTextGray800
            , TW.wFull
            ]
            [ Html.text "Restore All Completed Scenarios"
            ]
        ]
    )


viewRestoreAllDisabledButton : ( Key, Html Msg )
viewRestoreAllDisabledButton =
    ( "restore-all-completed"
    , Html.div
        [ TW.flex
        , TW.flexRow
        , TW.justifyCenter
        ]
        [ Html.button
            [ Events.onClick RestoreAllDisabled
            , TW.textGray600
            , TW.hoverTextGray800
            , TW.wFull
            ]
            [ Html.text "Restore All Disabled Scenarios"
            ]
        ]
    )


viewScenarioList :
    { options : { a | embed : Embed, maxWidth : Int }
    , position : TodoList.Position
    , show : ( ShowSection, Bool )
    , heading : ( Key, { count : Int, show : ( ShowSection, Bool ) } -> Html Msg )
    , footer : Maybe ( Key, Html Msg )
    , scenarios : List ( Key, Scenario )
    }
    -> List ( Key, Html Msg )
viewScenarioList { options, position, show, heading, footer, scenarios } =
    let
        makeHeading : ({ count : Int, show : ( ShowSection, Bool ) } -> Html Msg) -> Html Msg
        makeHeading =
            \make ->
                make
                    { count = List.length scenarios
                    , show = show
                    }
    in
    case ( scenarios, Tuple.second show ) of
        ( [], _ ) ->
            []

        ( _, False ) ->
            [ Tuple.mapSecond makeHeading heading
            ]

        ( _, True ) ->
            let
                tail : List ( Key, Html Msg )
                tail =
                    footer
                        |> Maybe.map List.singleton
                        |> Maybe.withDefault []
            in
            Tuple.mapSecond makeHeading heading
                :: List.map (viewScenario options position) scenarios
                ++ tail


viewScenario : { a | embed : Embed, maxWidth : Int } -> TodoList.Position -> ( Key, Scenario ) -> ( Key, Html Msg )
viewScenario options position ( key, scenario ) =
    ( key
    , case position of
        TodoList.Current ->
            Card.view
                { frame = Frame.Primary
                , title =
                    Scenario.mapTitle
                        (Title.button
                            { icon = Icons.todo
                            , onClick = Complete
                            }
                        )
                        scenario
                        |> Title.withActions [ skipButton SkipCurrent, disableButton DisableCurrent ]
                , body =
                    Scenario.mapBody (List.map (Html.map never)) scenario
                , footer = Scenario.mapLink (scenarioFooterLink options) scenario
                }

        TodoList.Remaining ->
            Card.view
                { frame = Frame.Active
                , title =
                    Scenario.mapTitle
                        (Title.link
                            { icon = Icons.todo
                            , href = keyToHref key
                            }
                        )
                        scenario
                        |> Title.withActions [ disableButton (Disable key) ]
                , body = []
                , footer = Footer.none
                }

        TodoList.Completed ->
            Card.view
                { frame = Frame.Active
                , title =
                    Scenario.mapTitle
                        (Title.link
                            { icon = Icons.check
                            , href = keyToHref key
                            }
                        )
                        scenario
                        |> Title.withActions [ restoreButton (Restore key), disableButton (Disable key) ]
                , body = []
                , footer = Footer.none
                }

        TodoList.Disabled ->
            Card.view
                { frame = Frame.Active
                , title =
                    Scenario.mapTitle
                        (Title.link
                            { icon = Icons.cross
                            , href = keyToHref key
                            }
                        )
                        scenario
                        |> Title.withActions [ restoreButton (Restore key), disableIcon ]
                , body = []
                , footer = Footer.none
                }
    )


disableIcon : Action msg
disableIcon =
    Action.icon
        { icon = Icons.disable
        , text = "This Scenario is disabled"
        }


disableButton : Msg -> Action Msg
disableButton onDisable =
    Action.button
        { icon = Icons.disable
        , text = "Disable this Scenario"
        , onClick = onDisable
        }


restoreButton : Msg -> Action Msg
restoreButton onRestore =
    Action.button
        { icon = Icons.restore
        , text = "Restore this Scenario"
        , onClick = onRestore
        }


restoreAllButton : Msg -> Action Msg
restoreAllButton onRestoreAll =
    Action.button
        { icon = Icons.restoreAll
        , text = "Restore all scenarios"
        , onClick = onRestoreAll
        }


skipButton : Msg -> Action Msg
skipButton onSkip =
    Action.button
        { icon = Icons.skip
        , text = "Skip this Scenario"
        , onClick = onSkip
        }


scenarioFooterLink : { a | embed : Embed, maxWidth : Int } -> Maybe Scenario.Link -> Footer Msg
scenarioFooterLink options link =
    case link of
        Nothing ->
            Footer.none

        Just (Scenario.Youtube youtubeId) ->
            youtubeFooter options youtubeId


youtubeFooter : { a | embed : Embed, maxWidth : Int } -> String -> Footer Msg
youtubeFooter { embed, maxWidth } youtubeId =
    Embed.map
        { key = youtubeId
        , default = \() -> youtubeFooterButton youtubeId
        , visible = \() -> youtubeFooterEmbed maxWidth youtubeId
        }
        embed


youtubeFooterButton : String -> Footer Msg
youtubeFooterButton youtubeId =
    Footer.button
        { text = "Play YouTube video"
        , onClick = SetEmbed (Embed.One youtubeId)
        }
        |> Footer.withAction
            (Action.link
                { href = "https://www.youtube.com/watch?v=" ++ youtubeId
                , icon = Icons.youtube
                , text = "View video on YouTube"
                }
            )


youtubeFooterEmbed : Int -> String -> Footer msg
youtubeFooterEmbed maxWidth youtubeId =
    Footer.figure
        { attributes = [ TW.bgBlack, TW.transitionColors, TW.duration300, TW.easeIn ]
        , content =
            [ Html.div
                [ TW.flex
                , TW.flexCol
                , TW.itemsCenter
                ]
                [ Embed.Youtube.fromString youtubeId
                    |> Embed.Youtube.attributes
                        [ Embed.Youtube.Attributes.width maxWidth
                        , Embed.Youtube.Attributes.height (maxWidth * 288 // 512)
                        ]
                    |> Embed.Youtube.toHtml
                ]
            ]
        }


keyFromUrl : Url -> String
keyFromUrl url =
    String.dropLeft 1 url.path


keyToHref : String -> String
keyToHref key =
    "/" ++ key
