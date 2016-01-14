module Dominion where

import StartApp
import Task exposing (Task)
import Signal exposing (Signal, Address)
import Effects exposing (Effects)
import Html exposing (Html)


--
-- Start by defining the models the app will use
--

type alias Dominion = String --
--  score:Float,
--  name:String
--}


type Action = Start | Save | End | NoOp

--
--  Create the update mechanism for the given view
--

game : Dominion
--game = { score = 0.0, name = "My Game" }
game = "Hello"

init : (Dominion, Effects Action)
init = (game, Effects.none)

update : Action -> Dominion -> (Dominion, Effects Action)
update action model =
  case action of
    NoOp -> (model, Effects.none)
    Start -> (model, Effects.none)
    Save -> (model, Effects.none)
    End -> (model, Effects.none)

view : Address Action -> Dominion -> Html
view address model = Html.text model

--
-- StartApp boilerplate
--
--app =
--  StartApp.start { init = init, view = view, update = update, inputs = [] }
--
--main : Signal Html
--main =
--  app.html

--port tasks : Signal (Task Never ())
--port tasks =
--  app.tasks

--
-- My type declarations
--
--type alias Model = String
--
--type Action = NoOp

--
-- My functions
--

