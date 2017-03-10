#! /bin/bash
# This file will create symlinks to specified dotfiles

echo 'Backing up current config files...'

mv ~/.Xresources ~/.Xresources.bak
mv ~/.bashrc ~/.bashrc.bak
mv ~/.config/i3/config ~/.config/i3/config.bak
mv ~/.vimrc ~/.vimrc.bak
mv ~/.i3/i3status.conf ~/.i3/i3status.conf.bak
mv ~/.archey3.cfg ~/.archey3.cfg.bak

echo 'Linking new config files...'
 
ln -s ~/dotfiles/Xresources ~/.Xresources
ln -s ~/dotfiles/bashrc ~/.bashrc
ln -s ~/dotfiles/i3/config ~/.config/i3/config
ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/i3status.conf ~/.i3/i3status.conf
ln -s ~/dotfiles/dir_colors ~/.dir_colors
ln -s ~/dotfiles/archey3.cfg ~/.archey3.cfg
#ln -s ~/dotfiles/config.fish ~/.config/fish/config.fish

echo 'Loading Xresources'
xrdb -load ~/.Xresources

echo 'Setting wallpaper'
feh --bg-scale ~/dotfiles/wallpapers/sky-clouds.jpg

echo 'Cloning bash-git-prompt'

cd ~

git clone https://github.com/magicmonty/bash-git-prompt.git

echo "Don't forget to reload i3!"


