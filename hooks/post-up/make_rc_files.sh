#!/bin/bash
function make_syms(){
  GITFILE=$HOME/.gitconfig
  if [ -n "$BASH_VERSION" ]; then
    read -r -p "Please enter your git username now for git congfig setup:" UN_RESPONSE
    read -r -p "Please enter your git email now for git config setup:" EMAIL_RESPONSE
    export GIT_USER_NAME=$UN_RESPONSE GIT_USER_EMAIL=$EMAIL_RESPONSE
    sed -i '' -e  "s/name = .*/name = $UN_RESPONSE/" "$HOME"/dev/dotfiles/gitconfig
    sed -i '' -e  "s/email = .*/email = $EMAIL_RESPONSE/" "$HOME"/dev/dotfiles/gitconfig
  else
    read "UN_RESPONSE? Please enter your git username now for git config setup:"
    read "EMAIL_RESPONSE? Please enter your git email now for git config setup:"
    export GIT_USER_NAME=$UN_RESPONSE GIT_USER_EMAIL=$EMAIL_RESPONSE
    sed -i '' -e  "s/name = .*/name = $UN_RESPONSE/" "$HOME"/dev/dotfiles/gitconfig
    sed -i '' -e  "s/email = .*/email = $EMAIL_RESPONSE/" "$HOME"/dev/dotfiles/gitconfig
  fi

  if [ "$1" = "force" ] || [ "$1" = "force_gitconfig" ]; then
    ln -sf "$HOME"/dev/dotfiles/gitconfig "$GITFILE"
    echo "$GITFILE has been updated."
  else
    if [ ! -f "$GITFILE" ]; then
      touch "$HOME/.gitconfig"
      ln -sf "$HOME"/dev/dotfiles/gitconfig "$GITFILE"
    else
      echo "$GITFILE already exists. Run with 'force' or 'force_gitconfig' to force link anyway."
    fi
  fi

  EXPORTS=$HOME/.exports
  if [ ! -f "$EXPORTS" ]; then
    touch "$HOME/.exports"
    CUSTOM_FF_PATH="export CUSTOM_FF_PATH=~/dev/cucumber-regression/Firefox\ 2.app/Contents/MacOS/firefox"
    echo "$CUSTOM_FF_PATH" >> .exports
  else
    echo "$EXPORTS already exists."
  fi

  PUB_ALIASES=$HOME/.pub_aliases
  if [ "$1" = "force" ] || [ "$1" = "force_pub_aliases" ]; then
    ln -sf "$HOME"/dev/dotfiles/pub_aliases "$PUB_ALIASES"
    echo "$PUB_ALIASES have been updated."
  else
    if [ ! -f "$PUB_ALIASES" ]; then
      touch "$HOME/.pub_aliases"
      ln -sf "$HOME"/dev/dotfiles/pub_aliases "$PUB_ALIASES"
    else
      echo "${PUB_ALIASES} already exists. Run with 'force' or 'force_pub_aliases' to force link anyway."
    fi
  fi

  RCRC=$HOME/.rcrc
  if [ "$1" = "force" ] || [ "$1" = "force_rcrc" ]; then
    ln -sf "$HOME"/dev/dotfiles/rcrc "$RCRC"
    echo "$RCRC has been updated."
  else
    if [ ! -f "$RCRC" ]; then
      touch "$HOME/.rcrc"
      ln -sf "$HOME"/dev/dotfiles/rcrc "$RCRC"
    else
      echo "$RCRC already exists. Run with 'force' or 'force_rcrc' to force link anyway."
    fi
  fi

  ZSHRC=$HOME/.zshrc
  if [ "$1" = "force" ] || [ "$1" = "force_zshrc" ]; then
    ln -sf "$HOME"/dev/dotfiles/zshrc "$ZSHRC"
    echo "$ZSHRC has been updated."
  else
    if [ ! -f "$ZSHRC" ]; then
      touch "$HOME/.zshrc"
      ln -sf "$HOME"/dev/dotfiles/zshrc "$ZSHRC"
    else
      echo "$ZSHRC already exists. Run with 'force' or 'force_rcrc' to force link anyway."
    fi
  fi

  PRYRC=$HOME/.pryrc
  if [ "$1" = "force" ] || [ "$1" = "force_pryrc" ]; then
    ln -sf "$HOME"/dev/dotfiles/pryrc "$PRYRC"
    echo "$PRYRC has been updated."
  else
    if [ ! -f "$PRYRC" ]; then
      touch "$HOME/.pryrc"
      ln -sf "$HOME"/dev/dotfiles/pryrc "$PRYRC"
    else
      echo "$PRYRC already exists. Run with 'force' or 'force_pryrc' to force link anyway."
    fi
  fi

  BUNDLE_CONFIG=$HOME/.bundle/config
  if [ "$1" = "force" ] || [ "$1" = "force_bundle_config" ]; then
    ln -sf "$HOME"/dev/dotfiles/bundle_config "$BUNDLE_CONFIG"
    echo "$BUNDLE_CONFIG has been updated."
  else
    if [ ! -f "$BUNDLE_CONFIG" ]; then
      mkdir -p $HOME/.bundle/
      touch "$HOME/.bundle/config"
      ln -sf "$HOME"/dev/dotfiles/bundle_config "$BUNDLE_CONFIG"
    else
      echo "$BUNDLE_CONFIG already exists. Run with 'force' or 'force_bundle_config' to force link anyway."
    fi
  fi
}
