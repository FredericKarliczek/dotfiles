#!/bin/bash

echo "### Starting creating symlinks ###"

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

echo "Creating symlink for bash profile"
ln -svf $SCRIPT_DIR/Bash/.bash_profile ~

echo "Creating symlink for nvim config"
nvim_config_dir=~/.config/nvim/
if [[ ! -d "$nvim_config_dir" ]]; then
        echo "Config dir not existing. Creating dir"
        mkdir "$nvim_config_dir"
fi
ln -svf "$SCRIPT_DIR/NeoVim/init.lua" "$nvim_config_dir"
ln -svf "$SCRIPT_DIR/NeoVim/lua" "$nvim_config_dir/lua"

echo "Creating symlink for tmux config"
ln -svf $SCRIPT_DIR/Tmux/.tmux.conf ~

