
# Linux Mint Quicksetup

Linux Mint Quicksetup is a shell script and checklist to help you quickly set up a fresh Linux Mint installation with your preferred settings, applications, and tweaks.

---

## Table of Contents
- [Linux Mint Quicksetup](#linux-mint-quicksetup)
  - [Table of Contents](#table-of-contents)
  - [Features](#features)
  - [Prerequisites](#prerequisites)
  - [Guide](#guide)
  - [Manual Checklist](#manual-checklist)
    - [Keyboard Shortcuts](#keyboard-shortcuts)
    - [Brave Extensions](#brave-extensions)
    - [Applets](#applets)
    - [Settings](#settings)
    - [Actions](#actions)
    - [Other](#other)
  - [Troubleshooting](#troubleshooting)
  - [To be added](#to-be-added)

---

## Features
- Automates installation of essential packages and tools
- Applies recommended system settings
- Sets up useful keyboard shortcuts
- Provides a checklist for manual tweaks and customizations

---

## Prerequisites
- Linux Mint installed
- Internet connection
- Terminal access

---

## Guide
1. Open Terminal (`Ctrl + Alt + T`)
2. Make sure your working directory is your home folder (default)
3. Download and run the `init.sh` file using one of the following scripts:
   ```bash
   wget -qO init.sh https://raw.githubusercontent.com/olipet284/Linux-Mint-Quicksetup/main/init.sh && bash init.sh
   ```
   or
   ```bash
   sudo apt install curl
   curl -fsSL https://raw.githubusercontent.com/olipet284/Linux-Mint-Quicksetup/main/init.sh -o init.sh && bash init.sh
   ```
4. Upon reading "Do you want to change your default shell to zsh? [Y/n]", type *"y"* and `Enter`
5. Write *"exit"* and press `Enter`
6. Go through the manual checklist below and apply the remaining changes.

---

## Manual Checklist
The following changes are not automated and must be done manually. For more information or help, see the [Troubleshooting](#troubleshooting) section or open an [issue](https://github.com/olipet284/Linux-Mint-Quicksetup/issues).

**Google Drive**
- [ ] GNOME Online Accounts *(Only mounts the drive, i.e. no sync)*
- [ ] Celeste Two-Way Sync *(not as easy to use as on other OS)*


---

### Keyboard Shortcuts
- [ ] **Open Notion:** Super + N  
      `brave-browser --new-tab notion.so`
- [ ] **Open Mail:** Super + M  
      `brave-browser --new-tab mail.notion.so`
- [ ] **Open Calendar:** Super + C  
      `brave-browser --new-tab calendar.notion.so`
- [ ] **Open Obsidian:** Super + O  
      `env BAMF_DESKTOP_FILE_HINT=/var/lib/snapd/desktop/applications/obsidian_obsidian.desktop /snap/bin/obsidian %U`
- [ ] **Open VSCode:** Super + V  
      `code`
- [ ] **Toggle Light-/Dark Mode:** Ctrl + 0  
      `bash /home/USER/.scripts/toggle_dark_mode.sh` *(replace USER with your username)*
- [ ] **Minimize Window:** Alt + M
- [ ] **Close Window:** Alt + Microphone *(Alt + F4 with FnLock on ThinkPad T470s)*
- [ ] **Cycle (backwards) through windows from all workspaces:** (Shift +) Super + Tab
- [ ] **Decrease opacity:** Ctrl + Alt + "-"
- [ ] **Increase opacity:** Ctrl + Alt + "+"

---

### Brave Extensions
- [ ] Flylighter
- [ ] NordPass
- [ ] QuillBot
- [ ] RSS Feed Reader
- [ ] Stylebot
- [ ] UnDistracted
- [ ] UnTrap
- [ ] YouTube Playback Speed Control

---

### Applets
- [ ] Trash
- [ ] Workspace Switcher
- [ ] Windows Quick List

---

### Settings
- [ ] System Settings > Windows > Alt-Tab > Alt-Tab switcher style = Coverflow (3D)

---

### Actions
- [ ] VSCode Launcher
- [ ] Compress PDF
- [ ] Merge PDF

---

### Other
- [ ] Fonts
    1. Open Font Selection
    2. **Desktop font:** Inter Regular 11
    3. **Window title font:** Inter Medium 11
- [ ] Transparent Terminal
    1. Open Terminal
    2. Right click -> Preferences -> Profiles -> Colors -> Use Transparent Background
- [ ] Panel 
    1. Right click panel
    2. Enable Panel edit mode
    3. Move groups around

---

## Troubleshooting

- If you encounter issues running the script, make sure you have internet access and the required tools (`wget` or `curl`).
- For permission errors, try running the script with `bash` or check file permissions.
- For further help, open an [issue](https://github.com/olipet284/Linux-Mint-Quicksetup/issues).

---

## To be added
- Equalizer
