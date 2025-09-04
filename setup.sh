sudo apt install curl
sudo mv /etc/apt/preferences.d/nosnap.pref /etc/apt/preferences.d/nosnap.backup
sudo apt update
sudo apt install snapd
mkdir -p ~/.other_icons
cp -a "newconfig/other_icons/." ~/.other_icons/

### Brave Browser
echo "Installing Brave Browser"
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
sudo curl -fsSLo /etc/apt/sources.list.d/brave-browser-release.sources https://brave-browser-apt-release.s3.brave.com/brave-browser.sources
sudo apt install brave-browser
timeout 5 brave-browser
cp -a "newconfig/Brave-Browser/." ~/.config/BraveSoftware/Brave-Browser/Default/

### Python
echo "Installing Python Packages"
sudo apt install python3-pip -y
/usr/bin/python3 -m pip install Pint simpleeval parsedatetime pytz babel --break-system-packages

### uLauncher
echo "Installing uLauncher"
sudo add-apt-repository ppa:agornostal/ulauncher -y
sudo apt install ulauncher -y
timeout 1 ulauncher
## Extensions
echo "Installing uLauncher Extensions"
echo "Emoji - https://github.com/Ulauncher/ulauncher-emoji"
echo "Calculator - https://github.com/tchar/ulauncher-albert-calculate-anything"
echo "Clipboard Manager - https://github.com/friday/ulauncher-clipboard"
echo "Filesearch - https://github.com/brpaz/ulauncher-file-search"
echo "System - https://github.com/iboyperson/ulauncher-system"
echo "Timer - https://github.com/ulauncher/ulauncher-timer"
echo "URL- https://github.com/DevKleber/ulauncher-open-link"
echo "Spotify - https://github.com/the-lay/ulauncher-spotify-api" # To be added

sudo apt install copyq -y
sudo apt install fd-find -y
cp -a "newconfig/ulauncher/." ~/.config/ulauncher/

### VS Code
echo "Installing VS Code"
sudo apt install software-properties-common apt-transport-https wget -y
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/   
echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" | sudo tee /etc/apt/sources.list.d/vscode.list
sudo apt update
sudo apt install code -y
# Add VSCode shortcut in uLauncher - Must be added manually

### Git
echo "Installing Git"
sudo apt install git -y
read -p "Enter your Git username: " username # Ask for Git Username
git config --global user.name "$username"

### Firefox and Thunderbird
echo "Removing Firefox and Thunderbird"
sudo apt purge firefox 'firefox-locale-*'
rm -rf ~/.mozilla ~/.cache/mozilla   
sudo apt purge thunderbird*
sudo apt autoremove

### Spotify
echo "Installing Spotify"
echo "deb https://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
curl -sS https://download.spotify.com/debian/pubkey_C85668DF69375001.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg
sudo apt install spotify-client


### Equalizer - To be added
### Google Drive - To be added

### Theme - https://www.youtube.com/watch?v=OwBKbuy7U8s
echo "Setting up Theme"
## Font - https://fonts.google.com/share?selection.family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900
cp -a "newconfig/fonts/." ~/.local/share/fonts/
gsettings set org.gnome.desktop.interface font-name "Inter 11" # default
# desktop font - Must be added manually
# window font - Must be added manually

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

## Applets - Must be added manually
# Trash
# Workspace Switcher
# Windows Quick List 

## Setting - Must be added manually
# System Settings > Windows > Alt-Tab > Alt-Tab switcher style = Coverflow (3D)

## Actions - Must be added manually
# VSCode Launcher
# Compress PDF

## Panel
gsettings set org.cinnamon panels-autohide "['1:true']"
# Move Icons Into Center - Must be added manually

### Shortcuts
# Toggle Light-/Darkmode - Not working
#mkdir -p ~/.scripts
#cp -a "newconfig/scripts/." ~/.scripts/
#chmod +x ~/.scripts/toggle_dark_mode.sh 
#~/.scripts/toggle_dark_mode.sh 
#dconf write /org/cinnamon/desktop/keybindings/custom/custom0/command "'home/olipet284/.scripts/toggle_dark_mode.sh'"
#dconf write /org/cinnamon/desktop/keybindings/custom/custom0/name "'Toggle Dark Mode'"
#dconf write /org/cinnamon/desktop/keybindings/custom/custom0/binding "'<Control><Period>'"
#dconf write /org/cinnamon/desktop/keybindings/custom/custom0/enabled true

### Terminal - To be added

### Obsidian
ask "Do you want to install Obsidian? (y/n)" choice
if [[ $choice == [Yy]* ]]; then
    echo "Installing Obsidian"
    sudo snap install obsidian --classic
else
    echo "Skipping Obsidian installation"
fi

### Notion
ask "Do you want to install Notion? (y/n)" choice
if [[ $choice == [Yy]* ]]; then
    echo "Installing Notion"
    sudo snap install notion-snap-reborn
    sudo snap install notion-calendar-snap
    brave-browser --new-window mail.notion.so # Must be added manually
else
    echo "Skipping Notion installation"
fi
