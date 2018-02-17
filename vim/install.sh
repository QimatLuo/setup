#!/bin/bash
path="$PWD/vim"

file="$HOME/.vimrc"
if [[ -f $file ]]; then
	rm $file
fi
ln -s "$path/vimrc" $file

file="$HOME/.editorconfig"
if [[ -f $file ]]; then
	rm $file
fi
ln -s ".editorconfig" $file

file="$HOME/.vim/.jshintrc"
if [[ -f $file ]]; then
	rm $file
fi
ln -s "$path/jshintrc" $file

file="$HOME/.vim/bundle/Vundle.vim"
if [[ ! -f $file ]]; then
  git clone https://github.com/gmarik/Vundle.vim.git $file
fi
vim +PluginInstall +qall

file="$HOME/.vim/bundle/vim-snippets/snippets/javascript/javascript.snippets"
if [[ -f $file ]]; then
	rm $file
fi
ln -s "$path/javascript.snippets" $file
