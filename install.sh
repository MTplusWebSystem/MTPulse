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

sudo yay -S gdb ninja gcc cmake meson libxcb xcb-proto xcb-util xcb-util-keysyms libxfixes libx11 libxcomposite xorg-xinput libxrender pixman wayland-protocols cairo pango seatd libxkbcommon xcb-util-wm xorg-xwayland libinput libliftoff libdisplay-info cpio tomlplusplus

sudo pacman -S hyprland
echo "Criando diretorios"
sleep 4
mkdir ~/Downloads
mkdir ~/Musicas
mkdir ~/Videos
mkdir ~/Imagens

mv hypr ~/.config/
mv sdt ~/.config/
mv extras ~/.config/
mv waybar ~/.config/
mv kitty ~/.config/

# V:0.9
