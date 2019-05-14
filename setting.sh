source=(
  "${PWD}/home/bash_aliases"
  "${PWD}/home/bash_profile"
  "${PWD}/home/export"
  "${PWD}/git/gitconfig"
  "${PWD}/tmux/tmux.conf"
)
target=(
  "${HOME}/.bash_aliases"
  "${HOME}/.bash_profile"
  "${HOME}/.export"
  "${HOME}/.gitconfig"
  "${HOME}/.tmux.conf"
)
for ((i=0; i<${#target[@]}; i++)); do
  mail -s "Log file" ${admins[$i]} < $mylog
  rm ${target[$i]}
  ln -s ${source[$i]} ${target[$i]}
done

source vim/install.sh
