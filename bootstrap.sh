# install xcode
# `xcode-select --install`

# install homebrew
if ! command -v brew &> /dev/null
then
  echo "Installing brew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# install all apps managed by homebrew and mas
brew bundle install

# update all mac apps
brew cu

# configure brew to auto-update

# install NPM globals
source ./scripts/npm.sh

# configure macos default settings (scroll, icons on desktop, etc)
source ./scripts/defaults.sh

# set default app to vs code for most extensions???

# set Chrome as default
open -a "Google Chrome" --args --make-default-browser