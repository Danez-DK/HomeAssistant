# Made by @DanezDK (alex@juuldormann.dk)
echo "Get lastest HAOS download URL:"
HAOS_DL_URL=$(curl -s https://api.github.com/repos/home-assistant/operating-system/releases/latest \
	| grep browser_download_url \
	| grep generic-x86 \
	| grep img.xz \
	| cut -d '"' -f 4)
echo $HAOS_DL_URL

HAOS_FILENAME=$(basename "$HAOS_DL_URL")
echo "Downloading..."
curl -Lo "$HAOS_FILENAME" "$HAOS_DL_URL"

# Change sda to the device name of the harddisk you want to write HAOS to.
xzcat "$HAOS_FILENAME" | sudo dd of=/dev/sda

# If you bios dosen't recognice the drive, when booting, try the following.
# sudo efibootmgr --create --disk /dev/sda --part 1 --label "HAOS" --loader "\EFI\BOOT\bootx64.eif"