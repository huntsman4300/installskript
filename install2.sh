ln -sf /usr/share/zoneinfo/US/Central /etc/localtime
hwclock --systohc
pacman -S vim
vim /etc/locale.gen
locale-gen
vim /etc/locale.conf
vim /etc/hostname
vim /etc/conf.d/hostname
vim /etc/hosts
pacman -S efibootmgr grub networkmanager networkmanager-openrc intel-ucode neofetch
rc-update add NetworkManager default
mkinitcpio -P 
passwd
grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=Vanguard
grub-mkconfig -o /boot/grub/grub.cfg
exit
