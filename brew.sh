/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# env
brew install vim git bash-completion grep

brew cask install docker slack keybase

# android
brew tap caskroom/versions
brew cask install java8
mkdir ~/.android
touch ~/.android/repositories.cfg
brew cask install android-sdk
sdkmanager "platform-tools"
cd /usr/local/bin/
ln -s /usr/local/Caskroom/android-sdk/4333796/platform-tools/adb .
