module SlingMountain exposing (Model, Msg, init, subscriptions, update, view)

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
import Random
import Scenario exposing (Scenario)
import Svg
import Svg.Icons as Icons
import Svg.Tailwind as STW
import Task
import TodoList exposing (TodoList)


type Model
    = Model
        { embed : Embed
        , showCompleted : Bool
        , showRemaining : Bool
        , showSkipped : Bool
        , todo : TodoList Key Scenario
        , width : Int
        }


type ShowSection
    = ShowCompleted
    | ShowRemaining
    | ShowSkipped


type alias Key =
    String


type Msg
    = Complete
    | DomResult (Result Dom.Error ())
    | GotList (TodoList Key Scenario)
    | GotViewport (Result Dom.Error Dom.Viewport)
    | Pick Key
    | Resize
    | SetEmbed Embed
    | SetShow ( ShowSection, Bool )


init : List Scenario -> () -> ( Model, Cmd Msg )
init list _ =
    ( initialModel
    , Random.generate GotList (list |> withKeys |> TodoList.chooseFromList)
    )


initialModel : Model
initialModel =
    Model
        { embed = Embed.None
        , todo = TodoList.empty
        , width = 0
        , showCompleted = False
        , showRemaining = False
        , showSkipped = False
        }


withKeys : List Scenario -> List ( Key, Scenario )
withKeys =
    List.indexedMap (\i scenario -> ( "s" ++ String.fromInt i, scenario ))



--- UPDATE


update : Msg -> Model -> ( Model, Cmd Msg )
update msg (Model model) =
    case msg of
        Complete ->
            ( Model { model | embed = Embed.step model.embed }
            , Random.generate GotList (TodoList.complete model.todo)
            )

        Pick key ->
            ( Model
                { model
                    | todo = TodoList.pick key model.todo
                    , embed = Embed.step model.embed
                }
            , Cmd.batch
                [ Task.attempt DomResult (Dom.setViewport 0 0)
                , Task.attempt GotViewport (Dom.getViewportOf key)
                ]
            )

        GotList newTodo ->
            ( Model { model | todo = newTodo }
            , getViewportOfCurrent newTodo
            )

        Resize ->
            ( Model model
            , getViewportOfCurrent model.todo
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

        SetShow ( ShowSkipped, show ) ->
            ( Model { model | showSkipped = show }, Cmd.none )


getViewportOfCurrent : TodoList Key v -> Cmd Msg
getViewportOfCurrent todo =
    case TodoList.current todo of
        Just ( key, _ ) ->
            Task.attempt GotViewport (Dom.getViewportOf key)

        Nothing ->
            Cmd.none


subscriptions : Model -> Sub Msg
subscriptions _ =
    Browser.Events.onResize (\_ _ -> Resize)



--- VIEW


view : Model -> Browser.Document Msg
view model =
    { title = documentTitle model
    , body =
        [ Html.div
            [ TW.bgGray300
            , TW.flex
            , TW.flexCol
            , TW.itemsCenter
            , TW.minHScreen
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
viewScenarios (Model { embed, todo, width, showCompleted, showRemaining, showSkipped }) =
    let
        options =
            { embed = embed, maxWidth = width }
    in
    (TodoList.current todo |> viewCurrentScenario options)
        :: viewScenarioList
            { options = options
            , position = TodoList.Remaining
            , show = ( ShowRemaining, showRemaining )
            , heading = ( "heading-skipped", viewHeading "Remaining" )
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
            , position = TodoList.Skipped
            , show = ( ShowSkipped, showSkipped )
            , heading = ( "heading-skipped", viewHeading "Skipped" )
            , scenarios = TodoList.skipped todo
            }
        |> Keyed.node "div" [ TW.maxWLg, TW.wFull ]


viewTitle : Html Msg
viewTitle =
    Html.h1 [ TW.text3xl, TW.mdText4xl, TW.mb2, TW.fontTitle ]
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
        icon =
            if Tuple.second show then
                Icons.chevronDown

            else
                Icons.chevronUp
    in
    Html.h2 [ TW.mt6, TW.mb3, TW.flex, TW.flexRow, TW.textGray600, TW.fontTitle ]
        [ Html.span [ TW.flex1, TW.borderGray400, TW.borderB, TW.mAuto, TW.mr2 ] []
        , Html.button [ TW.flex, TW.flexRow, TW.itemsCenter, Events.onClick (SetShow (Tuple.mapSecond not show)) ]
            [ Html.span [ TW.textGray500, TW.textSm ] [ Html.text "#" ]
            , Html.text (heading ++ " (" ++ String.fromInt count ++ ")")
            , Html.span [] [ icon [ STW.h4, STW.w4 ] ]
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
            , cardFrame "all-done"
                [ cardTitle [] { position = TodoList.Completed, onClick = Nothing } "All done!"
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
    , cardFrame key
        (case position of
            TodoList.Current ->
                [ Scenario.mapTitle (cardTitle [] { position = position, onClick = Just Complete }) scenario
                , Scenario.mapBody (Html.map never >> cardBody) scenario
                , Scenario.mapLink (cardLink options) scenario
                ]

            TodoList.Remaining ->
                [ Scenario.mapTitle (cardTitle [ TW.textGray600 ] { position = position, onClick = Just (Pick key) }) scenario
                ]

            _ ->
                [ Scenario.mapTitle (cardTitle [ TW.textGray600 ] { position = position, onClick = Nothing }) scenario
                ]
        )
    )


cardFrame : Key -> List (Html msg) -> Html msg
cardFrame key children =
    Html.div
        [ TW.wFull
        , TW.rounded
        , TW.overflowHidden
        , TW.shadowLg
        , TW.bgWhite
        , TW.my3
        , Attr.id key
        ]
        children


cardTitle : List (Html.Attribute msg) -> { position : TodoList.Position, onClick : Maybe msg } -> String -> Html msg
cardTitle attributes { position, onClick } title =
    let
        titleAttributes =
            [ TW.fontBold
            , TW.textXl
            , TW.px6
            , TW.py3
            , TW.leading6
            ]
                ++ attributes
    in
    (case onClick of
        Just msg ->
            Html.button
                (TW.textLeft :: TW.wFull :: Events.onClick msg :: titleAttributes)

        Nothing ->
            Html.h2 titleAttributes
    )
        [ positionIcon position [ STW.h4, STW.w4, STW.floatLeft, STW.mr2, STW.mt1 ]
        , Html.text title
        ]


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
    Html.div [ TW.bgTransparent ]
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
    Html.div [ TW.bgBlack, TW.transitionColors, TW.duration300, TW.easeIn ]
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

        TodoList.Skipped ->
            Icons.cross

        TodoList.Completed ->
            Icons.check
