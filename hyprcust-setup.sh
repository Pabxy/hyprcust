#Hyprland Custom Script#


echo "Instalando dependencias....."
    sudo pacman -S zsh pulseaudio pavucontrol nano git neofetch --noconfirm > /dev/null 2>&1

echo "Instalando todos los paquetes....."    
    sudo pacman -U ./paquetes/* --noconfirm > /dev/null 2>&1

echo "Instalando programas basicos adicionales"
        paru -S visual-studio-code-bin --noconfirm > /dev/null 2>&1
    echo "Visual Studio Code --> OK"
        
         paru -S google-chrome --noconfirm > /dev/null 2>&1
    echo "Google Chrome --> OK"
    
        paru -S debtap --noconfirm > /dev/null 2>&1
    echo "Debtap --> OK"

        paru -S virtualbox-host-modules-arch --noconfirm > /dev/null 2>&1
        paru -S virtualbox --noconfirm > /dev/null 2>&1
            sudo modprobe vboxdrv
            sudo modprobe vboxnetadp
            sudo modprobe vboxnetflt
    echo "VirtualBox --> OK"


echo ""

echo "Configurando paquetes...."
    cp -r ./config/* ~/.config > /dev/null 2>&1
    sudo chown -R pablo:pablo ~/.config > /dev/null 2>&1