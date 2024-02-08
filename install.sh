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

yay -S gdb ninja gcc cmake meson libxcb xcb-proto xcb-util xcb-util-keysyms libxfixes libx11 libxcomposite xorg-xinput libxrender pixman wayland-protocols cairo pango seatd libxkbcommon xcb-util-wm xorg-xwayland libinput libliftoff libdisplay-info cpio tomlplusplus

echo "Baixando Hyprland "
sleep 4
git clone --recursive https://github.com/hyprwm/Hyprland
cd Hyprland
make all && sudo make install
sleep 4
echo "Baixando dependências gráficas"
yay -S --noconfirm qt5-wayland qt5ct qt6-wayland qt6ct qt5-svg qt5-quickcontrols2 qt5-graphicaleffects gtk3 polkit-gnome pipewire wireplumber jq wl-clipboard cliphist python-requests pacman-contrib
sleep 4
echo "Baixando utilitários "
yay -S --noconfirm debtap
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
mkdir ~/Screenshots
mkdir ~/Documents
mkdir ~/Musicas
mkdir ~/Videos
mkdir ~/Imagens
mkdir ~/Obs
mkdir ~/Projetos
mkdir ~/Projetos/Clientes 
mkdir ~/Projetos/Privados
mkdir ~/Projetos/OpenSource



# V:0.1.6
