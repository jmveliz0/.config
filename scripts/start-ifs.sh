#!/bin/bash
if ! tmux has-session -t ifs; then
# Paths
ifsPath=~/dev/ifs/front
appPath=$ifsPath/ifs-UI-App
libPath=$ifsPath/ifs-UI-Library

# Commands
appStartCommand="npm run start"
libStartCommand="npm run start"

#Create session
tmux new -c $appPath -s ifs -d

# window 1 - App
tmux rename-window -t ifs:1 app
tmux send-keys -t ifs:1 "vim ." Enter
tmux split-window -h -c $appPath -t ifs:1 
tmux send-keys -t ifs:1.1 "$appStartCommand" Enter 

## window 2 - Lib
tmux new-window -c $libPath -n lib -t ifs:2 
tmux send-keys -t ifs:2 "vim ." Enter
tmux split-window -h -c $libPath -t ifs:2 
tmux send-keys -t ifs:2.1 "$libStartCommand" Enter 
fi

tmux attach -t ifs
