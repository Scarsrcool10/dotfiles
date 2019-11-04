#!/bin/bash

if [ ! `command -v zsh` ]; then
  echo "ZSH not found. Installing now."
  brew install zsh
fi

if [ ! -e $HOME/.oh-my-zsh/ ]; then
  echo "OH MY ZSH not found. Installing now."
  curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
fi

if [ ! `command -v pry` ]; then
  echo "PRY not found. Installing now"
  gem install pry
fi

if [ ! `command -v geckodriver` ]; then
  echo "GEKODRIVER not found. Installing now."
  brew install geckodriver
fi