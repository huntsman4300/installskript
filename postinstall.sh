
pacman -S opendoas
echo "permit :wheel" > /etc/doas.conf
pacman -S xorg-server plasma sddm-openrc konsole
rc-update add sddm
useradd -m -G wheel vanguard
passwd vanguard
