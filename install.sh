#!/bin/bash

echo -e "Instalando dependências manual mente"

git clone https://aur.archlinux.org/yay.git;

echo "Nome de Usuário"

read user

sudo chown -R user:user ./yay-git
cd yay

makepkg -si

cd ~/

sudo yay -S gdb ninja gcc cmake meson libxcb xcb-proto xcb-util xcb-util-keysyms libxfixes libx11 libxcomposite xorg-xinput libxrender pixman wayland-protocols cairo pango seatd libxkbcommon xcb-util-wm xorg-xwayland libinput libliftoff libdisplay-info cpio tomlplusplus

sudo pacman -S hyprland 


#v0.0.1
