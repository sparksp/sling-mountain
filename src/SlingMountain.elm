module SlingMountain exposing (Flags, Model, Msg, init, subscriptions, update, view)

import Browser
import Browser.Dom as Dom
import Browser.Events
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
import Svg.Tailwind as STW
import Task
import TodoList exposing (TodoList)
import Ui.Card as Card
import Ui.Card.Action as Action exposing (Action)
import Ui.Card.Frame as Frame
import Ui.Card.Link as Link exposing (Link)
import Ui.Card.Title as Title
import Ui.Icons as Icons


type alias Flags =
    Maybe Encode.Value


type Model
    = Model
        { embed : Embed
        , showCompleted : Bool
        , showRemaining : Bool
        , showDisabled : Bool
        , showInformation : Bool
        , todo : TodoList Key Scenario
        , width : Int
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
    | DomResult (Result Dom.Error ())
    | GotFirst (TodoList Key Scenario)
    | GotTodoList (TodoList Key Scenario)
    | GotViewport (Result Dom.Error Dom.Viewport)
    | Pick Key
    | Resize
    | SetEmbed Embed
    | SetShow ( ShowSection, Bool )


init : List Scenario -> Flags -> ( Model, Cmd Msg )
init list flags =
    let
        listWithKeys =
            withKeys list

        todoListFromFlags =
            Maybe.andThen (Decode.decodeValue (TodoList.decoder listWithKeys) >> Result.toMaybe) flags
    in
    case todoListFromFlags of
        Just todoList ->
            updateAndSaveTodo todoList
                ( initialModel
                , [ Task.attempt GotViewport (Dom.getViewportOf "current")
                  ]
                )

        Nothing ->
            ( initialModel
            , Random.generate GotFirst (TodoList.chooseFromList listWithKeys)
            )


initialModel : Model
initialModel =
    Model
        { embed = Embed.None
        , todo = TodoList.empty
        , width = 0
        , showCompleted = False
        , showRemaining = False
        , showDisabled = False
        , showInformation = False
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
                , [ Task.attempt GotViewport (Dom.getViewportOf "current")
                  ]
                )

        Restore key ->
            updateAndSaveTodo (TodoList.restore key model.todo)
                ( Model model, [] )

        Pick key ->
            updateAndSaveTodo (TodoList.pick key model.todo)
                ( Model { model | embed = Embed.step model.embed }
                , [ Task.attempt DomResult (Dom.setViewport 0 0)
                  , Task.attempt GotViewport (Dom.getViewportOf "current")
                  ]
                )

        GotFirst newTodo ->
            ( Model { model | todo = newTodo }
            , Task.attempt GotViewport (Dom.getViewportOf "current")
            )

        GotTodoList newTodo ->
            updateAndSaveTodo newTodo
                ( Model model
                , [ Task.attempt GotViewport (Dom.getViewportOf "current") ]
                )

        Resize ->
            ( Model model
            , Task.attempt GotViewport (Dom.getViewportOf "current")
            )

        DomResult _ ->
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


updateAndSaveTodo : TodoList Key Scenario -> ( Model, List (Cmd Msg) ) -> ( Model, Cmd Msg )
updateAndSaveTodo todo ( Model model, cmdList ) =
    ( Model { model | todo = todo }
    , Cmd.batch (saveScenarios todo :: cmdList)
    )


saveScenarios : TodoList Key Scenario -> Cmd Msg
saveScenarios todo =
    TodoList.encoder todo
        |> Ports.storeScenarios


subscriptions : Model -> Sub Msg
subscriptions _ =
    Browser.Events.onResize (\_ _ -> Resize)



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
        options =
            { embed = embed, maxWidth = width }
    in
    (TodoList.current todo |> viewCurrentScenario options)
        :: viewScenarioList
            { options = options
            , position = TodoList.Remaining
            , show = ( ShowRemaining, showRemaining )
            , heading = ( "heading-available", viewHeading "Available" )
            , scenarios = TodoList.remaining todo
            }
        ++ viewScenarioList
            { options = options
            , position = TodoList.Completed
            , show = ( ShowCompleted, showCompleted )
            , heading = ( "heading-completed", viewHeading "Completed" )
            , scenarios = TodoList.completed todo
            }
        ++ viewScenarioList
            { options = options
            , position = TodoList.Disabled
            , show = ( ShowDisabled, showDisabled )
            , heading = ( "heading-disabled", viewHeading "Disabled" )
            , scenarios = TodoList.disabled todo
            }
        ++ viewInformationList
            { options = options
            , show = ( ShowInformation, showInformation )
            }
        |> Keyed.node "div" [ TW.smMaxWLg, TW.wFull ]


viewTitle : Html Msg
viewTitle =
    Html.nav [ TW.text3xl, TW.mdText4xl, TW.mb2, TW.fontTitle ]
        [ Html.span [ TW.textGray700, TW.text2xl, TW.mdText3xl ] [ Html.text "#" ]
        , Html.text "SlingMountain"
        ]


viewInformationList : { options : { a | embed : Embed, maxWidth : Int }, show : ( ShowSection, Bool ) } -> List ( String, Html Msg )
viewInformationList { options, show } =
    let
        heading =
            ( "heading-info"
            , viewHeading "Information"
                { count = 4
                , show = show
                }
            )
    in
    if Tuple.second show then
        [ heading
        , ( "phill-sparks"
          , Card.view
                { frame = Frame.Default
                , title =
                    Title.static Icons.info "Phill Sparks"
                        |> Title.withActions
                            [ Action.link { icon = Icons.instagram, href = "https://www.instagram.com/sparksphill/", text = "Phill Sparks on Instagram" }
                            ]
                , body =
                    [ Html.p [] [ Html.text "Phill Sparks is a Climbing Instructor based in the Midlands. He built this site to choose random things to practice and to quickly find the videos that explain those techniques." ]
                    ]
                , link = Link.image { src = "/img/phill-sparks.jpg", alt = "Photo of Phill Sparks standing at the top of a crag, wearing an orange coat and waving." }
                }
          )
        , ( "get-in-touch"
          , Card.view
                { frame = Frame.Default
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
                , link = Link.link { href = "https://phills.me.uk/contact", text = "Send Phill a message." }
                }
          )
        , ( "jb-mountain-skills"
          , Card.view
                { frame = Frame.Default
                , title =
                    Title.static Icons.info "JB Mountain Skills"
                        |> Title.withActions
                            [ Action.link { icon = Icons.instagram, href = "https://www.instagram.com/jbmountainskills/", text = "JB Mountain Skills on Instagram" }
                            ]
                , body =
                    [ Html.p [] [ Html.text "JB Mountain Skills is a Mountaineering and Climbing Instructor based in North Wales. During 2020 he started producing YouTube videos about Climbing and Mountaineering rope work on his #SlingMountain at home." ]
                    ]
                , link = cardYoutube options "CEwaEAh2-qE"
                }
          )
        , ( "attribution"
          , Card.view
                { frame = Frame.Default
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
                , link = Link.none
                }
          )
        , ( "spacing"
          , Html.div [ TW.mb6 ] []
          )
        ]

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
        iconAttr =
            [ STW.h4
            , STW.w4
            , STW.transitionTransform
            , STW.easeInOut
            , STW.duration200
            , STW.transform
            ]

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
                , title = Title.static Icons.check "All done!"
                , body =
                    [ Html.p [] [ Html.text "Outstanding work, you've finished all the scenarios!" ]
                    ]
                , link = Link.none
                }
            )


viewScenarioList :
    { options : { a | embed : Embed, maxWidth : Int }
    , position : TodoList.Position
    , show : ( ShowSection, Bool )
    , heading : ( Key, { count : Int, show : ( ShowSection, Bool ) } -> Html Msg )
    , scenarios : List ( Key, Scenario )
    }
    -> List ( Key, Html Msg )
viewScenarioList { options, position, show, heading, scenarios } =
    let
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
            Tuple.mapSecond makeHeading heading
                :: List.map (viewScenario options position) scenarios


viewScenario : { a | embed : Embed, maxWidth : Int } -> TodoList.Position -> ( Key, Scenario ) -> ( Key, Html Msg )
viewScenario options position ( key, scenario ) =
    ( key
    , case position of
        TodoList.Current ->
            Card.view
                { frame = Frame.Primary
                , title =
                    Scenario.mapTitle
                        (Title.active
                            { icon = Icons.todo
                            , onClick = Complete
                            }
                        )
                        scenario
                        |> Title.withActions [ skipButton SkipCurrent, disableButton DisableCurrent ]
                , body =
                    [ Scenario.mapBody (Html.map never) scenario
                    ]
                , link = Scenario.mapLink (cardLink options) scenario
                }

        TodoList.Remaining ->
            Card.view
                { frame = Frame.Active
                , title =
                    Scenario.mapTitle
                        (Title.active
                            { icon = Icons.todo
                            , onClick = Pick key
                            }
                        )
                        scenario
                        |> Title.withActions [ disableButton (Disable key) ]
                , body = []
                , link = Link.none
                }

        TodoList.Completed ->
            Card.view
                { frame = Frame.Active
                , title =
                    Scenario.mapTitle
                        (Title.active
                            { icon = Icons.check
                            , onClick = Pick key
                            }
                        )
                        scenario
                        |> Title.withActions [ restoreButton (Restore key), disableButton (Disable key) ]
                , body = []
                , link = Link.none
                }

        TodoList.Disabled ->
            Card.view
                { frame = Frame.Active
                , title =
                    Scenario.mapTitle
                        (Title.active
                            { icon = Icons.cross
                            , onClick = Pick key
                            }
                        )
                        scenario
                        |> Title.withActions [ restoreButton (Restore key), disableIcon ]
                , body = []
                , link = Link.none
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


skipButton : Msg -> Action Msg
skipButton onSkip =
    Action.button
        { icon = Icons.skip
        , text = "Skip this Scenario"
        , onClick = onSkip
        }


cardLink : { a | embed : Embed, maxWidth : Int } -> Maybe Scenario.Link -> Link Msg
cardLink options link =
    case link of
        Nothing ->
            Link.none

        Just (Scenario.Youtube youtubeId) ->
            cardYoutube options youtubeId


cardYoutube : { a | embed : Embed, maxWidth : Int } -> String -> Link Msg
cardYoutube { embed, maxWidth } youtubeId =
    Embed.map
        { key = youtubeId
        , default = \() -> cardYoutubeButton youtubeId
        , visible = \() -> cardYoutubeEmbed maxWidth youtubeId
        }
        embed


cardYoutubeButton : String -> Link Msg
cardYoutubeButton youtubeId =
    Link.button
        { href = "https://www.youtube.com/watch?v=" ++ youtubeId
        , text = "View YouTube video."
        , onClick = SetEmbed (Embed.One youtubeId)
        }


cardYoutubeEmbed : Int -> String -> Link msg
cardYoutubeEmbed maxWidth youtubeId =
    Link.figure
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
