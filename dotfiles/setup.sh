#!/bin/bash

sudo git clone https://github.com/My-declarative-PC/dotfiles.git /etc/dotfiles
cd /etc/dotfiles

module="profile"
echo "$module"
sudo git submodule init          -- "$module"
sudo git submodule update --init -- "$module"
sudo ln -s /etc/dotfiles/$module/custom_init.sh    /etc/profile.d/custom_init.sh
sudo ln -s /etc/dotfiles/$module/custom_profile.sh /etc/profile.d/custom_profile.sh
source /etc/profile.d/custom_profile.sh

declare -a modules=(
  "bashrc"
  "btop"
  "dunst"
  "fastfetch"
  "fish"
  "git"
  "helix"
  "i3"
  "rofi"
  "starship"
  "wezterm"
  "zellij"
)

for module in "${modules[@]}"
do
  echo "$module"
  sudo git submodule init          --   "$module"
  sudo git submodule update --init --   "$module"
       stow --adopt --dotfiles -t ~     "$module"
  sudo bash -c "source /etc/profile.d/custom_profile.sh && stow --adopt --dotfiles -t /root '${module}'"
done

sudo git checkout -- .
sudo git clean -fd
sudo git submodule foreach 'git checkout -- . && git clean -fd'
