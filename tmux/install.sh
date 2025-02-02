#!/bin/bash

echo "Start installing tmux config"

script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
config=~/.tmux.conf

if [ -d $config ]; then
	echo "Removing existing config"
	rm -rf $config
fi

echo "Creating symlink"
ln -svf $script_dir/.tmux.conf $config
