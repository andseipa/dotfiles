# Dotfiles macOS

## Requirements

- Homebrew and the required packages.

## Install instructions

1. ~~Add the following line in `/etc/zshenv`:
   `export ZDOTDIR=$HOME/.config/zsh`~~
   Use symlink instead: `ln -s ~/.dotfiles/.zshrc ~/.zshrc` due to compatibility issues oh-my-zsh.

2. Rename `.env.example` to `.env` and replace the variables.

3. Run `./scripts/replace_template.sh`

## Todo

- [ ] Add required packages from Homebrew
- [ ] Add missing dotfiles from home directory
- [ ] Clean files of redundant comments and code
- [ ] Make keys have the same purpose across applications, e.g. delete pane in tmux: x, delete window in nvim: d
- [ ] Fix `.zshrc`
