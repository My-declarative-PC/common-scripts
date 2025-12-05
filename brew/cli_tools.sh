#!/bin/bash

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
brew install \
    age \
    atuin \
    bat \
    bat-extras \
    btop \
    chezmoi \
    clipboard \
    fastfetch \
    fd \
    fish \
    fzf \
    gifski \
    gping \
    gum \
    lazyssh \
    man-db \
    qrencode \
    ripgrep \
    sd \
    starship \
    tldr \
    yq \
    zellij

# git staff
brew install \
    delta \
    difftastic \
    gh \
    git \
    git-delta \
    lazygit \
    serie

# dev staff
brew install \
    direnv \
    helix \
    just \
    lazydocker \
    lazysql \
    lua-language-server \
    node \
    pnpm \
    shfmt \
    taplo \
    typos-lsp

# disk utils
brew install \
    7zip \
    cyme \
    duf \
    dust \
    dysk \
    eza \
    ouch \
    yazi \
    zoxide
