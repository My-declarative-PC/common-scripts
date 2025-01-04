#!/bin/bash

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

sudo flatpak install --assumeyes flathub org.mozilla.firefox
sudo flatpak install --assumeyes flathub net.cozic.joplin_desktop
sudo flatpak install --assumeyes flathub com.brave.Browser
sudo flatpak install --assumeyes flathub com.bitwarden.desktop
sudo flatpak install --assumeyes flathub it.mijorus.gearlever
sudo flatpak install --assumeyes flathub org.telegram.desktop
sudo flatpak install --assumeyes flathub org.wezfurlong.wezterm
