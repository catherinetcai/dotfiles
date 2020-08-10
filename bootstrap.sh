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

install_nord_colors() {
  echo 'Installing Nord directory colors...'
  curl -o $HOME/.dir_colors https://raw.githubusercontent.com/arcticicestudio/nord-dircolors/v0.2.0/src/dir_colors
}

install_oh_my_zsh() {
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
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
install_brew_bundle_deps

# Installing Ruby global
echo "Installing Ruby version $RUBY_VERSION"
rbenv install "$RUBY_VERSION"
rbenv global "$RUBY_VERSION"

# Installing Rust
echo "Installing Rust via Rustup"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Installing Python global versions
# A lot of the instructions are taken from here: https://github.com/deoplete-plugins/deoplete-jedi/wiki/Setting-up-Python-for-Neovim
echo "Installing Python version $PYTHON_2_VERSION"
pyenv install "$PYTHON_2_VERSION"
echo "Installing Python version $PYTHON_3_VERSION"
pyenv install "$PYTHON_3_VERSION"

# Put .gitconfig in its place
echo 'Setting up .gitconfigs. Be warned, this will OVERWRITE your .gitconfig'
cp system/.gitconfig $HOME/.gitconfig

# Install oh-my-zsh
echo 'Installing oh-my-zsh'
install_oh_my_zsh

# Put zsh configurations in their place
echo 'Putting zsh configurations in their place. Be warned this will overwrite some stuff'
cp -a system/zsh/. $HOME

# Install zsh plugins
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
autoload -U compinit && compinit
install_nord_colors
