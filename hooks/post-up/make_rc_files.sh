#!/bin/bash
function make_syms(){
  GITFILE=$HOME/.gitconfig
  if [ ! -f "${GITFILE}" ]; then
    touch "${HOME}/.gitconfig"
    ln -sf $HOME/dev/dotfiles/gitconfig $GITFILE
  else
    echo "${GITFILE} already exists."
  fi

  EXPORTS=$HOME/.exports
  if [ ! -f "${EXPORTS}" ]; then
    touch "${HOME}/.exports"
    CUSTOM_FF_PATH="export CUSTOM_FF_PATH=~/dev/cucumber-regression/Firefox\ 2.app/Contents/MacOS/firefox"
    echo $CUSTOM_FF_PATH >> .exports
  else
    echo "${EXPORTS} already exists."
  fi

  PUB_ALIASES=$HOME/.pub_aliases
  if [ ! -f "${PUB_ALIASES}" ]; then
    touch "${HOME}/.pub_aliases"
    ln -sf $HOME/dev/dotfiles/pub_aliases $PUB_ALIASES
  else
    echo "${PUB_ALIASES} already exists."
  fi

  RCRC=$HOME/.rcrc
  if [ ! -f "${RCRC}" ]; then
    touch "${HOME}/.rcrc"
    ln -sf $HOME/dev/dotfiles/rcrc $RCRC
  else
    echo "${RCRC} already exists."
  fi

  PRYRC=$HOME/.pryrc
  if [ ! -f "${PRYRC}" ]; then
    touch "${HOME}/.pryrc"
    ln -sf $HOME/dev/dotfiles/pryrc $PRYRC
  else
    echo "${PRYRC} already exists."
  fi

  BUNDLE_CONFIG=$HOME/.bundle/config
  if [ "$1" = "force" ] || [ "$1" = "force_bundle_config" ]; then
    ln -sf "$HOME"/dev/dotfiles/bundle_config "$BUNDLE_CONFIG"
    echo "$BUNDLE_CONFIG has been updated"
  else
    if [ ! -f "$BUNDLE_CONFIG" ]; then
      touch "$HOME/.bundle/config"
      ln -sf "$HOME"/dev/dotfiles/bundle_config "$BUNDLE_CONFIG"
    else
      echo "$BUNDLE_CONFIG already exists"
    fi
  fi
}