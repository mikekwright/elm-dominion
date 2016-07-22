module App where

import StartApp
import Task exposing (Task)
import Signal exposing (Signal, Address)
import Effects exposing (Never)

import Dominion

app =
  StartApp.start { init = Dominion.init, inputs = [], update = Dominion.update, view = Dominion.view }

main =
  app.html

port tasks : Signal (Task Never ())
port tasks =
  app.tasks


