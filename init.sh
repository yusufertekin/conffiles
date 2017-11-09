#!/bin/bash

# Install xcode
xcode-select --install

# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install PIP
sudo easy_install pip 

# Install Virtualenv
sudo pip install virtualenv virtualenvwrapper

# Create a folder for virtualenvs
if [ ! -d "$HOME/.virtualenvs" ]; then
    cd $HOME && mkdir .virtualenvs 
fi

if [ ! -f $HOME/.bash_login ]; then
    echo "source /usr/local/bin/virtualenvwrapper.sh" >> $HOME/.bash_login
fi

# Instal ag
brew install the_silver_searcher

# Setup vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Place the conf files
git clone git@github.com:yusufertekin/conffiles.git && mv conffiles/* ~

# Install Python and link it to usr/local/bin
brew install python 
brew link --overwrite python
