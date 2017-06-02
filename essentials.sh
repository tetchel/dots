#!/usr/bin/env bash

# Quickly downloads my most important files for any linux system
# Run with: curl -s https://raw.githubusercontent.com/tetchel/dots/master/essentials.sh | bash

mkdir essentials
curl -s https://raw.githubusercontent.com/tetchel/dots/master/.bash_aliases > ./essentials/.bash_aliases
curl -s https://raw.githubusercontent.com/tetchel/dots/master/.bash_custom > ./essentials/.bash_custom 
# Might want to change the EDITOR line from gvim to vim
curl -s https://raw.githubusercontent.com/tetchel/dots/master/.bashrc > ./essentials/.bashrc 
curl -s https://raw.githubusercontent.com/tetchel/dots/master/.extend.bashrc > ./essentials/.extend.bashrc
curl -s https://raw.githubusercontent.com/tetchel/dots/master/.vimrc > ./essentials/.vimrc

echo "Now run: \"cp -r essentials/. ~\" but be careful not to overwrite anything important!"
