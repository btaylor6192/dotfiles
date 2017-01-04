#! /bin/bash
# This file will create symlinks to specified dotfiles
ln -s ~/dotfiles/Xresources ~/.Xresources
ln -s ~/dotfiles/Xdefaults ~/.Xdefaults
ln -s ~/dotfiles/bashrc ~/.bashrc
ln -s ~/dotfiles/config/i3/config ~/.config/i3/config
ln -s ~/dotfiles/vimrc ~/.vimrc
mkdir ~/.i3
ln -s ~/dotfiles/i3status.conf ~/.i3status.conf

