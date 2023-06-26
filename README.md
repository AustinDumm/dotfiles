# Dumm Dotfiles

The set of configuration dotfiles for:
- Kitty (terminal)
- Neovim (text editor)
- zsh (Shell)

## Fast Installation (macOS only)

1. Clone repo into Home directory
2. Navigate into the cloned repo
3. Run `mac_install.sh`

## Manual Installation

1. Install the Hack Nerd font
2. Install stow
3. Clone repo.
4. Navigate to the cloned repo.
5. Use GNU/Stow to create symbolic links in the home directory with DummConf as stow directory and Home as target:

If cloned into Home directory
```sh
cd ~/dotfiles
stow -Rv .
```

If cloned elsewhere
```sh
stow -Rv\
     -d <dotfiles Directory Here>\
     -t ~\
     .
```
