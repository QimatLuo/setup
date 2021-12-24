sudo apt install uidmap
export SKIP_IPTABLES=1
curl -fsSL https://get.docker.com/rootless | sh
curl -SL https://github.com/docker/compose/releases/download/v2.20.0/docker-compose-linux-x86_64 -o ~/bin/docker-compose
chomod +x ~/bin/docker-compose
curl https://raw.githubusercontent.com/docker/docker-ce/master/components/cli/contrib/completion/bash/docker -o ~/.docker/bash_completion
curl -L https://raw.githubusercontent.com/docker/compose/1.25.1/contrib/completion/bash/docker-compose -o ~/.docker/bash_completion_compose
echo 'source "'$PWD'/docker/bashrc.sh"' >> "$HOME/.bashrc"
