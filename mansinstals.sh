#!/bin/bash

sudo apt update
sudo apt full-upgrade -y

sudo apt install xinit bspwm polybar kitty picom pulseaudio pulseaudio-module-bluetooth rofi brightnessctl lxpolkit feh dunst -y

sudo apt install ufw -y
sudo ufw enable
sudo ufw default deny incoming
sudo ufw default allow outgoing

sudo apt install thunar thunar-archive-plugin firefox-esr geany geany-plugin-addons geany geany-plugin-spellcheck geany-plugin-treebrowser lxappearance redshift -y

sudo apt install network-manager-gnome --no-install-recommends --no-install-suggests -y
sudo mv /etc/network/interfaces /etc/network/interfaces.bak

sudo apt install blueman -y

rm -rf .config .profile

mkdir -p .config .config/OpenRGB

ln -s $HOME/manidoti/bspwm ~/.config
ln -s $HOME/manidoti/dunst ~/.config
ln -s $HOME/manidoti/kitty ~/.config
ln -s $HOME/manidoti/picom ~/.config
ln -s $HOME/manidoti/polybar ~/.config
ln -s $HOME/manidoti/rofi ~/.config
ln -s $HOME/manidoti/sxhkd ~/.config
ln -s $HOME/manidoti/Thunar ~/.config
ln -s $HOME/manidoti/xfce4 ~/.config
ln -s $HOME/manidoti/geany ~/.config
ln -s $HOME/manidoti/openrgb/a.orp ~/.config/OpenRGB/
ln -s $HOME/manidoti/bash/.profile ~/

cp ~/manidoti/redshift/redshift.conf ~/.config

sudo cp ~/manidoti/99-synaptics-overrides.conf /etc/X11/xorg.conf.d

chmod +x ~/.config/bspwm/bspwmrc
chmod +x ~/.config/polybar/launch.sh
chmod +x ~/.config/polybar/cpu-temp.sh

mkdir -p .themes
mkdir -p .fonts
mkdir -p .icons

sudo apt purge zutty -y
sudo apt purge xterm -y
sudo apt autoremove --purge -y
