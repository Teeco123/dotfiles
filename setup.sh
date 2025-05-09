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
brew tap FelixKratz/formulae

## Formulae
echo "Installing Brew Formulae..."
brew install git
brew install neovim
brew install cmake
brew install sketchybar
brew install yabai
brew install skhd
brew install nvm
brew install ripgrep
brew install swiftlint
brew install mas
brew install eza
brew install zsh-autosuggestions
brew install zsh-syntax-highlighting

## Casks
brew install --cask wezterm

## Fonts
brew install --cask font-hack-nerd-font

## App Store apps
mas install 497799835 # XCode
mas install 425424353 # The unarhiver
mas install 1480068668 # Messenger
mas install 1440147259 # AdGuard safari
mas install 1637413102 # Darker for safari

# macOS Settings
echo "Changing macOS defaults..."

## Dock
defaults write com.apple.dock autohide-delay -float 0.0
defaults write com.apple.dock autohide-time-modifier -float 0.6;
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock minimize-to-application -bool true
defaults write com.apple.dock mineffect -string "scale"
defaults write com.apple.dock magnification -bool false
defaults write com.apple.dock tilesize -int 52
defaults write com.apple.dock show-recents -bool false
defaults write com.apple.dock static-only -bool "true"

## Keyboard 
defaults write NSGlobalDomain KeyRepeat -int 2
defaults write NSGlobalDomain InitialKeyRepeat -int 15
defaults write NSGlobalDomain "ApplePressAndHoldEnabled" -bool "false"
defaults write -globalDomain NSAutomaticPeriodSubstitutionEnabled -bool false
defaults write -globalDomain NSAutomaticCapitalizationEnabled -bool false
defaults write -globalDomain NSAutomaticSpellingCorrectionEnabled -bool false

## Touchbar
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true

## Finder
defaults write com.apple.finder ShowPathbar -bool true
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
defaults write com.apple.finder AppleShowAllFiles -bool "true"
defaults write com.apple.finder _FXSortFoldersFirst -bool "true"
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool "false"
defaults write com.apple.finder "ShowHardDrivesOnDesktop" -bool "false"
defaults write com.apple.finder "ShowExternalHardDrivesOnDesktop" -bool "false"
defaults write com.apple.finder "ShowRemovableMediaOnDesktop" -bool "false"

rm -rf .dotfiles/

# Kill affected apps
for app in "Dock" "Finder"; do
  killall "${app}" > /dev/null 2>&1
done

brew services start sketchybar

# Done
echo "Done. Note that some of these changes require a logout/restart to take effect."
