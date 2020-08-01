#!/bin/bash

# Install brew. https://brew.sh/
/bin/bash -c "$(curl -fsSL https://gitee.com/dovyih/install/raw/master/install.sh)"

brew install git
brew install vim
brew install axel
brew install curl

# Install on my zsh
sh -c "$(curl -fsSL https://gitee.com/dovyih/ohmyzsh/raw/master/tools/install.sh)"

# Download iterm2
axel -o ~/Downloads https://iterm2.com/downloads/stable/iTerm2-3_3_12.zip


# Install Node.js by nvm.sh
curl -o- https://gitee.com/dovyih/nvm/raw/master/install.sh | bash

source ~/.zshrc
source ~/.bashrc

nvm install v14
nvm install v12

npm i -g yarn

# npm config set registry https://registry.npm.taobao.org
yarn config set registry https://registry.npm.taobao.org
yarn config set sass_binary_site https://npm.taobao.org/mirrors/node-sass/

# pour alias to zshrc
cat ./aliases.sh >> ~/.zshrc