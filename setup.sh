#! /bin/bash
# Set ZSH 
rm ~/.zshrc;
ln -s ~/git/dotfiles/.zshrc ~/.zshrc;

# Set Up Git
rm ~/.gitconfig;
ln -s ~/git/dotfiles/.gitconfig ~/.gitconfig;

# Set Up ST3
rm -r ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User;
ln -s ~/git/dotfiles/sublime ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User;
