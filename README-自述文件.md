<div align="center">

[![GitHub release (latest by date)](https://img.shields.io/github/v/release/M-L-P/grub2-brunch)](https://github.com/M-L-P/grub2-brunch/releases/latest)
[![GitHub all releases](https://img.shields.io/github/downloads/M-L-P/grub2-brunch/total)](https://github.com/M-L-P/grub2-brunch/releases)
[![GitHub Discussions](https://img.shields.io/github/discussions/M-L-P/grub2-brunch)](https://github.com/M-L-P/grub2-brunch/discussions)
[![GitHub Repo stars](https://img.shields.io/github/stars/M-L-P/grub2-brunch?style=social)](https://github.com/M-L-P/grub2-brunch/stargazers)

</div>

[English](README.md)|[简体中文](README-自述文件.md)|[繁體中文](README-繁體中文.md)|...
--|--|--|--

<h1 align="center">grub2-brunch</h1>

这个是用来双启动,甚至多启动 那些借助 [Brunch 框架](https://github.com/sebanc/brunch) 安装在 非 chromebook 的 chromeOS。
#### 文件结构树状图
<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-brunch/grub2-brunch.png">

-----------------------------------------------------------------------------------------------------------------------------------
## 💻️预览👀

<details>
<summary>🖱️点击展开查看🖱️</summary>

### 1024x768
<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-brunch/1k.png">
<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-brunch/1k-ter.png">
#### 1920x1080
<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-brunch/1080p.png">
<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-brunch/1080p-ter.png">
</details>

## 🧭指南⬇️
### 还没安装
<details>
<summary>🖱️点击展开查看🖱️</summary>

#### 使用 Brunch 框架
- 使用 [Brunch 框架](https://github.com/sebanc/brunch) 安装 chromeOS；
- 在 `ext4: /chromeOS` 中生成 `chromeOS.img` ，
- - `sudo bash chromeos-install.sh -src chromeos_filename.bin -dst .../[ext4_分区卷标]/chromeOS/chromeOS.img -s size`
#### 复制到 ESP 分区
- 复制文件夹 `zip: EFI/brunch` 到 `ESP: \EFI`；
</details>

### 已经安装好了
#### 选择 case
<details>
<summary>🖱️点击展开查看🖱️</summary>

##### case.cfg
- 用文本编辑器打开 `zip: EFI/brunch/grub/case.cfg` ；
<details>
<summary>🖱️点击展开查看🖱️</summary>

```
CASE=case1-default.cfg
#CASE=case2-custom.conf
#CASE=case3-menu.lst
```
这是一个转换器，
- `CASE` 前无 `#` 则启用；
- `CASE` 前有 `#` 则禁用；
- 只允许一个 "CASE" 的前面没有 `#`。
</details>

##### case 1
- 用文本编辑器打开 `zip: EFI/brunch/grub/case/case1-default.cfg`；
<details>
<summary>🖱️点击展开查看🖱️</summary>

`txt_grub=/chromeOS/chromeOS.img.grub.txt`

如果路径正确，就保持原样。
</details>

##### case 2
- 用文本编辑器打开 `zip: EFI/brunch/grub/case/case2-custom.conf`；
<details>
<summary>🖱️点击展开查看🖱️</summary>

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

若是其他路径，就认真填写路径；
</details>

##### case 3
- 用文本编辑器打开 `zip: EFI/brunch/grub/case/case3-menu.lst`；
<details>
<summary>🖱️点击展开查看🖱️</summary>

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

其他情况，认真填写代码。
</details>

</details>

#### 复制到 ESP 分区
- 复制文件夹 `zip: EFI/brunch` 到 `ESP: \EFI`；

## 📝FAQ❓️
### Back to Yours
这是 [Yours](https://github.com/M-L-P/Yours)。

## ⭐收藏🌟
如果你喜欢并且期待未来的更新，你可以点亮星星。💫<br/>
告诉你的朋友，你得到了个好东西。

## 🎉来源🎊
- 几乎所有文件来自 [Brunch Framework](https://github.com/sebanc/brunch)；
- Terminal box 来自 [Ventoy](https://github.com/ventoy/Ventoy) 的官方主题；
- ......