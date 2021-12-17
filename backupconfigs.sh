#!/bin/zsh

# create a timestamp alias for the commit message
timestamp() {
  date +"%d-%m-%Y @ %T"
}

cd ~/my-configs

# Files to backup -------------------------------------------------------------

# bash
cp ~/{.bash_logout,.bashrc} bash

# zsh
cp ~/.zshrc zsh

# aliases
cp ~/.aliases aliases

# eslint
cp ~/.eslintrc.json eslint

# neovim
cp -rT ~/.config/nvim neovim

# prettier
cp ~/.prettierrc.json prettier

# vim
cp ~/.vimrc vim

# -----------------------------------------------------------------------------

# pull & push
if [[ `git status --porcelain` ]]; then
    git pull origin master
    git add .
    git commit -m "Update: $(timestamp)"
    git push origin master
fi
