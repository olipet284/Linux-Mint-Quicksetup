# Linux Mint Quicksetup

A shell script to help set up Linux Mint upon install.

## Guide
To be added

### Manually
- Google Drive
    - GNOME Online Accounts (Only mounts the drive, i.e. no sync)
    - Celeste Two-Way Sync (not as easy to use as on other OS)
- Keyboard Shortcuts
    - Super + N: Notion
        - brave-browser --new-tab notion.so
    - Super + M: Mail 
        - brave-browser --new-tab mail.notion.so
    - Super + C: Calendar
        - brave-browser --new-tab calendar.notion.so
    - Alt + M: Minimize Window
    - Super + O: Obsidian
        - env BAMF_DESKTOP_FILE_HINT=/var/lib/snapd/desktop/applications/obsidian_obsidian.desktop /snap/bin/obsidian %U
    - Alt + Microphone (Alt + F4 with FnLock): Close Window
    - Ctrl + 0: Toggle Light-/Dark Mode
        - bash /home/USER/.scripts/toggle_dark_mode.sh
    - (Shift +) Super + Tab: Cycle (backwards) through windows from all workspaces
- Theme
    - Fonts (Font Selection)
    - Desktop font
        - Inter Regular 11
    - Window title font
        - Inter Medium 11
- Brave Extensions
    - Flylighter
    - NordPass
    - QuillBot
    - RSS Feed Reader
    - Stylebot
    - UnDistracted
    - UnTrap
    - YouTube Playback Speed Control
- Applets
    - Trash
    - Workspace Switcher
    - Windows Quick List
- Setting
    - System Settings > Windows > Alt-Tab > Alt-Tab switcher style = Coverflow (3D)
- Actions
    - VSCode Launcher
    - Compress PDF
    - Merge PDF
- Other
    - Transparent Terminal
        1. Open Terminal
        2. Right click -> Preferences -> Profiles -> Colors -> Use Transparent Background
    - Panel 
        - Right click panel
        - Enable Panel edit mode
        - Move groups around

## To be added
- Equalizer
