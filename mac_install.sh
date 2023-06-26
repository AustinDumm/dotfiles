#!/bin/sh

brew install stow
brew tap homebrew/cask-fonts
brew install font-hack-nerd-font

stow -Rv .

