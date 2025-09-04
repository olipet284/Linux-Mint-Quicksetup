if [[ "$(gsettings get org.cinnamon.desktop.interface gtk-theme)" == *"Light"* ]]
then
    gsettings set org.cinnamon.desktop.interface gtk-theme "Skeuos-Blue-Dark"
    gsettings set org.cinnamon.theme name "Fluent-Dark-compact"
else
    gsettings set org.cinnamon.desktop.interface gtk-theme "Skeuos-Blue-Light"
    gsettings set org.cinnamon.theme name "Fluent-Light-compact"
fi