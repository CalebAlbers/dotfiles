# install homebrew
if ! command -v brew &> /dev/null
then
  echo "Installing brew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew bundle install

# update all mac apps
brew cu

source ./scripts/jstools.sh

# hide icons from desktop
source ./scripts/defaults.sh

# set default app to vs code for most extensions???

# set Chrome as default
open -a "Google Chrome" --args --make-default-browser