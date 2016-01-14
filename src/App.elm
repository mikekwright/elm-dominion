module App where

import StartApp
import Task exposing (Task)
import Signal exposing (Signal, Address)
import Effects exposing (Never)

import Dominion -- exposing (init, update, view)

app =
  StartApp.start { init = Dominion.init, inputs = [], update = Dominion.update, view = Dominion.view }
  --StartApp.start { init = init, inputs = [], update = update, view = view }

main =
  app.html

port tasks : Signal (Task Never ())
port tasks =
  app.tasks


