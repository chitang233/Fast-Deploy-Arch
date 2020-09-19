#!/bin/sh

# Install some tools
pacman -S base-devel git

# Change mirrorlist
mv /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak
echo "Server = http://mirrors.tuna.tsinghua.edu.cn/archlinux/$repo/os/$arch" >> /etc/pacman.d/mirrorlist
echo "Server = http://mirrors.ustc.edu.cn/archlinux/$repo/os/$arch" >> /etc/pacman.d/mirrorlist
echo "Server = http://mirrors.163.com/archlinux/repo/os/$arch" >> /etc/pacman.d/mirrorlist

# Add archlinuxcn and multilib to pacman.conf
cp /etc/pacman.conf /etc/pacman.conf.bak
echo "[multilib]" >> /etc/pacman.conf
echo "Include = /etc/pacman.d/mirrorlist" >> /etc/pacman.conf
echo "[archlinuxcn]" >> /etc/pacman.conf
echo "Server = https://mirrors.tuna.tsinghua.edu.cn/archlinuxcn/$arch" >> /etc/pacman.conf

# Sync packages databases
pacman -Syy

# Install yay to install AUR packages
pacman -S go
git clone https://aur.archlinux.org/yay.git /tmp/yay
makepkg -sip /tmp/yay/PKGBUILD

# Clean
pacman -Scc
