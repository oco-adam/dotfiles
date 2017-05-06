#!/bin/sh

# Tap 'em!
brew tap tldr-pages/tldr

# Brewable installs!

brew install \
  aircrack-ng \
  coreutils \
  dockutil \
  fzf \
  gettext \
  gist \
  git \
  git-extras \
  gnu-sed --default-names \
  htop \
  hub \
  nmap \
  node \
  python \
  ripgrep \
  ruby \
  tldr \
  tmux \
  tree \
  universal-ctags/universal-ctags/universal-ctags --HEAD \
  vim \
  weechat \
  wget \
  yarn

brew upgrade \
  gnupg

pip install --upgrade setuptools
pip install --upgrade pip
