configure-extensions:
    dconf load /org/gnome/shell/extensions/ < /etc/customscripts/extension-settings.dconf
    bash /etc/customscripts/enableExtensions.sh
