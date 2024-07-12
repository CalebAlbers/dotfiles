# install xcode
if ! xcode-select -p 1> /dev/null
then
  echo "Installing XCode Command Line Tools..."
  xcode-select --install
fi

# install homebrew
if ! command -v brew &> /dev/null
then
  echo "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install Zero
brew install zero-sh/tap/zero

# Clone Repo
git clone --recursive https://github.com/calebalbers/dotfiles.git ~/.dotfiles

# Initialize 
zero setup work # zero setup home
zero apply-symlinks
zero apply-defaults
zero bundle
zero run-scripts

# Configure homebrew to auto-update
brew autoupdate status # will report unconfigured at first and will download deps
brew autoupdate start
