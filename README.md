# Dumm Dotfiles

The set of configuration dotfiles for:
- Kitty (terminal)
- Neovim (text editor)
- zsh (Shell)

## Installation

1. Clone repo.
2. Navigate to the cloned repo.
3. Use GNU/Stow to create symbolic links in the home directory with DummConf as stow directory and Home as target:

If cloned into Home directory
```sh
cd ~/DummConf
stow -v .
```

If cloned elsewhere
```sh
stow -v\
     -d <DummConf Directory Here>\
     -t ~\
     .
```
