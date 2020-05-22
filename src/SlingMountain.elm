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
import Html.Events.UnlessKeyed as UnlessKeyed
import Html.Keyed as Keyed
import Html.Tailwind as TW
import Json.Decode as Decode
import Json.Encode as Encode
import Ports
import Random
import SHA1
import Scenario exposing (Scenario)
import Svg
import Svg.Icons as Icons
import Svg.Tailwind as STW
import Task
import TodoList exposing (TodoList)


type alias Flags =
    Maybe Encode.Value


type Model
    = Model
        { embed : Embed
        , showCompleted : Bool
        , showRemaining : Bool
        , showDisabled : Bool
        , todo : TodoList Key Scenario
        , width : Int
        }


type ShowSection
    = ShowCompleted
    | ShowRemaining
    | ShowDisabled


type alias Key =
    String


type Msg
    = Complete
    | DisableCurrent
    | Disable Key
    | Restore Key
    | DomResult (Result Dom.Error ())
    | GotFirst (TodoList Key Scenario)
    | GotComplete (TodoList Key Scenario)
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
            updateAndSaveTodo todoList ( initialModel, [] )

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
            , Random.generate GotComplete (TodoList.complete model.todo)
            )

        DisableCurrent ->
            ( Model { model | embed = Embed.step model.embed }
            , Random.generate GotComplete (TodoList.disableCurrent model.todo)
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

        GotComplete newTodo ->
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
            , TW.p3
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
viewScenarios (Model { embed, todo, width, showCompleted, showRemaining, showDisabled }) =
    let
        options =
            { embed = embed, maxWidth = width }
    in
    (TodoList.current todo |> viewCurrentScenario options)
        :: viewScenarioList
            { options = options
            , position = TodoList.Remaining
            , show = ( ShowRemaining, showRemaining )
            , heading = ( "heading-disabled", viewHeading "Remaining" )
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
        |> Keyed.node "div" [ TW.maxWLg, TW.wFull ]


viewTitle : Html Msg
viewTitle =
    Html.nav [ TW.text3xl, TW.mdText4xl, TW.mb2, TW.fontTitle ]
        [ Html.span [ TW.textGray700, TW.text2xl, TW.mdText3xl ] [ Html.text "#" ]
        , Html.text "SlingMountain"
        ]


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
            , cardFrame CardFrameDefault
                [ cardTitle [] { position = TodoList.Completed, onClick = Nothing, actions = [] } "All done!"
                , cardBody (Html.p [] [ Html.text "Outstanding work, you've finished all the scenarios!" ])
                ]
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
            cardFrame CardFramePrimary
                [ Html.h1 []
                    [ Scenario.mapTitle
                        (cardTitle []
                            { position = position
                            , onClick = Just Complete
                            , actions = [ disableButton DisableCurrent ]
                            }
                        )
                        scenario
                    ]
                , Scenario.mapBody (Html.map never >> cardBody) scenario
                , Scenario.mapLink (cardLink options) scenario
                ]

        TodoList.Remaining ->
            cardFrame CardFrameActive
                [ Scenario.mapTitle
                    (cardTitle [ TW.textGray600 ]
                        { position = position
                        , onClick = Just (Pick key)
                        , actions = [ disableButton (Disable key) ]
                        }
                    )
                    scenario
                ]

        TodoList.Completed ->
            cardFrame CardFrameActive
                [ Scenario.mapTitle
                    (cardTitle [ TW.textGray600 ]
                        { position = position
                        , onClick = Just (Pick key)
                        , actions = [ restoreButton (Restore key), disableButton (Disable key) ]
                        }
                    )
                    scenario
                ]

        TodoList.Disabled ->
            cardFrame CardFrameActive
                [ Scenario.mapTitle
                    (cardTitle [ TW.textGray600 ]
                        { position = position
                        , onClick = Just (Pick key)
                        , actions = [ restoreButton (Restore key), disableIcon ]
                        }
                    )
                    scenario
                ]
    )


type CardFrameStyle
    = CardFrameDefault
    | CardFramePrimary
    | CardFrameActive


cardFrame : CardFrameStyle -> List (Html msg) -> Html msg
cardFrame style children =
    let
        baseAttributes =
            [ TW.bgWhite
            , TW.my3
            , TW.overflowHidden
            , TW.rounded
            , TW.wFull
            ]

        ( element, attributes ) =
            case style of
                CardFrameDefault ->
                    ( Html.div
                    , TW.shadowSm
                        :: baseAttributes
                    )

                CardFramePrimary ->
                    ( Html.main_
                    , Attr.id "current"
                        :: TW.shadowLg
                        :: baseAttributes
                    )

                CardFrameActive ->
                    ( Html.div
                    , TW.shadowSm
                        :: TW.hoverShadowLg
                        :: TW.hoverTranslateX1
                        :: TW.transform
                        :: TW.transitionAll
                        :: TW.duration150
                        :: TW.easeInOut
                        :: baseAttributes
                    )
    in
    element attributes children


cardTitle :
    List (Html.Attribute msg)
    ->
        { onClick : Maybe msg
        , position : TodoList.Position
        , actions : List (Html msg)
        }
    -> String
    -> Html msg
cardTitle attributes { onClick, position, actions } title =
    let
        buttonPadding =
            [ TW.px3
            , TW.py3
            ]
    in
    Html.div
        (TW.flex
            :: TW.flexRow
            :: TW.fontBold
            :: TW.leading6
            :: TW.px3
            :: TW.textXl
            :: attributes
        )
        ((case onClick of
            Just msg ->
                Html.button
                    (Events.onClick msg
                        :: TW.hoverTextBlack
                        :: TW.textGray600
                        :: TW.textLeft
                        :: TW.wFull
                        :: buttonPadding
                    )

            Nothing ->
                Html.p buttonPadding
         )
            [ positionIcon position [ STW.h4, STW.w4, STW.floatLeft, STW.mr2, STW.mt1 ]
            , Html.span [ TW.textGray900 ] [ Html.text title ]
            ]
            :: actions
        )


disableIcon : Html msg
disableIcon =
    Html.div
        [ Attr.title "This Scenario is disabled"
        , TW.cursorNotAllowed
        , TW.flex
        , TW.flexRow
        , TW.itemsCenter
        , TW.px3
        , TW.py3
        , TW.textGray600
        ]
        [ Icons.disable [ STW.h4, STW.w4 ] ]


disableButton : Msg -> Html Msg
disableButton onDisable =
    Html.button
        [ Events.onClick onDisable
        , Attr.title "Disable this Scenario"
        , TW.hoverTextBlack
        , TW.px3
        , TW.py3
        , TW.textGray600
        ]
        [ Icons.disable [ STW.h4, STW.w4 ] ]


restoreButton : Msg -> Html Msg
restoreButton onRestore =
    Html.button
        [ Events.onClick onRestore
        , Attr.title "Restore this Scenario"
        , TW.hoverTextBlack
        , TW.px3
        , TW.py3
        , TW.textGray600
        ]
        [ Icons.restore [ STW.h4, STW.w4 ] ]


cardBody : Html msg -> Html msg
cardBody body =
    Html.div
        [ TW.textGray700
        , TW.textBase
        , TW.px6
        , TW.mb3
        ]
        [ body ]


cardLink : { a | embed : Embed, maxWidth : Int } -> Maybe Scenario.Link -> Html Msg
cardLink options maybeLink =
    case maybeLink of
        Nothing ->
            Html.text ""

        Just (Scenario.Youtube youtubeId) ->
            cardYoutube options youtubeId


cardYoutube : { a | embed : Embed, maxWidth : Int } -> String -> Html Msg
cardYoutube { embed, maxWidth } youtubeId =
    Embed.map
        { default = \() -> cardYoutubeButton youtubeId
        , visible = \() -> cardYoutubeEmbed maxWidth youtubeId
        }
        embed


cardYoutubeButton : String -> Html Msg
cardYoutubeButton youtubeId =
    Html.nav [ TW.bgTransparent ]
        [ Html.a
            [ UnlessKeyed.onClick (SetEmbed Embed.One)
            , Attr.href ("https://www.youtube.com/watch?v=" ++ youtubeId)
            , TW.block
            , TW.textCenter
            , TW.borderT
            , TW.hoverTextGray800
            , TW.px6
            , TW.py2
            , TW.textGray500
            , TW.wFull
            ]
            [ Html.text "View YouTube video."
            ]
        ]


cardYoutubeEmbed : Int -> String -> Html msg
cardYoutubeEmbed maxWidth youtubeId =
    Html.figure [ TW.bgBlack, TW.transitionColors, TW.duration300, TW.easeIn ]
        [ Html.div
            [ TW.flex
            , TW.flexCol
            , TW.itemsCenter
            , TW.borderT
            ]
            [ Embed.Youtube.fromString youtubeId
                |> Embed.Youtube.attributes
                    [ Embed.Youtube.Attributes.width maxWidth
                    , Embed.Youtube.Attributes.height (maxWidth * 288 // 512)
                    ]
                |> Embed.Youtube.toHtml
            ]
        ]


positionIcon : TodoList.Position -> List (Svg.Attribute msg) -> Html msg
positionIcon position =
    case position of
        TodoList.Current ->
            Icons.todo

        TodoList.Remaining ->
            Icons.todo

        TodoList.Disabled ->
            Icons.cross

        TodoList.Completed ->
            Icons.check
