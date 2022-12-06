#Hyprland Custom Script#

clear

echo ""
echo "-> Instalando dependencias....."
    sudo pacman -S zsh pulseaudio pavucontrol nano git neofetch kitty --noconfirm > /dev/null 2>&1

echo "-> Instalando todos los paquetes....."    

    sudo pacman -U ./paquetes/hyprland.pacman --noconfirm > /dev/null 2>&1
    echo "  Hyprland ->         OK"

    sudo pacman -U ./paquetes/hyprpaper.pacman --noconfirm > /dev/null 2>&1
    echo "  Hyprpaper ->        OK"

    sudo pacman -U ./paquetes/waybar.pacman --noconfirm > /dev/null 2>&1
    echo "  Waybar ->           OK"

    sudo pacman -U ./paquetes/paru.pacman --noconfirm > /dev/null 2>&1
    echo "  Paru ->             OK"

    sudo pacman -U ./paquetes/sddm.pacman --noconfirm > /dev/null 2>&1
    echo "  SDDM ->             OK"

    sudo pacman -U ./paquetes/rofi.pacman --noconfirm > /dev/null 2>&1
    echo "  Rofi ->             OK"
    
    sudo pacman -U ./paquetes/sddm.pacman --noconfirm > /dev/null 2>&1
    echo "  SDDM ->             OK"
    
    sudo pacman -U ./paquetes/oh-my-zsh.pacman --noconfirm > /dev/null 2>&1
    sudo pacman -U ./paquetes/zsh-autosuggestions.pacman --noconfirm > /dev/null 2>&1
    sudo pacman -U ./paquetes/zsh-syntax-highlighting.pacman --noconfirm > /dev/null 2>&1
    echo "  OH-MY-ZSH ->        OK"

    sudo pacman -U ./paquetes/oh-my-zsh.pacman --noconfirm > /dev/null 2>&1
    echo "  Agave Nerd Font ->  OK"


echo "-> Instalando programas basicos adicionales"
echo ""
        paru -S visual-studio-code-bin --noconfirm > /dev/null 2>&1
    echo "      Visual Studio Code  OK"

        paru -S ms-365-electron --noconfirm > /dev/null 2>&1
    echo "      Office 365          OK"
        
         paru -S google-chrome --noconfirm > /dev/null 2>&1
    echo "      Google Chrome       OK"
    
        paru -S debtap --noconfirm > /dev/null 2>&1
    echo "      Debtap              OK"

        paru -S virtualbox-host-modules-arch --noconfirm > /dev/null 2>&1
        paru -S virtualbox --noconfirm > /dev/null 2>&1
            sudo modprobe vboxdrv
            sudo modprobe vboxnetadp
            sudo modprobe vboxnetflt
    echo "      VirtualBox          OK"


echo ""

echo "-> Configurando paquetes...."
echo ""
    mv config ~/.config > /dev/null 2>&1
    mv .zshrc ~/.zshrc > /dev/null 2>&1
    sudo chown -R pablo:pablo ~/.config > /dev/null 2>&1
    chsh -s /bin/zsh
    sudo systemctl enable sddm

echo ""
echo "      HYPRCUST SETUP COMPLETE"
echo ""
sleep 3
exit
