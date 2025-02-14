curl -fsSL https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 -o /tmp/get_helm.sh
chmod 700 /tmp/get_helm.sh
. /tmp/get_helm.sh

curl -L https://github.com/getsops/sops/releases/download/v3.9.4/sops-v3.9.4.linux.amd64 -o "$HOME/.bin/sops"
chmod +x "$HOME/.bin/sops"

helm plugin install https://github.com/jkroepke/helm-secrets --version v4.6.2

ln -s "$(dirname $PWD/$BASH_SOURCE)/bashrc.sh" "$(dirname $PWD/$BASH_SOURCE)/../../bashrc/helm"
