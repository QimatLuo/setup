#!/bin/bash
path="$PWD/vim"

file="$HOME/.vimrc"
	rm $file
ln -s "$path/vimrc" $file

file="$HOME/.editorconfig"
	rm $file
ln -s ".editorconfig" $file

file="$HOME/.vim/bundle/Vundle.vim"
rm -rf $file
  git clone https://github.com/gmarik/Vundle.vim.git $file

file="$HOME/.vim/bundle/vim-snippets/snippets/javascript/javascript.snippets"
	rm $file
ln -s "$path/javascript.snippets" $file

file="$HOME/.vim/.jshintrc"
	rm $file
ln -s "$path/jshintrc" $file
