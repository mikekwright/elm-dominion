module Dominion where

import StartApp
import Task exposing (Task)
import Signal exposing (Signal, Address)
import Effects exposing (Effects)
import Html exposing (Html)


--
-- Start by defining the models the app will use
--

type alias Dominion = {
  score:Float,
  name:String
}

type Action = Start | Save | End | NoOp

updateModelName : Dominion -> String -> Dominion
updateModelName model newName =
  { score = model.score, name = newName }

updateModelScore : Dominion -> Float -> Dominion
updateModelScore model newScore =
  { score = newScore, name = model.name }

--
--  Create the update mechanism for the given view
--

game : { score: Float, name: String }
game = { score = 0.0, name = "My Game" }

init : (Dominion, Effects Action)
init = (game, Effects.none)

update : Action -> Dominion -> (Dominion, Effects Action)
update action model =
  case action of
    NoOp -> (model, Effects.none)
    Start -> (updateModelScore model 0, Effects.none)
    Save -> (model, Effects.none)
    End -> (updateModelName model "All Done", Effects.none)

view : Address Action -> Dominion -> Html
view address model = Html.text model.name


