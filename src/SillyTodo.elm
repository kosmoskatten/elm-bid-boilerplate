module Main exposing
  ( main
  )

import Html exposing (..)
import Html.App as App
import List exposing (map)

type alias Model =
  { items : List String }

type Msg = NoOp

init : Model
init =
  { items = ["Learn Elm", "Have some fika", "Go home"] }

view : Model -> Html Msg
view model =
  div []
    [ table [] <| map viewTodoItem model.items
    ]

viewTodoItem : String -> Html Msg
viewTodoItem label =
  tr []
    [ td [] [ text label ]
    , td [] [ text "X" ]
    ]

update : Msg -> Model -> Model
update msg model = model

main : Program Never
main =
  App.beginnerProgram
    { model         = init
    , view          = view
    , update        = update
    }
