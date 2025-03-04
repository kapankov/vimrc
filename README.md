# How to install and configure vim in WSL2

## 1. Install
- Commands:
sudo apt install vim
sudo apt install git

## 2. Proxy settings:
- Command:
sudo vim /etc/apt/apt.conf.d/proxy.conf
- Add line:
Acquire::http::Proxy "http://10.30.30.30:3030/";

- Command:
vim ~/.wgetrc
- Add lines:
http_proxy=http://10.30.30.30:3030
https_proxy=http://10.30.30.30:3030
use_proxy=on

- Command:
git config --global http.proxy http://10.30.30.30:3030

## 3. Install Powerlines fonts (WSL2)
- Run PowerShell from the administrator
- Download and unpack the font repository. Commands:
powershell -command "& { iwr https://github.com/powerline/fonts/archive/master.zip -OutFile ~\fonts.zip }"
Expand-Archive -Path ~\fonts.zip -DestinationPath ~
-  Temporarily update the execution policy
Set-ExecutionPolicy Bypass
- Run the installation script
~\fonts-master\install.ps1
- Bring the policy back
Set-ExecutionPolicy Default

## 4. Themes
- Codedark (https://github.com/tomasiser/vim-code-dark)
Command:
git clone https://github.com/tomasiser/vim-code-dark ~/.vim/pack/themes/start/vim-code-dark
- Add to .vimrc
colorscheme codedark

## 5. Plugins
- NERDTree (https://github.com/preservim/nerdtree)
Commands:
git clone --depth 1 https://github.com/preservim/nerdtree.git ~/.vim/pack/vendor/start/nerdtree

- Airline (https://github.com/vim-airline/vim-airline)
git clone https://github.com/vim-airline/vim-airline ~/.vim/pack/dist/start/vim-airline
For not WSL2 environment:
sudo apt install fonts-powerline
Or:
>>clone
git clone https://github.com/powerline/fonts.git --depth=1
>>install
cd fonts
./install.sh
>>clean-up a bit
cd ..
rm -rf fonts

## Apply .vimrc without restarting vim:
:so ~/.vimrc
