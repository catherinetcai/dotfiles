#!/bin/bash
## Set up pre-reqs for Neovim to run.
# NOTE: Be aware that pyenv-virtualenv has to be set up correctly for this to work.

## Gross hack to allow pyenv to work in a shell script, see:
# https://github.com/pyenv/pyenv-virtualenv/issues/204
eval "$(pyenv init -)"

## Python version vars
PYTHON_2_VERSION=2.7.14
PYTHON_3_VERSION=3.6.5


echo 'Installing Neovim for Ruby'
gem install bundler
gem install neovim

# https://github.com/zchee/deoplete-jedi/wiki/Setting-up-Python-for-Neovim
echo 'Setting up Neovim python virtualenvs'

# Python 2
export PYENV_VERSION="$PYTHON_2_VERSION"
pyenv virtualenv "$PYTHON_2_VERSION" neovim2
pyenv activate neovim2
pip install --no-cache-dir --upgrade --force-reinstall neovim
echo 'Note the following Python 2 version installed: '
pyenv which python
unset PYENV_VERSION

# Python 3
export PYENV_VERSION="$PYTHON_2_VERSION"
pyenv virtualenv "$PYTHON_3_VERSION" neovim3
pyenv activate neovim3
pip3 install --no-cache-dir --upgrade --force-reinstall neovim
echo 'Note the following Python 3 version installed: '
pyenv which python
unset PYENV_VERSION

# Node
echo 'Installing Neovim for node'
npm install -g neovim

echo 'Installing vim-plug for Neovim'
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Move all neovim settings over
# Put vim configurations in their place
echo 'Putting vim configurations in place. Be warned this will OVERWRITE your config/nvim/'
mkdir -p $HOME/.config/nvim
cp -a nvim/. $HOME/.config/nvim

# Finally, source our settings
source ~/.config/nvim/init.vim
