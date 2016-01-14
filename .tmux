#!/usr/bin/env bash
# vi: ft=sh

tmux new-session -d -s "angularjs"
tmux send-keys "make" C-m
tmux split-window -h -p 90 "karma"
tmux split-window -h -p 90
tmux attach-session  -t "angularjs"

