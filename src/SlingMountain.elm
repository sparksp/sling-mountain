module SlingMountain exposing (Model, Msg, init, subscriptions, update, view)

import Browser.Dom as Dom
import Browser.Events
import Embed.Youtube
import Embed.Youtube.Attributes
import Html exposing (Html)
import Html.Attributes as Attr
import Html.Events as Events
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
        { todo : TodoList Key Scenario
        , width : Int
        }


type alias Key =
    String


type Msg
    = Complete
    | DomResult (Result Dom.Error ())
    | GotList (TodoList Key Scenario)
    | GotViewport (Result Dom.Error Dom.Viewport)
    | Pick Key
    | Resize


init : List Scenario -> () -> ( Model, Cmd Msg )
init list _ =
    ( Model { todo = TodoList.empty, width = 0 }
    , Random.generate GotList (list |> withKeys |> TodoList.chooseFromList)
    )


withKeys : List Scenario -> List ( Key, Scenario )
withKeys =
    List.indexedMap (\i scenario -> ( "s" ++ String.fromInt i, scenario ))



--- UPDATE


update : Msg -> Model -> ( Model, Cmd Msg )
update msg (Model model) =
    case msg of
        Complete ->
            ( Model model
            , Random.generate GotList (TodoList.complete model.todo)
            )

        Pick key ->
            ( Model { model | todo = TodoList.pick key model.todo }
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


view : Model -> Html Msg
view model =
    Html.div [ TW.flex, TW.flexCol, TW.itemsCenter, TW.mxAuto, TW.p3 ]
        [ viewTitle
        , viewScenarios model
        ]


viewScenarios : Model -> Html Msg
viewScenarios (Model { todo, width }) =
    (TodoList.current todo |> viewCurrentScenario width)
        :: viewScenarioList
            { maxWidth = width
            , position = TodoList.Remaining
            , heading = ( "heading-skipped", viewHeading "Remaining" )
            , scenarios = TodoList.remaining todo
            }
        ++ viewScenarioList
            { maxWidth = width
            , position = TodoList.Completed
            , heading = ( "heading-completed", viewHeading "Completed" )
            , scenarios = TodoList.completed todo
            }
        ++ viewScenarioList
            { maxWidth = width
            , position = TodoList.Skipped
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


viewHeading : String -> Int -> Html Msg
viewHeading heading count =
    Html.h2 [ TW.mt6, TW.mb3, TW.flex, TW.flexRow, TW.textGray600, TW.fontTitle ]
        [ Html.span [ TW.flex1, TW.borderGray400, TW.borderB, TW.mAuto, TW.mr2 ] []
        , Html.div []
            [ Html.span [ TW.textGray500, TW.textSm ] [ Html.text "#" ]
            , Html.text (heading ++ " (" ++ String.fromInt count ++ ")")
            ]
        , Html.span [ TW.flex1, TW.borderGray400, TW.borderB, TW.mAuto, TW.ml2 ] []
        ]


viewCurrentScenario : Int -> Maybe ( Key, Scenario ) -> ( Key, Html Msg )
viewCurrentScenario maxWidth maybe =
    case maybe of
        Just ( key, scenario ) ->
            viewScenario maxWidth TodoList.Current ( key, scenario )

        Nothing ->
            ( "all-done"
            , cardFrame "all-done"
                [ cardTitle [] { position = TodoList.Completed, onClick = Nothing } "All done!"
                , cardBody (Html.p [] [ Html.text "Outstanding work, you've finished all the scenarios!" ])
                ]
            )


viewScenarioList :
    { maxWidth : Int
    , position : TodoList.Position
    , heading : ( Key, Int -> Html Msg )
    , scenarios : List ( Key, Scenario )
    }
    -> List ( Key, Html Msg )
viewScenarioList { maxWidth, position, heading, scenarios } =
    case scenarios of
        [] ->
            []

        _ ->
            Tuple.mapSecond (\make -> make (List.length scenarios)) heading
                :: List.map (viewScenario maxWidth position) scenarios


viewScenario : Int -> TodoList.Position -> ( Key, Scenario ) -> ( Key, Html Msg )
viewScenario maxWidth position ( key, scenario ) =
    ( key
    , cardFrame key
        (case position of
            TodoList.Current ->
                [ Scenario.mapTitle (cardTitle [] { position = position, onClick = Just Complete }) scenario
                , Scenario.mapBody (Html.map never >> cardBody) scenario
                , Scenario.mapLink (cardVideo maxWidth) scenario
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


cardVideo : Int -> Maybe Scenario.Link -> Html msg
cardVideo maxWidth maybeLink =
    case maybeLink of
        Nothing ->
            Html.text ""

        Just (Scenario.Youtube v) ->
            Html.div
                [ TW.flex
                , TW.flexCol
                , TW.itemsCenter
                ]
                [ Embed.Youtube.fromString v
                    |> Embed.Youtube.attributes
                        [ Embed.Youtube.Attributes.width maxWidth
                        , Embed.Youtube.Attributes.height (maxWidth * 288 // 512)
                        ]
                    |> Embed.Youtube.toHtml
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
