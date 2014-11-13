mkdir "${HOME}/.npm-packages"
echo prefix=${HOME}/.npm-packages >> ${HOME}/.npmrc

if [[ -z $NPM_PACKAGES ]]; then
  echo NPM_PACKAGES="${HOME}/.npm-packages" >> ${HOME}/.bashrc
fi

if [[ -z $NODE_PATH ]]; then
  echo NODE_PATH=\"\$NPM_PACKAGES/lib/node_modules\:\$NODE_PATH\" >> ${HOME}/.bashrc
fi

echo PATH=\"\$NPM_PACKAGES/bin\:\$PATH\" >> ${HOME}/.bashrc

if [[ -z `which npm` ]]; then
  curl -L https://www.npmjs.org/install.sh | sh
fi
