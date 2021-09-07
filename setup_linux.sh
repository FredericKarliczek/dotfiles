#!/bin/bash

echo "### Starting creating symlinks ###"

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
LINUX_DOTFILE_DIR="$SCRIPT_DIR/linux"

# Create backup dir
DOTFILES_BACKUP_DIR="~/.dotfiles_backup
if [[ ! -e $DOTFILES_BACKUP_DIR ]]; then
	mkdir $DOTFILES_BACKUP_DIR
fi

echo "Creating symlink for bashrc"
if [[ -e "~/.bashrc" ]]; then
	mv ~/.bashrc $DOTFILES_BACKUP_DIR	
fi
ln -svf $LINUX_DOTFILE_DIR/bash/.bashrc ~

echo "Creating symlink for nvim config"
nvim_config_dir=~/.config/nvim/
if [[ ! -d "$nvim_config_dir" ]]; then
        echo "Config dir not existing. Creating dir"
        mkdir "$nvim_config_dir"
	mkdir "$nvim_config_dir/lua"
fi
ln -svf "$LINUX_DOTFILE_DIR/neovim/init.lua" "$nvim_config_dir"
ln -svf "$LINUX_DOTFILE_DIR/neovim/lua" "$nvim_config_dir/lua"

echo "Creating symlink for tmux config"
ln -svf "$LINUX_DOTFILE_DIR/tmux/.tmux.conf" ~

