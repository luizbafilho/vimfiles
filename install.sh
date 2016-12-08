#!/bin/bash

echo "====> Installing Neovim"

case "$(uname -s)" in

  Darwin)
    echo 'Mac OS X'
    brew install neovim/neovim/neovim
    ;;

  Linux)
    echo 'Linux'
    sudo apt-get install -y software-properties-common
    sudo add-apt-repository -y ppa:neovim-ppa/unstable
    sudo apt-get update -y
    sudo apt-get install -y neovim
    sudo apt-get install -y python-dev python-pip python3-dev python3-pip
    sudo apt-get install -y exuberant-ctags
    ;;
  *)
    echo 'OS not detected'
    ;;
esac


echo "====> Downloading vimfiles"
mkdir ~/.config
git clone https://github.com/luizbafilho/vimfiles.git ~/.config/nvim

echo "====> Installing plugins"
nvim +PlugInstall +qa! && echo "Done! :)"
