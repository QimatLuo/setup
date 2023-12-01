sudo apt install tmuxinator
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone https://github.com/QimatLuo/tmux ~/.config/tmux
source ~/.tmux/plugins/tpm/bin/install_plugins
echo 'source "$HOME/github/QimatLuo/setup/tmux/bashrc.sh"' >> ~/.bashrc
