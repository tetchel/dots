#!/usr/bin/env bash

# Quickly downloads my most important files for any linux system
# Run with: curl -fsSL https://raw.githubusercontent.com/tetchel/dots/master/essentials.sh | bash

download () {
    local url=$1
    local outfile=$(basename $url)

    echo "Downloading $outfile"
    curl -fsSL "$url" -o "essentials/$outfile"
}

mkdir essentials

download https://raw.githubusercontent.com/tetchel/dots/master/.bash_aliases
download https://raw.githubusercontent.com/tetchel/dots/master/.bash_custom
download https://raw.githubusercontent.com/tetchel/dots/master/.bashrc
download https://raw.githubusercontent.com/tetchel/dots/master/.extend.bashrc
download https://raw.githubusercontent.com/tetchel/dots/master/.vimrc

cp -r essentials/. ~
rm -r essentials

echo "Done"
