curl -Lo OpenVanilla.zip https://github.com/openvanilla/openvanilla/releases/download/1.3.4/OpenVanilla-Installer-Mac-1.3.4.zip
unzip OpenVanilla.zip
rm -rf ~/Library/Input\ Methods/OpenVanillaInstaller.app
mv ./OpenVanillaInstaller.app ~/Library/Input\ Methods/
mkdir -p ~/Library/Application\ Support/OpenVanilla/UserData/TableBased
curl -O https://raw.githubusercontent.com/rwu823/liu/master/bundle/liu7.cin
mv ./liu7.cin ~/Library/Application\ Support/OpenVanilla/UserData/TableBased/liu7.cin
rm OpenVanilla.zip

#open /System/Library/PreferencePanes/Keyboard.prefPane
