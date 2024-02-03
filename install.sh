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

sudo yay -S gdb
sudo yay -S ninja
sudo yay -S gcc 
sudo yay -S cmake 
sudo yay -S meson 
sudo yay -S libxcb 
sudo yay -S xcb-proto 
sudo yay -S xcb-util 
sudo yay -S xcb-util-keysyms 
sudo yay -S libxfixes 
sudo yay -S libx11 
sudo yay -S libxcomposite 
sudo yay -S xorg-xinput 
sudo yay -S libxrender 
sudo yay -S pixman 
sudo yay -S wayland-protocols 
sudo yay -S cairo 
sudo yay -S pango 
sudo yay -S seatd 
sudo yay -S libxkbcommon 
sudo yay -S xcb-util-wm 
sudo yay -S xorg-xwayland 
sudo yay -S libinput 
sudo yay -S libliftoff 
sudo yay -S libdisplay-info 
sudo yay -S cpio 
sudo yay -S tomlplusplus

sudo pacman -S hyprland
echo "Criando diretorios"
sleep 4
mkdir ~/Downloads
mkdir ~/Musicas
mkdir ~/Videos
mkdir ~/Imagens


# V:0.9
