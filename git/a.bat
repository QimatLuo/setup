git config --global diff.astextplain.textconv astextplain
git config --global filter.lfs.clean git-lfs clean -- %f
git config --global filter.lfs.smudge git-lfs smudge -- %f
git config --global filter.lfs.process git-lfs filter-process
git config --global filter.lfs.required true
git config --global http.sslbackend openssl
git config --global http.sslcainfo C:/Program Files/Git/mingw64/ssl/certs/ca-bundle.crt
git config --global core.autocrlf true
git config --global core.fscache true
git config --global core.symlinks false
git config --global core.editor "C:\\Users\\QimatLuo\\Documents\\Neovim\\bin\\nvim-qt.exe"
git config --global pull.ff=only
git config --global credential.helper manager-core
git config --global credential.https://dev.azure.com.usehttppath true
git config --global init.defaultbranch master
