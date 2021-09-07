#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# Create backup dir
DOTFILES_BACKUP_DIR="~/.dotfiles_backup"
if [[ ! -e $DOTFILES_BACKUP_DIR ]]; then
	mkdir $DOTFILES_BACKUP_DIR
fi

install() {
    echo "Installing bash configuration"
    if [[ -e "~/.bashrc" ]]; then
        echo "- Found previous .bashrc. Copying to backupfolder ..."
        mv ~/.bashrc $DOTFILES_BACKUP_DIR	
    fi
    echo "- Creating symlinks"
    ln -svf "$SCRIPT_DIR/.bashrc" ~
    
    if [[ -e "~/.bash_aliases" ]]; then
        echo "- Found previous .bash_aliases. Copying to backupfolder ..."
        mv ~/.bash_aliase $DOTFILES_BACKUP_DIR	
    fi
    ln -svf "$SCRIPT_DIR/.bash_aliases" ~
}

uninstall() {
    echo "Uninstalling bash configuration"
}

if [[ $1 == "-i" ]]; then
    install
elif [[ $1 == "-u" ]]; then
    uninstall
fi


