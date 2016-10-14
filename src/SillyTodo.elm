module Main exposing
  ( main
  )

import Html exposing (..)
import Html.App as App
import Html.Attributes as Attr
import List exposing (map)

type alias Model =
  { items : List String
  , input : String
  }

type Msg = NoOp

init : Model
init =
  { items = []
  , input = ""
  }

view : Model -> Html Msg
view model =
  div []
    [ input [ Attr.placeholder "Type a todo item!"
            , Attr.value model.input
            ] []
    , button [] [ text "Submit!" ]
    , table [] <| map viewTodoItem model.items
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
