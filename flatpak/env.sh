#!/bin/bash

flatpak --user override --filesystem=home
flatpak --user override --filesystem=host
flatpak --user override --filesystem=host-etc
flatpak --user override --filesystem=$HOME/.local/share/icons
flatpak --user override --filesystem=$HOME/.local/share/themes
flatpak --user override --filesystem=$HOME/.config
flatpak --user override --env=GTK_THEME=$GTK_THEME
flatpak --user override --env=GTK_USE_PORTAL=1
flatpak --user override --talk-name=org.freedesktop.Notifications

mkdir -p $HOME/.local/share
cp -r /usr/share/icons $HOME/.local/share/icons
cp -r /usr/share/themes $HOME/.local/share/themes

export THEME_DIR="$HOME/.themes/$GTK_THEME"

# Optionally, add support for libadwaita
mkdir -p "${HOME}/.config/gtk-4.0" && 
ln -sf "${THEME_DIR}/gtk-4.0/assets" "${HOME}/.config/gtk-4.0/assets" &&
ln -sf "${THEME_DIR}/gtk-4.0/gtk.css" "${HOME}/.config/gtk-4.0/gtk.css" &&
ln -sf "${THEME_DIR}/gtk-4.0/gtk-dark.css" "${HOME}/.config/gtk-4.0/gtk-dark.css"
