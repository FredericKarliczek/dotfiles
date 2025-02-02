#!/bin/bash

echo "Start installing bash config"

script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

if [ -e ~/.bashrc ]; then
        echo "Removing existing .bashrc config"
        rm -rf ~/.bashrc
fi

if [ -d ~/.bashrc.d ]; then
	echo "Removing existing .bashrc.d directory"
	rm -rf ~/.bashrc.d
fi

echo "Creating symlinks"
ln -svf $script_dir/.bashrc ~/.bashrc
ln -svf $script_dir/.bashrc.d ~/
