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

# Install Git
if ! command -v git &> /dev/null
then
  echo "Installing Git..."
  brew install git
fi

# Install Zero
brew install zero-sh/tap/zero

# Clone Repo
git clone --recursive https://github.com/calebalbers/dotfiles.git ~/.dotfiles

# Switch Directory
cd ~/.dotfiles

# Initialize Setup
zero setup

# TODO: configure homebrew to auto-update
