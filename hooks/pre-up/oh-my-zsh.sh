#!/bin/bash
function new_setup(){
  if [ ! "$(command -v zsh)" ]; then
    read -r -p "Would you like to install ZSH shell now, [y/n]?" RESPONSE
    if [ "$RESPONSE" = "y" ]; then
      echo "ZSH not found. Installing now."
      brew install zsh
    else
      "Skipping ZSH installation..."
    fi
  else
    echo "ZSH already exists."
  fi

  if [ ! -e "$HOME"/.oh-my-zsh/ ] && [  "$(command -v zsh)" ]; then
    read "RESPONSE? It looks like ZSH is installed, but not oh-my-zsh. Would you like to install it now, [y/n]?"
    if [ "$RESPONSE" = "y" ]; then
      echo "OH MY ZSH not found. Installing now."
      curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
    else
      echo "Skipping oh-my-zsh installation..."
    fi
  else
    echo "OH MY ZSH already exists."
  fi

  if [  "$(command -v zsh)" ] && [ -n "$BASH_VERSION" ]; then
    read -r -p "It looks like zsh is installed. Would you like to change shell to zsh now, [y/n]?" RESPONSE
    if [ "$RESPONSE" = "y" ]; then
      echo "ZSH installation found. Switching shell to ZSH now."
      chsh -s /bin/zsh
      exec "$SHELL" -l
    else
      echo "Leaving shell set as bash..."
    fi
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
