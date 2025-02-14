export KUBECONFIG="$HOME/.kube/config"

alias kx='f() { [ "$1" ] && kubectl config use-context $1 || kubectl config current-context ; } ; f'
alias kn='f() { [ "$1" ] && kubectl config set-context --current --namespace $1 || kubectl config view --minify | grep namespace | cut -d" " -f6 ; } ; f'

source <(kubectl completion bash)
alias k=kubectl
complete -F __start_kubectl k
