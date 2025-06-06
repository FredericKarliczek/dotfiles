#!/bin/bash

echo "Start installing i3 config"

script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
config_folder=~/.config/i3

if [ -d $config_folder ]; then
	echo "Removing existing config"
	rm -rf $config_folder
fi

echo "Creating symlink"
ln -svf $script_dir ~/.config
