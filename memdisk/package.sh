find ./grub ./games | cpio -o -H newc | xz -9 -e > ./memdisk.xz
