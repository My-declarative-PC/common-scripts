#!/bin/bash

flatpak --user override --filesystem=home
flatpak --user override --filesystem=$HOME/.icons
flatpak --user override --filesystem=$HOME/.themes
flatpak --user override --filesystem=$HOME/.config
flatpak --user override --env=GTK_THEME=Dracula
flatpak --user override --env=GTK_USE_PORTAL=1
flatpak --user override --talk-name=org.freedesktop.Notifications

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

sudo flatpak install --assumeyes flathub org.mozilla.firefox
sudo flatpak install --assumeyes flathub net.cozic.joplin_desktop
sudo flatpak install --assumeyes flathub com.brave.Browser
sudo flatpak install --assumeyes flathub com.bitwarden.desktop
sudo flatpak install --assumeyes flathub it.mijorus.gearlever
sudo flatpak install --assumeyes flathub org.telegram.desktop
sudo flatpak install --assumeyes flathub org.wezfurlong.wezterm
sudo flatpak install --assumeyes flathub com.github.PintaProject.Pinta
sudo flatpak install --assumeyes flathub org.dbgate.DbGate
sudo flatpak install --assumeyes flathub com.obsproject.Studio
