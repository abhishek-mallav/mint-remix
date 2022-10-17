#! /bin/bash

echo "plz enter your sudo password"
sudo tar -xf files/flat-remix-icon-pack.tar.xz -C /usr/share/icons
sleep 2
echo "ectracting ICONS"
sudo tar -xf files/fluent-icon-pack.tar.xz -C /usr/share/icons

echo "extracting CURSORS"
sudo tar -xf files/cursor-theme.tar.gz -C /usr/share/icons
sleep 2

echo "extracting THEMES"
sudo tar -xf files/fluent-gtk-theme.tar.xz -C /usr/share/themes
sudo tar -xf files/otis-forest.tar.xz -C /usr/share/themes
sudo tar -xf files/adara-dark.tar.xz -C /usr/share/themes
sudo tar -xf files/layan-light.tar.xz -C /usr/share/themes
sleep 2

echo "extracting SOUNDS"
sudo tar -xf files/sounds.tar.xz -C /usr/share/mint-artwork/sounds
sleep 2

echo "extracting APPLETS"
tar -xf files/applets.tar.xz -C $HOME/.local/share/cinnamon/applets
sleep 2

echo "extracting EXTENSIONS"
tar -xf files/extensions.tar.xz -C $HOME/.local/share/cinnamon/extensions
sleep 2

echo "extracting APPLETS EXTENSION Configs" 
tar -xf files/cinnamon-configs.tar.xz -C $HOME/.cinnamon/configs
sleep 2

sudo apt install apt-transport-https curl -y
sleep 2
echo "Adding Repositories"
sudo add-apt-repository ppa:nemonein/bomi -y
sudo add-apt-repository ppa:christian-boxdoerfer/fsearch-daily -y
sudo add-apt-repository ppa:danielrichter2007/grub-customizer -y
sudo add-apt-repository ppa:papirus/papirus -y

sudo apt install apt-transport-https curl
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sleep 2

echo "Updating Packages"
sleep 2
sudo apt update

echo "Removing Unwanted Packages"
sleep 2
sudo apt remove simple-scan xreader-dbg bulky hexchat hypnotix rhythmbox transmission-gtk thunderbird redshift-gtk warpinator xreader xviewer -y

echo "Installing Extra Packages"
sleep 2
sudo apt install grub-customizer -y 
sudo apt install conky-all -y 
sudo apt install deepin-picker -y 
sudo apt install alacarte -y 
sudo apt install stacer -y 
sudo apt install qbittorrent -y
sudo apt install deepin-image-viewer -y 
sudo apt install deepin-calculator -y 
sudo apt install okular -y 
sudo apt install geeqie -y 
sudo apt install gwenview -y 
sudo apt install totem -y 
sudo apt install vlc -y 
sudo apt install soundkonverter -y 
sudo apt install thunar -y 
sudo apt install bomi -y 
sudo apt install fsearch -y 
sudo apt install git -y 
sudo apt install python3-pip -y 
sudo apt install qt5-style-kvantum qt5-style-kvantum-themes -y 
sudo apt install brave-browser -y

read -p "Do You Want to Install VSCode (yes or no) : " input001
if [ $input001 = yes ] || [ $input001 = y ]
then
    sudo apt-get install wget gpg
    wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
    sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
    sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
    rm -f packages.microsoft.gpg
    sudo apt install apt-transport-https
    sudo apt update
    sudo apt install code
else
    echo "OK"
    sleep 2
fi

sudo apt install -f -y
echo "Upgrading Packages"
sleep 2
sudo apt upgrade -y

echo "Removing Extra Unwanted Packages"
sleep 2
sudo apt remove gnome-calculator timidity -y

sudo apt autoremove -y

echo "extracting App Configs"
sleep 2
tar -xf files/app-config.tar.xz -C $HOME/.config

echo "extracting Local App Configs"
sleep 2
tar -xf files/local-config.tar.xz -C $HOME/.local/share

echo "cloning bashrc"
sleep 2
cp files/.bashrc $HOME

echo "cloning bash aliases"
sleep 2
cp files/.bash_aliases $HOME


read -p "Do You Want To Remove Default Themes (yes or no) : " input01
if [ $input01 = yes ] || [ $input01 = y ]
then
    echo "Removing Default Themes"
    sleep 2
    sudo rm -r /usr/share/themes/Mint-X-*
    sudo rm -r /usr/share/themes/Mint-Y-*
    sudo rm -r /usr/share/icons/Mint-X-*
    sudo rm -r /usr/share/icons/Mint-Y-*
else
    echo "OK"
    sleep 2
fi


read -p "Do You Want To Apply All Settings (yes or no) : " input02
if [ $input02 = yes ] || [ $input02 = y ]; then
    echo "Applying Settings"
    sleep 2
    cd files/
    dconf load / < dconf.txt
    cd ..
else
    read -p "Do You Want To Enable All Applets (yes or no) : " input03
    if [ $input03 = yes ] || [ $input03 = y ]; then
        echo "Enabling Applets"
        sleep 2
        gsettings set org.cinnamon enabled-applets ['panel1:center:0:grouped-window-list@cinnamon.org:2', 'panel1:right:6:systray@cinnamon.org:3', 'panel1:left:3:xapp-status@cinnamon.org:4', 'panel1:left:4:notifications@cinnamon.org:5', 'panel1:right:1:printers@cinnamon.org:6', 'panel1:right:11:keyboard@cinnamon.org:8', 'panel1:right:8:network@cinnamon.org:10', 'panel1:right:7:sound@cinnamon.org:11', 'panel1:right:12:power@cinnamon.org:12', 'panel1:right:13:calendar@cinnamon.org:13', 'panel1:left:0:CinnVIIStarkMenu@NikoKrause:14', 'panel1:right:16:clean-show-desktop@filipetorresbr:15', 'panel1:right:4:download-and-upload-speed@cardsurf:16', 'panel1:right:2:betterlock:17', 'panel1:right:10:qredshift@quintao:18', 'panel1:right:15:separator@cinnamon.org:19', 'panel1:right:14:user@cinnamon.org:20', 'panel1:right:5:spacer@cinnamon.org:21', 'panel1:left:2:spacer@cinnamon.org:22', 'panel1:right:3:spacer@cinnamon.org:23', 'panel1:right:9:darkMode@linuxedo.com:24']
    else 
        read -p "Do You Want To Apply ICON Theme (yes or no) : " input04
        if [ $input04 = yes ] || [ $input04 = y ]; then
            echo "Applying ICON Themes"
            sleep 2
            gsettings set org.cinnamon.desktop.interface icon-theme 'Fluent-dark'
        fi

        read -p "Do You Want To Apply CURSOR Theme (yes or no) : " input05
        if [ $input05 = yes ] || [ $input05 = y ]; then
            echo "Applying CURSOR Themes"
            sleep 2
            gsettings set org.cinnamon.desktop.interface cursor-theme 'capitaine-cursors-light'
        fi

        read -p "Do You Want To Apply Application Theme (yes or no) : " input06
        if [ $input06 = yes ] || [ $input06 = y ]; then
            echo "Applying Themes"
            sleep 2
            gsettings set org.cinnamon.desktop.wm.preferences theme 'Juno-ocean'
            gsettings set org.cinnamon.desktop.interface gtk-theme 'Juno-ocean'
            gsettings set org.cinnamon.theme name 'Adara-Dark'
         fi
    fi    
fi

mkdir $HOME/Data

mkdir $HOME/.fonts
echo "extracting FONTS"
sleep 2
tar -xf files/fonts.tar.xz -C $HOME/.fonts

mkdir $HOME/Pictures/wallpaper
cp files/wallpaper.jpg $HOME/Pictures/wallpaper
echo "Applying Wallpaper"
sleep 2
gsettings set org.gnome.desktop.background picture-uri file://$HOME/Pictures/wallpaper/wallpaper.jpg

echo "Applying Login Wallpaper"
sleep 2

sudo cp files/wallheaven-000.jpeg /usr/share/backgrounds
sudo cp files/slick-greeter.conf /etc/lightdm/

read -p "Do You Want To Apply GRUB Theme (yes or no) : " input07
if [ $input07 = yes ] || [ $input07 = y ]
then
    echo "Applying GRUB Theme"
    sleep 10
    cd files/GRUB/
    chmod +x install.sh
    sudo ./install.sh
    cd ..
    cd ..
else
    echo "OK"
    sleep 2
fi

read -p "Do You Want To Reboot Your System (yes or no) : " input08
if [ $input08 = yes ] || [ $input08 = y ]
then
    echo "Rebooting in 10 Sec"
    sleep 10
    reboot
else
    echo "Reboot Later To Finish Setup"
    sleep 2
fi
