#!/bin/bash
sudo pacman -Rs --noconfirm altirra
rm -rf "${HOME}"/.altirra

makepkg -fsci --skipchecksums --noconfirm
namcap PKGBUILD
namcap *.pkg.tar.zst

sudo update-desktop-database
update-desktop-database ~/.local/share/applications
kbuildsycoca5
