#! /bin/bash
# This file will create symlinks to specified dotfiles
ln -s ~/dotfiles/Xresources ~/.Xresources
ln -s ~/dotfiles/Xdefaults ~/.Xdefaults
ln -s ~/dotfiles/bashrc ~/.bashrc
ln -s ~/dotfiles/.config/i3/config ~/.config/i3/config
mkdir ~/.i3
ln -s /home/blaine/dotfiles/.i3/i3status.conf /home/blaine/.i3/i3status.conf

