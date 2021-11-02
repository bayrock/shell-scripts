#!/bin/bash

#for f in ./includes; do source $f; done
source ./includes/exit_on_error.sh

# Setup essentials for new environments
echo Initiating setup..
apt-get update || exit_on_error $? !!
apt-get install neovim
apt-get install man
apt-get install neofetch

# Install and configure git
apt-get install git || exit_on_error $? !!
read -p 'Input git user.name:' name
git config --global user.name "$name"
read -p 'Input git user.email:' email
git config --global user.email "$email"

