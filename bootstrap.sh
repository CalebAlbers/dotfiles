# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# configure brew policies for auto-update

# install xcode

# install yadm
brew install yadm

# install & configure zsh
brew zsh
brew zsh-syntax-highlighting

# install VS Code
brew cask install visual-studio-code

# install NodeJS dev tools
brew node
npm install -g n # node version manager
brew install yarn

# install Pliancy CLI
npm install -g pliancy-cli

# install gcloud + kubectl
brew cask install google-cloud-sdk

brew install awscli

# install Chrome
brew cask install google-chrome
brew cask install slack
brew cask install spotify

# install Zoom

#install Github Desktop
brew cask install github
brew install gh # Github CLI

# misc.
brew install jq
brew install kubedecode
brew cask install authy
brew cask install typora
brew cask install postman


# hide icons from desktop
defaults write com.apple.finder CreateDesktop -bool false
killall Finder

# set default app to vs code for most extensions???