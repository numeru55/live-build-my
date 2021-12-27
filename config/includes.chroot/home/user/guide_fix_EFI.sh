#!/bin/sh

set -e

EFI=/dev/sdc1
ROOT=/dev/sdc2

lsblk

echo "===== will fix EFI to... ====="

echo "EFI:" $EFI
echo "root:" $ROOT

echo "====="

read -p "[yes]+[return] to go:" keyboard

if [ "$keyboard" != "yes" ]; then
    echo "skipped."
    exit 1;
fi

echo "Proceeding..."

mkdir efi
sudo mount $EFI efi
sudo mkdir -p efi/EFI/BOOT

# sudo apt install grub-efi-amd64-bin
grub-mkimage -d /usr/lib/grub/x86_64-efi/ -o BOOTx64.EFI -O x86_64-efi -p "" part_gpt part_msdos ntfs ntfscomp hfsplus fat ext2 normal chain boot configfile linux multiboot
sudo cp BOOTx64.EFI efi/EFI/BOOT/
sudo cp -r /usr/lib/grub/x86_64-efi efi/EFI/BOOT/


mkdir usb-debian
sudo mount $ROOT usb-debian
sudo cp -R usb-debian/boot/grub/* efi/EFI/BOOT/

sudo umount efi
sudo umount usb-debian

echo "done."
