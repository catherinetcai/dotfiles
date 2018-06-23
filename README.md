# Dotfiles

## Compatibility Notes
This was developed on MacOS. Bootstrapping only proven to work on MacOS (for now).

## Prereqs
Installing all of xcode is a good start.

## Bootstraps
* brew + brew bundler
* neovim + vim-plug
* zsh + oh-my-zsh
* Anything outlined in the [Brewfile](brew/Brewfile)

## Neovim Settings
Split up my Neovim settings, as inspired by [greg-js](https://github.com/greg-js/dotfiles/tree/master/.config/nvim/config).

## TODOs/Things that Still Suck
* Still need to manually source ~/.zshrc instead of doing it via the script, which suchs
* Still need to manually run nvim.sh in order to set up nvim
* Neovim configuration automation, still need to set the paths as according to [this](https://github.com/zchee/deoplete-jedi/wiki/Setting-up-Python-for-Neovim#using-virtual-environments)
* Instead of replacing where things go, symlink instead
