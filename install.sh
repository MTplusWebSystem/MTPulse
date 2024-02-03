#!/bin/bash

echo -e "Instalando YAY"

git clone https://aur.archlinux.org/yay.git

echo "Nome de usuário"
read user

sudo chown -R $user:$user ./yay

cd yay
makepkg -si

cd ~/

echo "Baixando dependências "
sleep 4

yay -S --noconfirm gdb
yay -S --noconfirm ninja
yay -S --noconfirm gcc 
yay -S --noconfirm cmake 
yay -S --noconfirm meson 
yay -S --noconfirm libxcb 
yay -S --noconfirm xcb-proto 
yay -S --noconfirm xcb-util 
yay -S --noconfirm xcb-util-keysyms 
yay -S --noconfirm libxfixes 
yay -S --noconfirm libx11 
yay -S --noconfirm libxcomposite 
yay -S --noconfirm xorg-xinput 
yay -S --noconfirm libxrender 
yay -S --noconfirm pixman 
yay -S --noconfirm wayland-protocols 
yay -S --noconfirm cairo 
yay -S --noconfirm pango 
yay -S --noconfirm seatd 
yay -S --noconfirm libxkbcommon 
yay -S --noconfirm xcb-util-wm 
yay -S --noconfirm xorg-xwayland 
yay -S --noconfirm libinput 
yay -S --noconfirm libliftoff 
yay -S --noconfirm libdisplay-info 
yay -S --noconfirm cpio 
yay -S --noconfirm tomlplusplus
yay -S --noconfirm hyprland
yay -S --noconfirm kitty 
yay -S --noconfirm waybar 
yay -S --noconfirm swww 
yay -S --noconfirm swaylock-effects 
yay -S --noconfirm wofi 
yay -S --noconfirm wlogout 
yay -S --noconfirm mako 
yay -S --noconfirm xdg-desktop-portal-hyprland 
yay -S --noconfirm swappy 
yay -S --noconfirm grim 
yay -S --noconfirm slurp 
yay -S --noconfirm thunar

echo "Criando diretorios"
sleep 4
mkdir ~/Downloads
mkdir ~/Musicas
mkdir ~/Videos
mkdir ~/Imagens


# V:0.1.0
