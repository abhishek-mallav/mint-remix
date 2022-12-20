#!/bin/bash

echo "Enter Your Password"
sudo tar -xf Files/Themes/adara-dark.tar.xz -C /usr/share/themes

echo "Installing Themes"
sudo tar -xf Files/Themes/adara-dark.tar.xz -C /usr/share/themes
sudo tar -xf Files/Themes/layan-light.tar.xz -C /usr/share/themes
sudo tar -xf Files/Themes/otis-forest.tar.xz -C /usr/share/themes
sudo unzip Files/Themes/sweet-dark.zip -d /usr/share/themes
sudo unzip Files/Themes/sweet-ambar-blue.zip -d /usr/share/themes

echo "Installing Icon Theme"
sudo tar -xf Files/Icons/colloid.tar.xz -C /usr/share/icons
sudo tar -xf Files/Icons/colloid-purple.tar.xz -C /usr/share/icons
sudo tar -xf Files/Icons/flat-remix-icon-pack.tar.xz -C /usr/share/icons
sudo tar -xf Files/Icons/fluent-icon-pack.tar.xz -C /usr/share/icons

echo "Installing Cursor Theme"
sudo tar -xf Files/Icons/cursor-theme.tar.gz -C /usr/share/icons

echo "Copying Sounds"
sudo cp -r Files/Sounds/* /usr/share/sounds

echo "Copying Fonts"
sudo cp -r Files/Fonts/* /usr/share/fonts

echo "Copying Config"
cp -r Files/Local-Config/* $HOME/.local/share

echo "Copying Cinnamon Config"
cp -r Files/Config/cinnamon-configs/* $HOME/.cinnamon/configs

echo "Copying App Config"
cp -r Files/Config/app-config/* $HOME/.config

# --------------------------------------------------------------------
echo "Adding Repositories"

echo "Adding Bomi Repository"
sudo add-apt-repository ppa:nemonein/bomi -y

echo "Adding fSearch Repository"
sudo add-apt-repository ppa:christian-boxdoerfer/fsearch-daily -y

echo "Adding Grub-Customizer Repository"
sudo add-apt-repository ppa:danielrichter2007/grub-customizer -y

echo "Adding Kvantum-Theme-Manager Repository"
sudo add-apt-repository ppa:papirus/papirus -y

echo "Adding Brave-Browser Repository"
sudo apt install apt-transport-https curl -y
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

# ---------------------------------------------------------------------
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

sudo apt install -f -y
echo "Upgrading Packages"
sleep 2
sudo apt upgrade -y

sudo apt remove gnome-calculator timidity -y
sudo apt autoremove -y

# ----------------------------------------------------------
echo "Cloning Bashrc"
sleep 2
cp Files/.bashrc $HOME

echo "Cloning Bash Aliases"
sleep 2
cp Files/.bash_aliases $HOME

# ----------------------------------------------------------
cp -r Files/Wallpaper $HOME/Pictures
echo "Applying Wallpaper"
sleep 2
gsettings set org.gnome.desktop.background picture-uri file:///$HOME/Pictures/Wallpaper/wallpaper.jpg
# -----------------------------------------------------------
echo "Applying Login Wallpaper"
sleep 2
sudo cp Files/Wallpaper/wallheaven.jpeg /usr/share/backgrounds
sudo cp Files/slick-greeter.conf /etc/lightdm/

# ----------------------------------------------------------
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

# -----------------------------------------------------------
read -p "Do You Want To Apply GRUB Theme (yes or no) : " input07
if [ $input07 = yes ] || [ $input07 = y ]
then
    echo "Applying GRUB Theme"
    sleep 10
    chmod +x Files/GRUB/install.sh
    sudo ./Files/GRUB/install.sh
else
    echo "OK"
    sleep 2
fi
# ----------------------------------------------------------------
dconf load / < Files/dconf.txt

dconf load '/org/gnome/desktop/wm/keybindings/' < Files/keybindings.dconf

dconf load '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/' < Files/custom-keybindings.dconf

dconf load /org/gnome/terminal/ < Files/gnome_terminal_settings_backup.txt
# ----------------------------------------------------------------
chmod +x Files/starship.sh
sudo ./Files/starship.sh -y
# ----------------------------------------------------------------
echo "reboot system for updates to settle"

exit
