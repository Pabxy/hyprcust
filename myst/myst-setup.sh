
#colores = echo -e "\e[;31m Error: Revisa esto \e[0m"


debian=$(ls /bin | grep apt$ )

arch=$(ls /bin | grep pacman$)


start (){

    echo """
    ##############################
    #   My Shiny Terminal Setup  #
    ##############################
    """
    #Check Debian/Arch

    if [ $debian == "apt" > /dev/null 2>&1 ];then 
        distro=Debian

    elif [ $arch == "pacman" > /dev/null 2>&1 ]; then
        distro=Arch

    else
        echo "Distro no compatible"

    fi

    #Check Shell

    if [ $SHELL == "/bin/bash" ];then 
        consola=Bash        echo """
    ##############################
    #   My Shiny Terminal Setup  #
    ##############################
    """
    #Check Debian/Arch

    if [ $debian == "apt" > /dev/null 2>&1 ];then 
        distro=Debian

    elif [ $arch == "pacman" > /dev/null 2>&1 ]; then
        distro=Arch

    else
        echo "Distro no compatible"

    fi

    #Check Shell

    if [ $SHELL == "/bin/bash" ];then 
        consola=Bash

    elif [ $SHELL == "/bin/zsh" ]; then
        consola=Zsh

    elif [ $SHELL == "/bin/zsh" > /dev/null 2>&1 ]; then
        consola=Fish

    else
        consola=NotDetected

    fi

    echo "Distro --> $distro"
    echo "Shell ---> $consola"

    elif [ $SHELL == "/bin/zsh" ]; then
        consola=Zsh

    elif [ $SHELL == "/bin/zsh" > /dev/null 2>&1 ]; then
        consola=Fish

    else
        consola=NotDetected
        sleep 2
        exit

    fi

    sleep 1
    echo "Distro --> $distro"
    sleep 1
    echo "Shell ---> $consola"
    sleep 1
}

install () {

    #Debian version
    
    echo ""
    sudo apt -y install zsh git curl > /dev/null 2>&1
    echo ""
    echo "Instalando Zsh ....."
        
        
    echo "Instalando OH-MY-ZSH + Plugins"
        sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" > /dev/null 2>&1
        git clone https://github.com/zsh-users/zsh-autosuggestions 
        git clone https://github.com/zsh-users/zsh-syntax-highlighting.git 
        

}









#Llamada Funciones

start

install

