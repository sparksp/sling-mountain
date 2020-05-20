module SlingMountain exposing (Model, Msg, init, update, view)

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
import TodoList exposing (TodoList)


type Model
    = SlingMountain (TodoList ( Key, Scenario ))


type alias Key =
    String


type Msg
    = Complete
    | GotList (TodoList ( Key, Scenario ))


init : List Scenario -> () -> ( Model, Cmd Msg )
init list _ =
    ( SlingMountain TodoList.empty
    , Random.generate GotList (list |> withKeys |> TodoList.chooseFromList)
    )


withKeys : List Scenario -> List ( Key, Scenario )
withKeys =
    List.indexedMap (\i scenario -> ( "s" ++ String.fromInt i, scenario ))



--- UPDATE


update : Msg -> Model -> ( Model, Cmd Msg )
update msg (SlingMountain model) =
    case msg of
        Complete ->
            ( SlingMountain model
            , Random.generate GotList (TodoList.complete model)
            )

        GotList newTodo ->
            ( SlingMountain newTodo
            , Cmd.none
            )



--- VIEW


view : Model -> Html Msg
view model =
    Html.div [ TW.flex, TW.flexCol, TW.itemsCenter, TW.mxAuto, TW.p3 ]
        [ viewTitle
        , viewScenarios model
        ]


viewScenarios : Model -> Html Msg
viewScenarios (SlingMountain todo) =
    (TodoList.current todo |> viewCurrentScenario)
        :: viewScenarioList
            { position = TodoList.Remaining
            , heading = ( "heading-skipped", viewHeading "Remaining" )
            , scenarios = TodoList.remaining todo
            }
        ++ viewScenarioList
            { position = TodoList.Completed
            , heading = ( "heading-completed", viewHeading "Completed" )
            , scenarios = TodoList.completed todo
            }
        ++ viewScenarioList
            { position = TodoList.Skipped
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


viewHeading : String -> Html Msg
viewHeading heading =
    Html.h2 [ TW.mt6, TW.mb3, TW.flex, TW.flexRow, TW.textGray600, TW.fontTitle ]
        [ Html.span [ TW.flex1, TW.borderGray400, TW.borderB, TW.mAuto, TW.mr2 ] []
        , Html.div []
            [ Html.span [ TW.textGray500, TW.textSm ] [ Html.text "#" ]
            , Html.text heading
            ]
        , Html.span [ TW.flex1, TW.borderGray400, TW.borderB, TW.mAuto, TW.ml2 ] []
        ]


viewCurrentScenario : Maybe ( Key, Scenario ) -> ( Key, Html Msg )
viewCurrentScenario maybe =
    case maybe of
        Just ( key, scenario ) ->
            ( key, viewScenario TodoList.Current scenario )

        Nothing ->
            ( "all-done"
            , cardFrame
                [ cardTitle [] { position = TodoList.Completed, onClick = Nothing } "All done!"
                , cardBody (Html.p [] [ Html.text "Outstanding work, you've finished all the scenarios!" ])
                ]
            )


viewScenarioList :
    { position : TodoList.Position
    , heading : ( Key, Html Msg )
    , scenarios : List ( Key, Scenario )
    }
    -> List ( Key, Html Msg )
viewScenarioList { position, heading, scenarios } =
    case scenarios of
        [] ->
            []

        _ ->
            heading :: List.map (viewScenario position |> Tuple.mapSecond) scenarios


viewScenario : TodoList.Position -> Scenario -> Html Msg
viewScenario position scenario =
    cardFrame
        (case position of
            TodoList.Current ->
                [ Scenario.mapTitle (cardTitle [] { position = position, onClick = Just Complete }) scenario
                , Scenario.mapBody (Html.map never >> cardBody) scenario
                , Scenario.mapLink cardLink scenario
                ]

            _ ->
                [ Scenario.mapTitle (cardTitle [ TW.textGray600 ] { position = position, onClick = Nothing }) scenario
                ]
        )


cardFrame : List (Html msg) -> Html msg
cardFrame children =
    Html.div
        [ TW.wFull
        , TW.rounded
        , TW.overflowHidden
        , TW.shadowLg
        , TW.bgWhite
        , TW.my3
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


cardLink : Maybe String -> Html msg
cardLink maybeLink =
    case maybeLink of
        Nothing ->
            Html.text ""

        Just link ->
            Html.div []
                [ Html.a
                    [ Attr.href link
                    , TW.block
                    , TW.textGray500
                    , TW.hoverTextGray800
                    , TW.textBase
                    , TW.borderT
                    , TW.px6
                    , TW.py2
                    ]
                    [ Html.text "Watch on YouTube." ]
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
