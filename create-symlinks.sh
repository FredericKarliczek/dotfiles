#!/bin/bash

echo "### Starting creating symlinks ###"

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

echo "Creating symlink for bash profile"
ln -svf $SCRIPT_DIR/.bash_profile ~

#file=readlink -f ./
#ln -sv 
