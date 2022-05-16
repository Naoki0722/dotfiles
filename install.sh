#!/bin/bash

# backup
[ -f ~/.zshrc ] && mv ~/.zshrc ~/.zshrc.backup

DOT_FILES=( .gitconfig .gitignore_global )
for file in ${DOT_FILES[@]}
do
    ln -s ~/dotfiles/$file ~/$file
done

echo "Success Run!"
