#!/usr/bin/bash

echo "Prepare repositories"
sudo dnf copr enable dejan/lazygit
sudo dnf copr enable che/nerd-fonts

echo "Install RPM packages"
sudo dnf install \
    fish \
    git-credential-libsecret \
    google-chrome-stable \
    lazygit \
    nerd-fonts \
    nextcloud-client \
    pnpm \
    remmina \
    steam \
    uv

echo "Install Flatpak packages"
flatpak install flathub \
    be.alexandervanhee.gradia \
    com.github.IsmaelMartinez.teams_for_linux \
    com.mattermost.Desktop \
    com.mattjakeman.ExtensionManager \
    io.podman_desktop.PodmanDesktop \
    md.obsidian.Obsidian \
    org.telegram.desktop

echo "Install uv tool packages"
uv tool install copier
uv tool install go-task-bin
