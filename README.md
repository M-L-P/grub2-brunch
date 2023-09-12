[grub2-brunch](https://github.com/M-L-P/grub2-brunch)|[grub2-fyde](https://github.com/M-L-P/grub2-fyde)|[grub2-androidx86](https://github.com/M-L-P/grub2-androidx86)
-|-|-

<div align="center">

[![GitHub release (latest by date)](https://img.shields.io/github/v/release/M-L-P/grub2-brunch)](https://github.com/M-L-P/grub2-brunch/releases/latest)
[![GitHub all releases](https://img.shields.io/github/downloads/M-L-P/grub2-brunch/total)](https://github.com/M-L-P/grub2-brunch/releases)
[![GitHub Workflow Status (with event)](https://img.shields.io/github/actions/workflow/status/M-L-P/grub2-brunch/%E6%9E%84%E5%BB%BA.yml)](https://github.com/M-L-P/grub2-brunch/actions/workflows/%E6%9E%84%E5%BB%BA.yml)
[![GitHub Discussions](https://img.shields.io/github/discussions/M-L-P/grub2-brunch)](https://github.com/M-L-P/grub2-brunch/discussions)
[![GitHub Repo stars](https://img.shields.io/github/stars/M-L-P/grub2-brunch?style=social)](https://github.com/M-L-P/grub2-brunch/stargazers)

</div>

[English](README.md)|[简体中文](README-自述文件.md)|[繁體中文](README-繁體中文.md)|...
--|--|--|--

<h1 align="center">grub2-brunch</h1>

It is used to dual-boot chromeOS, or even multi-boot, which is installed on no chromebook by using [Brunch Framework](https://github.com/sebanc/brunch).
#### Feature
- Set default `.img` and `.img.grub.txt` files through graphical interface;
- Using patched [grub](https://github.com/a1ive/grub) of [a1ive](https://github.com/a1ive), it totally supports secure boot，
  - It can load any unsigned kernel;
- Mouse and PS/2 trackpad;
- Multiple languages;
- Set the timeout on the graphical interface;

#### Global keys

Key|Function
-|-
[↑] [↓] | Navigation;
[Enter] | Enter the selected entry;
[ESC] | Returns to the previous menu list; (Exit from the main menu)
[Delete] | Show hidden menu;
[F5] | Refresh and re-enter grub2;
[F10] | Screenshot;

#### Mouse mapping

Operation | Function
-|-
Slide up | [↑]
Down | [↓]
Left click | [Enter]
Right click | [ESC]

#### File Tree
<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-brunch/grub2-brunch.png">

-----------------------------------------------------------------------------------------------------------------------------------
## 💻️Preview👀

<details>
<summary>🖱️Click to Unfold to see🖱️</summary>

### 1024x768
<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-brunch/English/English.gif">

#### 1920x1080
<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-brunch/English/1080p-menu.png">
<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-brunch/English/1080p-settings.png">
</details>

## 🧭Guide⬇️

### Copy in ESP
- Copy the folder `zip: EFI/brunch` into `ESP: \EFI`;
### Set default file (refer to gif animation)
- According to the prompt, select the item - [File]; (refer to gif animation)
- Enter the file manager of Grub2, and search for the `.img` and `.img.grub.txt` files, and set them as default; (refer to gif animation)

## 📝FAQ❓️

### Secure Boot
- You should use [Yours-UEFI](https://github.com/M-L-P/Yours-UEFI) (with patch) to load `grub2-brunch.efi` (unsigned).

### DinoChrome
[dino](https://github.com/franeklubi/dino) from [franeklubi](https://github.com/franeklubi)
- - need CSM mode enabled, it cannot run on only UEFI;

## ⭐Star🌟
If you like it and are looking forward to the coming update, you can star it.💫<br/>
Tell your friends that you have got a good stuff.

## 🎉Credit🎊
- Many files are adapted from [Brunch Framework](https://github.com/sebanc/brunch);
- [grub](https://github.com/a1ive/grub) from [a1ive](https://github.com/a1ive);
- The codes of grub2 file manager are adapted from [grub2-filemanager](https://github.com/a1ive/grub2-filemanager) of [a1ive](https://github.com/a1ive)；
- Terminal box is adapted from the official theme of [Ventoy](https://github.com/ventoy/Ventoy);
- Many icons from [flaticon](https://www.flaticon.com/)；
- Some icons from [iconfinder](https://www.iconfinder.com/)；
- [dino](https://github.com/franeklubi/dino) from [franeklubi](https://github.com/franeklubi);
- The .gif cartoon is taken by using Hyper-V and [Screen2Gif](https://github.com/NickeManarin/ScreenToGif);
- ......