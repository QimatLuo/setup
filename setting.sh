file="$HOME/.bash_aliases"
rm $file
ln -s "$PWD/home/bash_aliases" $file

file="$HOME/.gitconfig"
rm $file
ln -s "$PWD/git/gitconfig" $file

file="$HOME/.tmux.conf"
rm $file
ln -s "$PWD/tmux/tmux.conf" $file

file="$HOME/.bash_profile"
rm $file
ln -s "$PWD/home/bash_profile" $file

file="$HOME/.export"
rm $file
ln -s "$PWD/home/export" $file

if [[ `uname` == 'Darwin' ]]; then
  file="$HOME/.bashrc"
  rm $file
  ln -s "$PWD/home/bashrc" $file
fi

source vim/install.sh
