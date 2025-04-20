#!/bin/zsh

# Install xCode cli tools
echo "Installing commandline tools..."
xcode-select --install

# Homebrew
## Install
echo "Installing Brew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew analytics off

## Taps
echo "Tapping Brew..."
brew tap koekeishiya/formulae

## Formulae
echo "Installing Brew Formulae..."
brew install git
brew install neovim
brew install cmake
brew instlal yabai
brew install nvm

## Casks
brew install --cask wezterm

# macOS Settings
echo "Changing macOS defaults..."
defaults write com.apple.dock autohide-delay -float 0.0
defaults write com.apple.dock autohide-time-modifier -float 0.6;
defaults write com.apple.dock autohide -bool true












