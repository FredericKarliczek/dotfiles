#!/bin/bash

# Session Name
session="Main"
sessionexists=$(tmux list-sessions | grep $session)

if [ "$sessionexists" = "" ]
then

    # Start new tmux session with our name
    tmux new-session -d -s $session

    # Create a new window for vimwiki
    tmux new-window -d -t $session:1 -n 'vimwiki'
    tmux send-keys -t $session:'vimwiki' 'nvim' Enter
    tmux send-keys -t $session:'vimwiki' Space 'ww'

    # Create a new window for dstask
    tmux new-window -d -t $session:2 -n 'dstask'
    tmux split-window -h -t $session:'dstask' 
    tmux send-keys -t $session:'dstask' 'while true; do clear; dstask; sleep 5; done' Enter
    tmux select-pane -L -t $session:'dstask'
fi

tmux attach-session -t $session:0
