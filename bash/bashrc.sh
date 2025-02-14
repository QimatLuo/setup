bind '"\ej":history-search-forward'
bind '"\ek":history-search-backward'

PS1='\[\033[01;32m\]\t\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]\$ '

export PATH="$PATH:$HOME/.bin"

alias grep='grep --color=auto --exclude-dir=node_modules --exclude-dir=dist --exclude-dir=.git'
stty -ixon

while read -r f
do source "$f"
done < <( find ~/github/QimatLuo/setup/bashrc/ -type l)
