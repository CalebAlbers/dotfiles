# install homebrew
if ! command -v brew &> /dev/null
then
  echo "Installing brew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew bundle install

# update all mac apps
brew cu

npm install -g n # node version manager
npm install -g yo
npm install -g sao
npm install -g nodemon
npm install -g typescript
npm install -g npm-merge-driver

# hide icons from desktop
source ./scripts/defaults.sh




# set default app to vs code for most extensions???