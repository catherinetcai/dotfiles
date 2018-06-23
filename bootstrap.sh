#!/bin/bash
### INSTALLATION NOTES###
# NOTE: This is only for OSX.
#
# This is going to install the following:
# * Brew

## Update or change these vars
PYTHON_2_VERSION=2.7.14
PYTHON_3_VERSION=3.6.5
RUBY_VERSION=2.4.4

install_brew() {
  echo 'Installing Homebrew...'
  /usr/bin/ruby -e \
   "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew update
}

install_brew_bundle_deps() {
  echo 'Installing Brew bundle deps...'
  cd brew/ && brew bundle
}

tap_brew_bundle() {
  echo 'Tapping Brew bundle...'
  brew tap homebrew/bundle
}

# Install Homebrew if not installed
if ! command -v brew >/dev/null; then
  install_brew
else
  echo 'Brew is already installed. Skipping...'
fi

# Tap brew bundle
tap_brew_bundle

# Install brew bundle deps
# install_brew_bundle_deps

# Installing Ruby global
echo "Installing Ruby version $RUBY_VERSION"
rbenv install "$RUBY_VERSION"
rbenv global "$RUBY_VERSION"

# Installing Python global versions
echo "Installing Python version $PYTHON_2_VERSION"
pyenv install "$PYTHON_2_VERSION"
echo "Installing Python version $PYTHON_3_VERSION"
pyenv install "$PYTHON_3_VERSION"

# Put .gitconfig in its place
echo 'Setting up .gitconfigs. Be warned, this will OVERWRITE your .gitconfig'
cp system/.gitconfig $HOME/.gitconfig

# Put zsh configurations in their place
echo 'Putting zsh configurations in their place. Be warned this will overwrite some stuff'
cp -a system/zsh/. $HOME
