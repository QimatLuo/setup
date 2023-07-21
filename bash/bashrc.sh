bind '"\eh":backward-char'
bind '"\ej":history-search-forward'
bind '"\ek":history-search-backward'
bind '"\el":forward-char'

PS1='\[\033[01;32m\]\t\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]\$ '

export PATH="$PATH:$HOME/.bin"
