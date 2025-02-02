#!/bin/bash

echo "Start installing nvim config"

script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

if [ -d ~/.config/nvim ]; then
	echo "~/.config/nvim exits"
	echo "Removing existing config"
	rm -rf ~/.config/nvim
fi

echo "Creating symlink"
ln -svf $script_dir ~/.config
