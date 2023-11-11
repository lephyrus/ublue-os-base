#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail

echo "Installing homebrew..."

export NONINTERACTIVE=1
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

echo "Installing default brews..."

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
brew bundle --file=/usr/share/homebrew/Brewfile
