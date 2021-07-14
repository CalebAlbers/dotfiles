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

# Initialize Setup
zero setup

# configure homebrew to auto-update
