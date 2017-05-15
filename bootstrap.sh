#!/bin/sh

# Install time!
source ./install/symlink.sh
source ./install/prepare.sh
source ./install/zsh.sh
source ./install/vundle.sh

# macOS
if [[ `uname` == "Darwin" ]]; then
  source ./install/brew.sh
  source ./install/brew-cask.sh
  source ./macOS/defaults.sh
  source ./misc/gpg.sh
fi

echo "Open a new tab to be home :)"
