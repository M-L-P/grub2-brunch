<div align="center">

[![GitHub release (latest by date)](https://img.shields.io/github/v/release/M-L-P/grub2-brunch)](https://github.com/M-L-P/grub2-brunch/releases/latest)
[![GitHub all releases](https://img.shields.io/github/downloads/M-L-P/grub2-brunch/total)](https://github.com/M-L-P/grub2-brunch/releases)
[![GitHub Discussions](https://img.shields.io/github/discussions/M-L-P/grub2-brunch)](https://github.com/M-L-P/grub2-brunch/discussions)
[![GitHub Repo stars](https://img.shields.io/github/stars/M-L-P/grub2-brunch?style=social)](https://github.com/M-L-P/grub2-brunch/stargazers)

</div>

[English](README.md)|[简体中文](README-自述文件.md)|[繁體中文](README-繁體中文.md)|...
--|--|--|--

<h1 align="center">grub2-brunch</h1>

It is used to dual-boot chromeOS, or even multi-boot, which is installed on no chromebook by using [Brunch Framework](https://github.com/sebanc/brunch).
#### File Tree
<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-brunch/grub2-brunch.png">

-----------------------------------------------------------------------------------------------------------------------------------
## 💻️Preview👀

<details>
<summary>🖱️Click to Unfold to see🖱️</summary>

### 1024x768
<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-brunch/1k.png">
<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-brunch/1k-ter.png">

#### 1920x1080
<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-brunch/1080p.png">
<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-brunch/1080p-ter.png">
</details>

## 🧭Guide⬇️
### Not installed yet
<details>
<summary>🖱️Click to Unfold to see🖱️</summary>

#### Using Brunch Framework
- Install chromeOS by using [Brunch Framework](https://github.com/sebanc/brunch);
- Create `chromeOS.img` into `ext4: /chromeOS`,
- - `sudo bash chromeos-install.sh -src chromeos_filename.bin -dst .../[ext4_partition_label]/chromeOS/chromeOS.img -s size`
#### Copy in ESP
- Copy the folder `zip: EFI/brunch` into `ESP: \EFI`;
</details>

### Already installed
#### Select a Case.
<details>
<summary>🖱️Click to Unfold to see🖱️</summary>

##### case.cfg
- Open `zip: EFI/brunch/case.cfg` to edit;
<details>
<summary>🖱️Click to Unfold to see🖱️</summary>

```
CASE=case1-default.cfg
#CASE=case2-custom.conf
#CASE=case3-menu.lst
```
This is a switch.
- Switch on with `#` deleted before `CASE`;
- Switch off with `#` added before `CASE`;
- Only one `CASE` can be without `#`.
</details>

##### case 1
- Open `zip: EFI/brunch/grub/case/case1-default.cfg` to edit;
<details>
<summary>🖱️Click to Unfold to see🖱️</summary>

`txt_grub=/chromeOS/chromeOS.img.grub.txt`

If it is here, do nothing.
</details>

##### case 2
- Open `zip: EFI/brunch/grub/case/case2-custom.conf` to edit;
<details>
<summary>🖱️Click to Unfold to see🖱️</summary>

```
### For example,
#####
#txt_grub=/chromeos.img.grub.txt
#txt_grub=/Users/username/brunch/chromeos.img.grub.txt
#txt_grub=/brunch/chromeos.img.grub.txt
```
```
txt_grub=//.img.grub.txt
```

If it is somewhere else, carefully confirm the path.
</details>

##### case 3
- Open `zip: EFI/brunch/grub/case/case3-menu.lst` to edit;
<details>
<summary>🖱️Click to Unfold to see🖱️</summary>

```
### Copy all text from the file, "img_name.img.grub.txt",
### Paste here below.
### For examplle,
```
```
menuentry "chromeOS on Brunch" --class "brunch" {
	img_path=//.img
	img_uuid=
	search --no-floppy --set=root --file $img_path
	loopback loop $img_path
	source (loop,12)/efi/boot/settings.cfg
	if [ -z $verbose ] -o [ $verbose -eq 0 ]; then
		linux (loop,7)$kernel boot=local noresume noswap loglevel=7 options=$options chromeos_bootsplash=$chromeos_bootsplash $cmdline_params \
			cros_secure cros_debug img_uuid=$img_uuid img_path=$img_path \
			console= vt.global_cursor_default=0 brunch_bootsplash=$brunch_bootsplash quiet
	else
		linux (loop,7)$kernel boot=local noresume noswap loglevel=7 options=$options chromeos_bootsplash=$chromeos_bootsplash $cmdline_params \
			cros_secure cros_debug img_uuid=$img_uuid img_path=$img_path
	fi
	initrd (loop,7)/lib/firmware/amd-ucode.img (loop,7)/lib/firmware/intel-ucode.img (loop,7)/initramfs.img
}
```
```
menuentry "Brunch Settings" --class "brunch-settings" {
	img_path=//.img
	img_uuid=
	search --no-floppy --set=root --file $img_path
	loopback loop $img_path
	source (loop,12)/efi/boot/settings.cfg
	linux (loop,7)/kernel boot=local noresume noswap loglevel=7 options= chromeos_bootsplash= edit_brunch_config=1 \
		cros_secure cros_debug img_uuid=$img_uuid img_path=$img_path
	initrd (loop,7)/lib/firmware/amd-ucode.img (loop,7)/lib/firmware/intel-ucode.img (loop,7)/initramfs.img
}
```

Else, carefully confirm the code.
</details>

</details>

#### Copy in ESP
- Copy the folder `zip: EFI/brunch` into `ESP: \EFI`;

## 📝FAQ❓️
### DinoChrome
[dino](https://github.com/franeklubi/dino) from [franeklubi](https://github.com/franeklubi)
- - need CSM mode enabled, it cannot run on only UEFI;

## ⭐Star🌟
If you like it and are looking forward to the coming update, you can star it.💫<br/>
Tell your friends that you have got a good stuff.

## 🎉Credit🎊
- Almost all things come from [Brunch Framework](https://github.com/sebanc/brunch);
- Terminal box is adapted from the official theme of [Ventoy](https://github.com/ventoy/Ventoy);
- [dino](https://github.com/franeklubi/dino) from [franeklubi](https://github.com/franeklubi);
- ......