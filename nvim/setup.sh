sudo snap install nvim --classic
sudo apt install build-essential unzip -y
git clone https://github.com/QimatLuo/starter ~/.config/nvim && nvim

ln -s "$(dirname $PWD/$BASH_SOURCE)/bashrc.sh" "$(dirname $PWD/$BASH_SOURCE)/../bashrc/nvim"
