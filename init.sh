#!/bin/bash

# Install xcode
xcode-select --install

# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# export the path
export PATH=/usr/local/opt/python/libexec/bin:/usr/local/bin:/usr/local/sbin:/usr/local/opt/python@2/libexec/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH

# Install Python3 and Python2 
brew install python 
brew install python@2

brew install vim

# Setup vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Install Virtualenv
pip install virtualenv virtualenvwrapper

# Create a folder for virtualenvs
if [ ! -d "$HOME/.virtualenvs" ]; then
    cd $HOME && mkdir .virtualenvs 
fi

if [ ! -f $HOME/.bash_login ]; then
    echo "source /usr/local/bin/virtualenvwrapper.sh" >> $HOME/.bash_login
fi
source /usr/local/bin/virtualenvwrapper.sh

# Instal ag
brew install the_silver_searcher
