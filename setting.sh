#ln -s "$PWD/openbox "$HOME/.config

file="$HOME/.bash_aliases"
if [[ -f $file ]]; then
	rm $file
fi
ln -s "$PWD/bash/bash_aliases" $file

file="$HOME/.gitconfig"
if [[ -f $file ]]; then
	rm $file
fi
ln -s "$PWD/git/gitconfig" $file

file="$HOME/.tmux.conf"
if [[ -f $file ]]; then
	rm $file
fi
ln -s "$PWD/tmux/tmux.conf" $file

if [[ `uname` == 'Darwin' ]]; then
  file="$HOME/.bash_profile"
  if [[ -f $file ]]; then
    rm $file
  fi
  ln -s "$PWD/mac/bash_profile" $file
fi

bash "$PWD/vim/install.sh"
bash "$PWD/node/npm.sh"
