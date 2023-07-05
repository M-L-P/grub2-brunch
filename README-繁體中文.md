<div align="center">

[![GitHub release (latest by date)](https://img.shields.io/github/v/release/M-L-P/grub2-brunch)](https://github.com/M-L-P/grub2-brunch/releases/latest)
[![GitHub all releases](https://img.shields.io/github/downloads/M-L-P/grub2-brunch/total)](https://github.com/M-L-P/grub2-brunch/releases)
[![GitHub Discussions](https://img.shields.io/github/discussions/M-L-P/grub2-brunch)](https://github.com/M-L-P/grub2-brunch/discussions)
[![GitHub Repo stars](https://img.shields.io/github/stars/M-L-P/grub2-brunch?style=social)](https://github.com/M-L-P/grub2-brunch/stargazers)

</div>

[English](README.md)|[简体中文](README-自述文件.md)|[繁體中文](README-繁體中文.md)|...
--|--|--|--

<h1 align="center">grub2-brunch</h1>

這個是用來雙啟動,甚至多啟動 那些借助 [Brunch 框架](https://github.com/sebanc/brunch) 安裝在 非 chromebook 的 chromeOS。
#### 文件結構樹狀圖
<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-brunch/grub2-brunch.png">

-----------------------------------------------------------------------------------------------------------------------------------
## 💻️預覽👀

<details>
<summary>🖱️點擊展開查看🖱️</summary>

### 1024x768
<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-brunch/1k.png">
<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-brunch/1k-ter.png">

#### 1920x1080
<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-brunch/1080p.png">
<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-brunch/1080p-ter.png">
</details>

## 🧭指南⬇️
### 還沒安裝
<details>
<summary>🖱️點擊展開查看🖱️</summary>

#### 使用 Brunch 框架
- 使用 [Brunch 框架](https://github.com/sebanc/brunch) 安裝 chromeOS；
- 在 `ext4: /chromeOS` 中生成 `chromeOS.img` ，
- - `sudo bash chromeos-install.sh -src chromeos_filename.bin -dst .../[ext4_分區卷標]/chromeOS/chromeOS.img -s size`
#### 復製到 ESP 分區
- 復製文件夾 `zip: EFI/brunch` 到 `ESP: \EFI`；
</details>

### 已經安裝好了
#### 選擇 case
<details>
<summary>🖱️點擊展開查看🖱️</summary>

##### case.cfg
- 用文本編輯器打開 `zip: EFI/brunch/grub/case.cfg` ；
<details>
<summary>🖱️點擊展開查看🖱️</summary>

```
CASE=case1-default.cfg
#CASE=case2-custom.conf
#CASE=case3-menu.lst
```
這是一個轉換器，
- `CASE` 前無 `#` 則啟用；
- `CASE` 前有 `#` 則禁用；
- 只允許一個 "CASE" 的前面沒有 `#`。
</details>

##### case 1
- 用文本編輯器打開 `zip: EFI/brunch/grub/case/case1-default.cfg`；
<details>
<summary>🖱️點擊展開查看🖱️</summary>

`txt_grub=/chromeOS/chromeOS.img.grub.txt`

如果路徑正確，就保持原樣。
</details>

##### case 2
- 用文本編輯器打開 `zip: EFI/brunch/grub/case/case2-custom.conf`；
<details>
<summary>🖱️點擊展開查看🖱️</summary>

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

若是其他路徑，就認真填寫路徑；
</details>

##### case 3
- 用文本編輯器打開 `zip: EFI/brunch/grub/case/case3-menu.lst`；
<details>
<summary>🖱️點擊展開查看🖱️</summary>

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

其他情況，認真填寫代碼。
</details>

</details>

#### 復製到 ESP 分區
- 復製文件夾 `zip: EFI/brunch` 到 `ESP: \EFI`；

## 📝FAQ❓️
### DinoChrome
[dino](https://github.com/franeklubi/dino) 來自 [franeklubi](https://github.com/franeklubi)
- - 需要開啟 CSM 模式，純 UEFI 無法運行。

## ⭐收藏🌟
如果你喜歡並且期待未來的更新，你可以點亮星星。💫<br/>
告訴你的朋友，你得到了個好東西。

## 🎉來源🎊
- 幾乎所有文件來自 [Brunch Framework](https://github.com/sebanc/brunch)；
- Terminal box 來自 [Ventoy](https://github.com/ventoy/Ventoy) 的官方主題；
- [dino](https://github.com/franeklubi/dino) 來自 [franeklubi](https://github.com/franeklubi)；
- ……