# Install tpm for tmux-plugin
function install_tpm() {
  mkdir -p ~/.tmux/plugins/
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
}

function reload_tmux() {
  tmux source ~/.tmux.conf
}

function copy_tmux_conf() {
  cp ./tmux/tmux.conf $HOME
}

# install_tpm
copy_tmux_conf
reload_tmux
