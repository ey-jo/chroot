# chroot
Commands to chroot a arch system encrypted with LUKS.
First boot from a live usb. Then connect to the internet and run the following commands

the use of pacman is recommended!!

## Commands
All
```bash
sudo cryptsetup open /dev/nvme0n1p2 crypto_LUKS
sudo mount /dev/mapper/crypto_LUKS /mnt
sudo mount /dev/nvme0n1p1 /mnt/efi
sudo arch-chroot /mnt
sudo pacman -Syu linux-headers linux
```

Display drives
```bash
sudo lsblk -f
```

Decrypt
```bash
sudo cryptsetup open /dev/nvme0n1p2 crypto_LUKS
```

Mount drive
```bash
sudo mount /dev/mapper/crypto_LUKS /mnt
sudo mount /dev/nvme0n1p1 /mnt/efi
```

Chroot into
```bash
sudo arch-chroot /mnt
```

update and reinstall linux and headers
```bash
sudo pacman -Syu linux-headers linux
```
