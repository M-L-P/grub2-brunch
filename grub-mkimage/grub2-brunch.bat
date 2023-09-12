@echo off
cd /d "%~dp0"

set /p boot= < ..\mod_list\boot.txt
set /p device= < ..\mod_list\device.txt
set /p graphical= < ..\mod_list\graphical.txt
set /p shell= < ..\mod_list\shell.txt
set /p storage= < ..\mod_list\storage.txt
set /p terminal= < ..\mod_list\terminal.txt
set /p time= < ..\mod_list\time.txt
set /p var= < ..\mod_list\var.txt
set /p grubfm= < ..\mod_list\grubfm.txt
..\grub-mkimage.exe ^
-m grub2-fyde.xz ^
-d ..\x86_64-efi ^
-c grub2-fyde.cfg ^
-p "(memdisk)/grub" ^
-o grub2-fyde.efi ^
-O x86_64-efi ^
%boot% ^
%device% ^
%graphical% ^
%shell% ^
%storage% ^
%terminal% ^
%var% ^
%grubfm% ^
configfile
