#!/bin/bash
function new_setup(){
  if [ ! "$(command -v zsh)" ]; then
    echo "ZSH not found. Installing now."
    brew install zsh
  else
    echo "ZSH already exists."
  fi

  if [ ! -e "$HOME"/.oh-my-zsh/ ]; then
    echo "OH MY ZSH not found. Installing now."
    curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
  else
    echo "OH MY ZSH already exists."
  fi

  if [  "$(command -v zsh)" ] && [ ! "$0" ]; then
    echo "ZSH installation found. Switching shell to ZSH now."
    chsh -s /bin/zsh
    exec "$SHELL" -l
  fi

  if [ ! "$(command -v pry)" ]; then
    echo "PRY not found. Installing now"
    gem install pry
  else
    echo "PRY already exists."
  fi

  if [ ! "$(command -v geckodriver)" ]; then
    echo "GEKODRIVER not found. Installing now."
    brew install geckodriver
  else
    echo "GEKODRIVER already exists."
  fi

  if [ ! "$(command -v rbenv)" ]; then
    echo "RBENV not found. Installing now."
    brew install rbenv
  else
    echo "RBENV already exists."
  fi

  if [ ! "$(command -v ruby)" ]; then
    echo "RUBY not found. Installing now."
    rbenv install '2.6.3'
  else
    echo "RUBY already exists."
  fi

  if [ ! "$(command -v mysql)" ]; then
    echo "MYSQL not found. Installing now."
    brew install mysql@5.7
  else
    echo "MYSQL already exists."
  fi
}
