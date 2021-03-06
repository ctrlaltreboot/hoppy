#/usr/bin/env bash

# installs homebrew and homebrew cask, requires xcode and xcode command line tools

# make sure code command line tools is installed, proceed on error
xcode-select --install || true

# get install script via curl and install via ruby
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install
brew bundle --file=$(pwd)/Brewfile
