# install xcode
# `xcode-select --install`

# install homebrew
if ! command -v brew &> /dev/null
then
  echo "Installing brew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install Zero
$ brew install zero-sh/tap/zero

# Initialize Setup
zero setup

# configure brew to auto-update
