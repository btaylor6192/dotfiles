#! /bin/bash
# This file will create symlinks to specified dotfiles
WALLPAPER=~/dotfiles/wallpapers/low_poly_planet.png

echo 'Removing current links...'

rm ~/.Xresources 
rm ~/.bashrc 
rm ~/.config/i3/config 
rm ~/.vimrc 
rm ~/.i3/i3status.conf
rm ~/.archey3.cfg
rm ~/.dir_colors

echo 'Linking new config files...'
 
ln -s ~/projects/dotfiles/Xresources ~/.Xresources
ln -s ~/projects/dotfiles/bashrc ~/.bashrc
ln -s ~/projects/dotfiles/i3/config ~/.config/i3/config
ln -s ~/projects/dotfiles/vimrc ~/.vimrc
# TODO: add logic for i3status option for different profiles
ln -s ~/projects/dotfiles/i3status-lenovo ~/.i3/i3status.conf
ln -s ~/projects/dotfiles/dir_colors ~/.dir_colors
ln -s ~/projects/dotfiles/archey3.cfg ~/.archey3.cfg
#ln -s ~/dotfiles/config.fish ~/.config/fish/config.fish

echo 'Loading Xresources'
xrdb -load ~/.Xresources

echo 'Setting wallpaper'
feh --bg-scale $WALLPAPER

echo 'Cloning bash-git-prompt'

cd ~

git clone https://github.com/magicmonty/bash-git-prompt.git

echo "Don't forget to reload i3!"


