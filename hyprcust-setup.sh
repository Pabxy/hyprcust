#Hyprland Custom Script#

clear

echo ""
echo "-> Instalando dependencias....."
    sudo pacman -S zsh pulseaudio pavucontrol nano git neofetch kitty --noconfirm > /dev/null 2>&1

echo "-> Instalando todos los paquetes....."    
    sudo pacman -U ./paquetes/* --noconfirm > /dev/null 2>&1
    echo """
    Hyprland    OK
    Hyprpaper   OK
    Waybar      OK
    Paru        OK
    Kitty       OK
    Sddm        OK
    Rofi        OK
    Office-356  OK
    Oh-My-Zsh   OK
    Agave Font  OK
    """
    sleep 3
    echo ""

echo "-> Instalando programas basicos adicionales"
echo ""
        paru -S visual-studio-code-bin --noconfirm > /dev/null 2>&1
    echo "      Visual Studio Code  OK"
        
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

echo "      HYPRCUST SETUP COMPLETE"
echo ""
sleep 3
exit
