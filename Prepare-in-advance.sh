#!/bin/sh

# Install some tools
sudo pacman -S base-devel git

# Change mirrorlist
sudo mv /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak
sudo echo "Server = http://mirrors.tuna.tsinghua.edu.cn/archlinux/$repo/os/$arch" >> /etc/pacman.d/mirrorlist
sudo echo "Server = http://mirrors.ustc.edu.cn/archlinux/$repo/os/$arch" >> /etc/pacman.d/mirrorlist
sudo echo "Server = http://mirrors.163.com/archlinux/repo/os/$arch" >> /etc/pacman.d/mirrorlist

# Add archlinuxcn and multilib to pacman.conf
sudo cp /etc/pacman.conf /etc/pacman.conf.bak
sudo echo "[multilib]" >> /etc/pacman.conf
sudo echo "Include = /etc/pacman.d/mirrorlist" >> /etc/pacman.conf
sudo echo "[archlinuxcn]" >> /etc/pacman.conf
sudo echo "Server = https://mirrors.tuna.tsinghua.edu.cn/archlinuxcn/$arch" >> /etc/pacman.conf
sudo pacman -S archlinuxcn-keyring

# Sync packages databases
sudo pacman -Syy

# Install yay to install AUR packages
sudo pacman -S go
git clone https://aur.archlinux.org/yay.git /tmp/yay
makepkg -sip /tmp/yay/PKGBUILD

# Clean
sudo pacman -Scc
