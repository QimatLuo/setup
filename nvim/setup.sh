sudo snap install nvim --classic
sudo apt install build-essential unzip -y
git clone https://github.com/QimatLuo/starter ~/.config/nvim && nvim
echo 'source "'$PWD'/nvim/bashrc.sh"' >> "$HOME/.bashrc"
