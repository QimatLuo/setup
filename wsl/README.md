wsl --install  
wsl --install -d Ubuntu
sudo apt update
sudo apt upgrade -y
sudo apt install neovim
mkdir -p github/QimatLuo
cd github/QimatLuo
git clone https://github.com/QimatLuo/setup.git
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
nvim --headless +PlugInstall +qall
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
# reopen
nvm install --lts
