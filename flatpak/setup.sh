#!/bin/bash

flatpak --user override --filesystem=home
flatpak --user override --filesystem=$HOME/.icons
flatpak --user override --filesystem=$HOME/.themes
flatpak --user override --filesystem=$HOME/.config
flatpak --user override --env=GTK_THEME=Dracula
flatpak --user override --env=GTK_USE_PORTAL=1
flatpak --user override --talk-name=org.freedesktop.Notifications

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

flatpak install --assumeyes flathub app.zen_browser.zen
flatpak install --assumeyes flathub net.cozic.joplin_desktop
flatpak install --assumeyes flathub com.brave.Browser
flatpak install --assumeyes flathub com.bitwarden.desktop
flatpak install --assumeyes flathub it.mijorus.gearlever
flatpak install --assumeyes flathub org.telegram.desktop
flatpak install --assumeyes flathub org.wezfurlong.wezterm
flatpak install --assumeyes flathub com.github.PintaProject.Pinta
flatpak install --assumeyes flathub org.dbgate.DbGate
flatpak install --assumeyes flathub com.obsproject.Studio
