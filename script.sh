#! /bin/bash

echo "plz enter your sudo password"
sudo tar -xf files/flat-remix-icon-pack.tar.xz -C /usr/share/icons
echo "ectracting ICONS"
sudo tar -xf files/fluent-icon-pack.tar.xz -C /usr/share/icons

echo "extracting CURSORS"
sudo tar -xf files/cursor-theme.tar.gz -C /usr/share/icons

echo "extracting THEMES"
sudo tar -xf files/fluent-gtk-theme.tar.xz -C /usr/share/themes
sudo tar -xf files/juno-ocean-gtk-theme.tar.xz -C /usr/share/themes
sudo tar -xf files/adara-dark.tar.xz -C /usr/share/themes

echo "extracting SOUNDS"
sudo tar -xf files/sounds.tar.xz -C /usr/share/mint-artwork/sounds

echo "extracting APPLETS"
tar -xf files/applets.tar.xz -C $HOME/.local/share/cinnamon/applets

echo "extracting EXTENSIONS"
tar -xf files/extensions.tar.xz -C $HOME/.local/share/cinnamon/extensions

echo "extracting APPLETS EXTENSION Configs" 
tar -xf files/cinnamon-configs.tar.xz -C $HOME/.cinnamon/configs

echo "Adding Repositories"
sudo add-apt-repository ppa:nemonein/bomi -y
sudo add-apt-repository ppa:christian-boxdoerfer/fsearch-daily -y
sudo add-apt-repository ppa:danielrichter2007/grub-customizer -y
sudo add-apt-repository ppa:papirus/papirus -y

sudo apt install apt-transport-https curl -y
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg -y
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

echo "Updating Packages"
sudo apt update

echo "Removing Unwanted Packages"
sudo apt remove simple-scan xreader-dbg bulky hexchat hypnotix rhythmbox transmission-gtk thunderbird redshift-gtk warpinator xreader xviewer -y

echo "Installing Extra Packages"
sudo apt install grub-customizer -y 
sudo apt install conky-all -y 
sudo apt install deepin-picker -y 
sudo apt install alacarte -y 
sudo apt install stacer -y 
sudo apt install ksysguard -y 
sudo apt install qbittorrent -y
sudo apt install deepin-image-viewer -y 
sudo apt install deepin-calculator -y 
sudo apt install okular -y 
sudo apt install geeqie -y 
sudo apt install gwenview -y 
sudo apt install mpv -y 
sudo apt install vlc -y 
sudo apt install soundkonverter -y 
sudo apt install thunar -y 
sudo apt install bomi -y 
sudo apt install fsearch -y 
sudo apt install git -y 
sudo apt install python3-pip -y 
sudo apt install qt5-style-kvantum qt5-style-kvantum-themes -y 
sudo apt install brave-browser -y

echo "Upgrading Packages"
sudo apt upgrade -y

echo "Removing Extra Unwanted Packages"
sudo apt remove timeshift gnome-calculator imagemagick imagemagick-6-common timidity -y

sudo apt autoremove -y

echo "extracting App Configs"
tar -xf files/app-config.tar.xz -C $HOME/.config

echo "extracting Local App Configs"
tar -xf files/local-config.tar.xz -C $HOME/.local/share

echo "cloning bashrc"
cp files/.bashrc $HOME

echo "cloning bash aliases"
cp files/.bash_aliases $HOME


read -p "Do You Want To Remove Default Themes (yes or no) : " input01
if [ $input01 = yes ] || [ $input01 = y ]
then
    echo "Removing Default Themes"
    sudo rm -r /usr/share/themes/Mint-X-*
    sudo rm -r /usr/share/themes/Mint-Y-*
    sudo rm -r /usr/share/icons/Mint-X-*
    sudo rm -r /usr/share/icons/Mint-Y-*
else
    echo "OK"
fi


read -p "Do You Want To Apply All Settings (yes or no) : " input02
if [ $input02 = yes ] || [ $input02 = y ]; then
    echo "Applying Settings"
    cd files/
    dconf load / < dconf.txt
    cd ..
else
    read -p "Do You Want To Enable All Applets (yes or no) : " input03
    if [ $input03 = yes ] || [ $input03 = y ]; then
        echo "Enabling Applets"
        gsettings set org.cinnamon enabled-applets ['panel1:center:0:grouped-window-list@cinnamon.org:2', 'panel1:right:6:systray@cinnamon.org:3', 'panel1:left:3:xapp-status@cinnamon.org:4', 'panel1:left:4:notifications@cinnamon.org:5', 'panel1:right:1:printers@cinnamon.org:6', 'panel1:right:11:keyboard@cinnamon.org:8', 'panel1:right:8:network@cinnamon.org:10', 'panel1:right:7:sound@cinnamon.org:11', 'panel1:right:12:power@cinnamon.org:12', 'panel1:right:13:calendar@cinnamon.org:13', 'panel1:left:0:CinnVIIStarkMenu@NikoKrause:14', 'panel1:right:16:clean-show-desktop@filipetorresbr:15', 'panel1:right:4:download-and-upload-speed@cardsurf:16', 'panel1:right:2:betterlock:17', 'panel1:right:10:qredshift@quintao:18', 'panel1:right:15:separator@cinnamon.org:19', 'panel1:right:14:user@cinnamon.org:20', 'panel1:right:5:spacer@cinnamon.org:21', 'panel1:left:2:spacer@cinnamon.org:22', 'panel1:right:3:spacer@cinnamon.org:23', 'panel1:right:9:darkMode@linuxedo.com:24']
    else 
        read -p "Do You Want To Apply ICON Theme (yes or no) : " input04
        if [ $input04 = yes ] || [ $input04 = y ]; then
            echo "Applying ICON Themes"
            gsettings set org.cinnamon.desktop.interface icon-theme 'Fluent-dark'
        fi

        read -p "Do You Want To Apply CURSOR Theme (yes or no) : " input05
        if [ $input05 = yes ] || [ $input05 = y ]; then
            echo "Applying CURSOR Themes"
            gsettings set org.cinnamon.desktop.interface cursor-theme 'capitaine-cursors-light'
        fi

        read -p "Do You Want To Apply Application Theme (yes or no) : " input06
        if [ $input06 = yes ] || [ $input06 = y ]; then
            echo "Applying Themes"
            gsettings set org.cinnamon.desktop.wm.preferences theme 'Juno-ocean'
            gsettings set org.cinnamon.desktop.interface gtk-theme 'Juno-ocean'
            gsettings set org.cinnamon.theme name 'Adara-Dark'
         fi
    fi    
fi

mkdir $HOME/Data

mkdir $HOME/.fonts
echo "extracting FONTS"
tar -xf files/fonts.tar.xz -C $HOME/.fonts

mkdir $HOME/Pictures/wallpaper
cp files/wallheaven-007.jpg $HOME/Pictures/wallpaper
echo "Applying Wallpaper"
gsettings set org.gnome.desktop.background picture-uri file://$HOME/Pictures/wallpaper/wallheaven-007.jpg

echo "Applying Login Wallpaper"
sudo cp files/wallheaven-000.jpeg /usr/share/backgrounds
sudo cp files/slick-greeter.conf /etc/lightdm/

read -p "Do You Want To Reboot Your System (yes or no) : " input07
if [ $input07 = yes ] || [ $input07 = y ]
then
    echo "Rebooting "
    reboot
else
    echo "Reboot Later To Finish Setup"
fi














