username="olipet284" # Git Username

sudo apt update
sudo apt install curl

### Brave Browser
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
sudo curl -fsSLo /etc/apt/sources.list.d/brave-browser-release.sources https://brave-browser-apt-release.s3.brave.com/brave-browser.sources
sudo apt install brave-browser
timeout 5 brave-browser
cp -a "newconfig/Brave-Browser/." ~/.config/BraveSoftware/Brave-Browser/Default/

### Python
sudo apt install python3-pip -y
/usr/bin/python3 -m pip install Pint simpleeval parsedatetime pytz babel --break-system-packages

### uLauncher
sudo add-apt-repository ppa:agornostal/ulauncher
sudo apt install ulauncher
timeout 1 ulauncher
## uLauncher Extensions
# Emoji - https://github.com/Ulauncher/ulauncher-emoji
# Calculator - https://github.com/tchar/ulauncher-albert-calculate-anything
# Clipboard Manager - https://github.com/friday/ulauncher-clipboard
sudo apt install copyq -y
# Filesearch - https://github.com/brpaz/ulauncher-file-search
sudo apt install fd-find -y
# System - https://github.com/iboyperson/ulauncher-system
# Timer - https://github.com/ulauncher/ulauncher-timer
# URL- https://github.com/DevKleber/ulauncher-open-link

# OBS MOVE FOLDERS 
cp -a "newconfig/uLauncher/." ~/.config/ulauncher/

# To Be Added
# Spotify - https://github.com/the-lay/ulauncher-spotify-api

### VS Code
sudo apt install software-properties-common apt-transport-https wget -y
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/   
echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" | sudo tee /etc/apt/sources.list.d/vscode.list
sudo apt update
sudo apt install code

### Git
sudo apt install git -y
git config --global user.name $username

### Firefox and Thunderbird
sudo apt purge firefox 'firefox-locale-*'
rm -rf ~/.mozilla ~/.cache/mozilla   
sudo apt purge thunderbird*
sudo apt autoremove

### Spotify
echo "deb https://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
curl -sS https://download.spotify.com/debian/pubkey_C85668DF69375001.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg
sudo apt install spotify-client

### 


### Equalizer - NOT WORKING
sudo apt install pulseaudio
sudo apt install pulseaudio-equalizer -y
qpaeq
echo "load-module module-equalizer-sink" | sudo tee -a /etc/pulse/default.pa
echo "load-module module-dbus-protocol" | sudo tee -a /etc/pulse/default.pa
pulseaudio --kill && pulseaudio --start


### Google Drive - NOT NATIVE
### Theme - https://www.youtube.com/watch?v=OwBKbuy7U8s
## Font - https://fonts.google.com/share?selection.family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900
cp -a "newconfig/fonts/." ~/.local/share/fonts/
gsettings set org.gnome.desktop.interface font-name "Inter 11" # default
# desktop - MISSING
# window title - MISSING

## Theme - https://www.gnome-look.org/p/1441725
cp -a "newconfig/theme/." ~/.themes/
cp -a "newconfig/icons/." ~/.icons/

gsettings set org.cinnamon.desktop.interface icon-theme "Tela"
gsettings set org.cinnamon.desktop.interface cursor-theme "Future-cyan-cursors"

gsettings set org.cinnamon.desktop.interface gtk-theme "Skeuos-Blue-Light"
gsettings set org.cinnamon.theme name 'Fluent-Light-compact'

gsettings set org.cinnamon.desktop.interface gtk-theme "Skeuos-Blue-Dark"
gsettings set org.cinnamon.theme name 'Fluent-Dark-compact'

## Extensions
cp -a "newconfig/extensions/." ~/.local/share/cinnamon/extensions/
cp -a "newconfig/spices/." ~/.config/cinnamon/spices/

## Applets - MUST ADD MANUALLY
# Trash
# Workspace Switcher
# Windows Quick List 

## Setting
# System Settings > Windows > Alt-Tab > Alt-Tab switcher style = Coverflow (3D)

## Actions
# VSCode Launcher
# Compress PDF

## Panel
gsettings set org.cinnamon panels-autohide "['1:true']"
# Move Icons Into Center - NOT WORKING

### Wallpapers
# Part of Extensions

### Shortcuts
# Toggle Light-/Darkmode - NOT WORKING
mkdir home/$username/.scripts
cp -a "newconfig/scripts/." ~/.scripts/
chmod +x ~/.scripts/toggle_dark_mode.sh 
~/.scripts/toggle_dark_mode.sh 
dconf write /org/cinnamon/desktop/keybindings/custom/custom0/command "'home/olipet284/.scripts/toggle_dark_mode.sh'"
dconf write /org/cinnamon/desktop/keybindings/custom/custom0/name "'Toggle Dark Mode'"
dconf write /org/cinnamon/desktop/keybindings/custom/custom0/binding "'<Control><Period>'"
dconf write /org/cinnamon/desktop/keybindings/custom/custom0/enabled true

### Terminal


### Obsidian
sudo mv /etc/apt/preferences.d/nosnap.pref /etc/apt/preferences.d/nosnap.backup
sudo apt update
sudo apt install snapd
sudo snap install obsidian --classic


### Notion
curl https://raw.githubusercontent.com/puneetsl/lotion/master/setup.sh > setup.sh
chmod +x setup.sh
sudo ./setup.sh native

## Notion Calendar 
sudo snap install notion-calendar-snap

## Notion Mail - NOT WORKING
# Open mail.notion.so and download Brave Web App


