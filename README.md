# Dotfiles

## Programs used

### Terminal

[![emulator](https://img.shields.io/badge/emulator:-F46D01?style=for-the-badge)](.config/alacritty/alacritty.yml) [![alacritty](https://img.shields.io/badge/alacritty-F46D01?style=for-the-badge&logo=alacritty&logoColor=white)](.config/alacritty/alacritty.yml)

[![multiplexer](https://img.shields.io/badge/multiplexer:-1BB91F?style=for-the-badge)](.tmux.conf) [![tmux](https://img.shields.io/badge/tmux-1BB91F?style=for-the-badge&logo=tmux&logoColor=FFF)](.tmux.conf)

[![command line](https://img.shields.io/badge/command%20line:-4AAE46?style=for-the-badge)](.config/fish/conf.d/omf.fish) [![fish](https://img.shields.io/badge/fish-4AAE46?style=for-the-badge&logo=fish&logoColor=FFF)](.config/fish/conf.d/omf.fish)

[![prompt](https://img.shields.io/badge/prompt:-DD0B78?style=for-the-badge)](.config/starship.toml) [![starship](https://img.shields.io/badge/starship-DD0B78?style=for-the-badge&logo=starship&logoColor=white)](.config/starship.toml)

### Text Editors

[![neovim](https://img.shields.io/badge/neovim-%2311AB00.svg?style=for-the-badge&logo=neovim&logoColor=FFF)](.config/nvim/init.vim)

## Commands used
```bash
git init --bare $HOME/.dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
funcsave config
config config --local status.showUntrackedFiles no
```

## How to use
Just like if 'config' was 'git'

`config status`

`config add .filename`

## How to install your dotfiles onto a new system
[Guide](https://www.atlassian.com/git/tutorials/dotfiles)
