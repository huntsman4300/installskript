fdisk /dev/nvme0n1
mkfs.fat -F32 /dev/nvme0n1p1
mkfs.ext4 /dev/nvme0n1p2
mount /dev/nvme0n1p2 /mnt
mkdir /mnt/boot
mount /dev/nvme0n1p1 /mnt/boot
basestrap /mnt base linux openrc linux-firmware
fstabgen -U /mnt >> /mnt/etc/fstab
artix-chroot /mnt ./install2.sh
umount -R /mnt
reboot

