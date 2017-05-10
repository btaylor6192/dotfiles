#! /bin/bash
# This file will create symlinks to specified dotfiles
WALLPAPER=~/dotfiles/wallpapers/blue-earth-flat.png

echo 'Removing current links...'

rm ~/.Xresources 
rm ~/.bashrc 
rm ~/.config/i3/config 
rm ~/.vimrc 
rm ~/.i3/i3status.conf
rm ~/.archey3.cfg
rm ~/.dir_colors

echo 'Linking new config files...'
 
ln -s ~/dotfiles/Xresources ~/.Xresources
ln -s ~/dotfiles/bashrc ~/.bashrc
ln -s ~/dotfiles/i3/config ~/.config/i3/config
ln -s ~/dotfiles/vimrc ~/.vimrc
# TODO: add logic for i3status option for different profiles
ln -s ~/dotfiles/i3status-vm ~/.i3/i3status.conf
ln -s ~/dotfiles/dir_colors ~/.dir_colors
ln -s ~/dotfiles/archey3.cfg ~/.archey3.cfg
#ln -s ~/dotfiles/config.fish ~/.config/fish/config.fish

echo 'Loading Xresources'
xrdb -load ~/.Xresources

echo 'Setting wallpaper'
feh --bg-scale $WALLPAPER

echo 'Cloning bash-git-prompt'

cd ~

git clone https://github.com/magicmonty/bash-git-prompt.git

echo "Don't forget to reload i3!"


