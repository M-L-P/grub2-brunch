find ./grub ./games | cpio -o -H newc | xz -9 -e > ./grub2-brunch.xz
