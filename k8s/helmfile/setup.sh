curl -L https://github.com/helmfile/helmfile/releases/download/v1.0.0-rc.10/helmfile_1.0.0-rc.10_linux_amd64.tar.gz > /tmp/helmfile.tar.gz
tar -xvf /tmp/helmfile.tar.gz -C /tmp
mv /tmp/helmfile ~/.bin/

ln -s "$(dirname $PWD/$BASH_SOURCE)/bashrc.sh" "$(dirname $PWD/$BASH_SOURCE)/../../bashrc/helmfile"
