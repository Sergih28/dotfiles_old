# Dotfiles

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
