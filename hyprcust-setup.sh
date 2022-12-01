#Hyprland Custom Script#

    sudo pacman -S zsh pulseaudio pavucontrol nano git --noconfirm
echo "Instalando todos los paquetes....."    
    sudo pacman -U ./paquetes/* --noconfirm

echo ""

echo "Configurando paquetes...."
    cp -r ./config/* ~/.config
    sudo chown -R pablo:pablo ~/.config