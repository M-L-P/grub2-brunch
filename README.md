<div align="center">

[![GitHub release (latest by date)](https://img.shields.io/github/v/release/M-L-P/grub2-brunch)](https://github.com/M-L-P/grub2-brunch/releases/latest)
[![GitHub all releases](https://img.shields.io/github/downloads/M-L-P/grub2-brunch/total)](https://github.com/M-L-P/grub2-brunch/releases)
[![GitHub Discussions](https://img.shields.io/github/discussions/M-L-P/grub2-brunch)](https://github.com/M-L-P/grub2-brunch/discussions)
[![GitHub Repo stars](https://img.shields.io/github/stars/M-L-P/grub2-brunch?style=social)](https://github.com/M-L-P/grub2-brunch/stargazers)

</div>

[English](README.md)|[简体中文](README-自述文件.md)|[繁體中文](README-繁體中文.md)|...
--|--|--|--

<h1 align="center">brunch-grub2</h1>

It is used to dual-boot chromeOS, or even multi-boot, which is installed on no chromebook by using [Brunch Framework](https://github.com/sebanc/brunch).
#### File Tree
<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/brunch-grub2.png">

-----------------------------------------------------------------------------------------------------------------------------------
## 💻️Preview👀

<details>
<summary>🖱️Click to Unfold to see🖱️</summary>

![image](https://github.com/M-L-P/brunch-grub2/assets/69227436/ca96e382-f51a-4b53-bd83-b75cdfa363c8)<br/>
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

##### case.txt
- Open `zip: EFI/brunch/case.txt` to edit;
<details>
<summary>🖱️Click to Unfold to see🖱️</summary>

```
CASE=case_1.txt
#CASE=case_2.txt
#CASE=case_3.txt
```
This is a switch.
- Switch on with `#` deleted before `CASE`;
- Switch off with `#` added before `CASE`;
- Only one `CASE` can be without `#`.
</details>

##### case 1
- Open `zip: EFI/brunch/case/case_1.txt` to edit;
<details>
<summary>🖱️Click to Unfold to see🖱️</summary>

`txt_grub=/chromeOS/chromeOS.img.grub.txt`

If it is here, do nothing.
</details>

##### case 2
- Open `zip: EFI/brunch/case/case_2.txt` to edit;
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
- Open `zip: EFI/brunch/case/case_3.txt` to edit;
<details>
<summary>🖱️Click to Unfold to see🖱️</summary>

```
### Copy all text in the file, "img_name.img.grub.txt",
### Paste here below.
### For examplle,
```
```
menuentry "chromeOS" --class "brunch" {
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
menuentry "chromeOS (settings)" --class "brunch-settings" {
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
### Back to Yours
This is [Yours](https://github.com/M-L-P/Yours).

## ⭐Star🌟
If you like it and are looking forward to the coming update, you can star it.💫

## 🎉Credit🎊
- Almost all things come from [Brunch Framework](https://github.com/sebanc/brunch);
