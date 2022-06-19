sudo pacman -Rs --noconfirm altirra
rm -rf "${HOME}"/.altirra
makepkg -fsci --skipchecksums --noconfirm
sudo update-desktop-database
update-desktop-database ~/.local/share/applications
