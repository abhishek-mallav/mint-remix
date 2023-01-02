# Mint-Remix

Mint Remix is a themed version of Linux Mint

*It is just a fun project*

## Custom Configuration

### Themes

* GTK Theme - **Sweet Ambar Blue for light theme** **&** **Otis-Forest for dark theme**

* Icon Theme - **Colloid (light/dark)**

* Cursor Theme - **Capitaine light**

* Task Bar Theme - **Adara Dark**

* Qt Theme - **PearOS Dark *(for qt apps)***

### TaskBar

- Taskbar is placed at the bottom mimicking Windows

- Classic Linux Mint Start Menu is replaced with CinnVIIStarkMenu

- System tray is aligned to the left besides Start Menu

- Disks Applet is added alongside the system tray

- KDE Connect Applet is added alongside the Disks Applet *(If you dont use KDE Connect you can simply right click and remove it)*

- Linux Mint Notes *(sticky)* is configured to apper in system tray for easier access 

- Icons are aligned to the middle

- A capslock and numlock indicator is placed to the right side

- Internet Speed-Meter is placed alongside the capslock and numlock indicator

- Some System controls are placed towards the right such as Sound Setting, Wifi/Ethernet, Night Light, Dark-Light Mode Switcher and Battery *(if laptop)* similar to Windows

- Just like Windows Clock is placed to the right side of taskbar

- A User Applet is placed besides Clock for easier access to logout, shutdown, lock, etc

- Just Like Windows a Show Desktop Applet has been added with hover to peek feature

![mintremix-03](https://github.com/abhishek-mallav/mint-remix/blob/main/Preview/taskbar.png)

![mintremix-04](https://github.com/abhishek-mallav/mint-remix/blob/main/Preview/desktop.png)

### Other Configs

* Smart-Panel Extension is installed and configured
  
  * Scroll the taskbar to change workplaces
  
  * Middle Click the taskbar to view the overview of all the workplaces
  
  * Double Click on empty space on taskbar to show the desktop

* Window Border Mouse Shortcuts
  
  * Left Click to drag the window (classic)
  
  * Right Click to view a drop down menu
  
  * Middle Click to quickly minimize the window

* Taskbar Icons Mouse Shortcuts
  
  * Left Click to open apps
  
  * Right Click to view a menu
  
  * Middle Click to quickly launch a new app instance
  
  * Hover the mouse to view the window

* Keyboard Shortcuts
  
  * Almost all the keyboard shortcuts are same except for some
  
  * Ctrl + Super *(Windows)* + Left/Right Arrow Keys to move selected window to another workplace
  
  * Ctrl + Shift + Esc to open System Monitor *(Task Manager)*
  
  * Super *(Windows)* + PrtSc to open screenshot menu
  
  * Super *(Windows)* + K to open color picker
  
  * Super *(Windows)* + F to open fsearch *(Windows alternative of Search Everything for Linux)*
  
  * Ctrl + Shift + X to close the selected window 

* Menu Bars are disabled in most of the applications *(press **Alt** to bring them back)*

* Default System Sound settings are changed

* Extra Fonts are installed *(Roboto, Metropolis, Carlito, Cantrell)*

* Files downloaded via **wget** are saved in **Downloads** directory

* bashrc and bash_aliases files are modified
  
  * Bash history is stored along with Date and Time
  
  * some aliases are added
    
    | Command             | Alias      |
    | ------------------- | ---------- |
    | neofetch            | neo        |
    | python3             | py         |
    | python2             | py2        |
    | sudo apt update     | update     |
    | sudo apt upgrade    | upgrade    |
    | sudo apt install    | install    |
    | sudo apt search     | search     |
    | sudo apt purge      | purge      |
    | sudo apt remove     | remove     |
    | sudo apt autoremove | autoremove |
    | sudo apt autoclean  | autoclean  |

### Applications/Packages Removed from Linux Mint

* simple-scan

* xreader-dbg

* bulky  *(replaced with thunar bulk rename)*

* hexchat 

* hypnotix 

* rhythmbox 

* transmission-gtk  *(replaced with qBittorrent)*

* thunderbird 

* redshift-gtk  *(removed because it conflicts with qRedshift Applet)*

* warpinator 

* xreader  *(replaced with Okular)*

* xviewer  *(replaced with Deepin Image Viewer)*

* gnome-calculator  (replaced with Deepin Calculator)

* timidity

### Applications/Packages Installed

* grub-customizer 

* conky-all 

* alacarte 

* stacer 

* qbittorrent 

* deepin-image-viewer 

* deepin-calculator 

* okular gwenview 

* totem

* vlc 

* soundkonverter 

* thunar 

* bomi 

* fsearch 

* git 

* python3-pip 

* qt5-style-kvantum qt5-style-kvantum-themes

* brave-browser

### Default Applications

| Category        | App                 |
|:--------------- |:------------------- |
| File Manager    | Nemo                |
| Browser         | Brave Browser       |
| Mail            | Brave Browser       |
| Document Viewer | Okular              |
| Document Editor | Only Office Suite   |
| Text Editor     | Text Editor *(xed)* |
| Music Player    | VLC                 |
| Video Player    | Bomi                |
| Photo Viewer    | Deepin Image Viewer |
| Terminal        | Gnome Terminal      |
| Calculator      | Deepin Calculator   |

### How to install

open the terminal 

*(you need to have git installed if not install it with)*

```bash
sudo apt install git
```

```bash
git clone https://github.com/abhishek-mallav/mint-remix.git
```

```bash
cd mint-remix
```

```bash
chmod +x script.sh
```

```bash
./script.sh
```

### Conky is installed but not configured

##### If you want to install and configure conky go to

###### [Github - abhishek-mallav/conky-themes](https://github.com/abhishek-mallav/conky-themes)

![Screenshot from 2022-10-13 17-49-59](https://github.com/abhishek-mallav/mint-remix/blob/main/Preview/desktop-light.png)

![](https://github.com/abhishek-mallav/mint-remix/blob/main/Preview/desktop-dark.png)

Terminal, Icons, Panel (taskbar) are scaled for better visual

conky is not scaled
