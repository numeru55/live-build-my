#!/bin/sh

# wget https://sourceforge.net/projects/refind/files/0.13.2/refind-bin-0.13.2.zip/download -O refind-bin-0.13.2.zip
# unzip refind-bin-0.13.2.zip

EFI=/dev/sdc1

lsblk

echo "===== will install rEFInd to... ====="

echo "   EFI:" $EFI

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

sudo cp -r refind-bin-*/refind/* efi/EFI/BOOT/
sudo mv efi/EFI/BOOT/refind_x64.efi efi/EFI/BOOT/bootx64.efi 
sudo cp my_refind.conf efi/EFI/BOOT/refind.conf

sudo umount efi

echo "done."
