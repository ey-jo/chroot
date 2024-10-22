# execute this file on an arch live iso to fix failed updates

# keybaord layout (example to german)
loadkeys de-latin1

# wifi
iwctl station wlan0 scan
iwctl station wlan0 get-networks

echo "Name of Network?"
read name

iwctl station wlan0 connect $name


# mounting and chrooting
sudo cryptsetup open /dev/nvme0n1p2 crypto_LUKS
sudo mount /dev/mapper/crypto_LUKS /mnt
sudo mount /dev/nvme0n1p1 /mnt/efi
sudo arch-chroot /mnt
