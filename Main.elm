module Main exposing (..)

import Html exposing (..)
import Html.Events exposing (onClick)
import Html.App

-- Main

main : Program Never
main = Html.App.beginnerProgram
  { model = 0
  , update = update
  , view = view
  }

-- Model
type alias Model = Int

-- Messages

type Msg
  = Inc
  | Dec

-- Update

update : Msg -> Model -> Model
update msg model =
  case msg of
    Inc -> model + 1
    Dec -> model - 1

-- View

view : Model -> Html Msg
view model =
  div []
    [ div [] [text "Count: ", text <| toString model]
    , button [onClick Dec] [text "Decrement"]
    , button [onClick Inc] [text "Increment"]
    ]
