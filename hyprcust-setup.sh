#Hyprland Custom Script#

    sudo pacman -S zsh pulseaudio pavucontrol nano git neofetch --noconfirm
echo "Instalando todos los paquetes....."    
    sudo pacman -U ./paquetes/* --noconfirm

echo "Instalando programas basicos adicionales"
        paru -S visual-studio-code-bin --noconfirm
    echo "Visual Studio Code --> OK"
        
    echo "Debtap --> OK"
        paru -S virtualbox-host-modules-arch --noconfirm
        paru -S virtualbox --noconfirm
            sudo modprobe vboxdrv
            sudo modprobe vboxnetadp
            sudo modprobe vboxnetflt
    echo "VirtualBox --> OK"


echo ""

echo "Configurando paquetes...."
    cp -r ./config/* ~/.config
    sudo chown -R pablo:pablo ~/.config