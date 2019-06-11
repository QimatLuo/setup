/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# general
brew install \
  bash-completion \
  git \
  gpg \
  grep \
  node \
  tmux \
  vim
brew cask install \
  docker \
  google-chrome \
  keybase

# android
brew tap caskroom/versions
brew cask install \
  adoptopenjdk8 \
  android-sdk
brew install \
  gradle

# personal
brew install \
  youtube-dl
brew cask install \
  steam \
  vlc \
  vysor
