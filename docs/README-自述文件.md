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

这个是用来双启动,甚至多启动 那些借助 [Brunch 框架](https://github.com/sebanc/brunch) 安装在 非 chromebook 的 chromeOS。
#### 特色
- 图形界面设置默认的 `.img` 和 `.img.grub.txt` 文件；
- 使用了 [a1ive](https://github.com/a1ive) 的打过补丁的 [grub](https://github.com/a1ive/grub)，全面支持安全启动，
  - 可以启动任意未签名的内核；
- 支持鼠标，支持 PS/2 触控板；
- 支持多语言；
- 图形界面设置倒计时的时间；

#### 全局按键

按键|功能
-|-
【↑】【↓】|导航；
【Enter】|进入已选择的选项；
【ESC】|返回上一个菜单列表；（主菜单处退出）
【Delete】|显示隐藏菜单；
【F5】|刷新，重新进入 grub2；
【F10】|截屏；

#### 鼠标映射

操作|功能
-|-
上滑|【↑】
下滑|【↓】
左键|【Enter】
右键|【ESC】

#### 文件结构树状图
<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-brunch/grub2-brunch.png">

-----------------------------------------------------------------------------------------------------------------------------------
## 💻️预览👀

<details>
<summary>🖱️点击展开查看🖱️</summary>

### 1024x768
<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-brunch/简体中文/简体中文.gif">

#### 1920x1080
<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-brunch/简体中文/1080p-menu.png">
<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-brunch/简体中文/1080p-settings.png">
</details>

## 🧭指南⬇️

### 复制到 ESP 分区
- 复制文件夹 `zip: EFI/brunch` 到 `ESP: \EFI`；
### 设置默认文件（参考 gif 动图）
- 根据提示，选择【文件】选项；（参考 gif 动图）
- 进入 grub2 的 文件管理器，寻找 `.img` 和 `.img.grub.txt` 文件，并设置为默认；（参考 gif 动图）

## 📝FAQ❓️
### 安全启动
- 需要通过 [Yours-UEFI](https://github.com/M-L-P/Yours-UEFI) （有补丁）启动 `grub2-brunch.efi`，因为该文件未签名；

### DinoChrome
[dino](https://github.com/franeklubi/dino) 来自 [franeklubi](https://github.com/franeklubi)
- - 需要开启 CSM 模式，纯 UEFI 无法运行。

## ⭐收藏🌟
如果你喜欢并且期待未来的更新，你可以点亮星星。💫<br/>
告诉你的朋友，你得到了个好东西。

## 🎉来源🎊
- 许多文件改编自 [Brunch Framework](https://github.com/sebanc/brunch)；
- [grub](https://github.com/a1ive/grub) 来自 [a1ive](https://github.com/a1ive)；
- grub2 文件管理器的代码改编自 [a1ive](https://github.com/a1ive) 的 [grub2-filemanager](https://github.com/a1ive/grub2-filemanager)；
- Terminal box 来自 [Ventoy](https://github.com/ventoy/Ventoy) 的官方主题；
- 许多图标来自 [flaticon](https://www.flaticon.com/)；
- 一些图标来自 [iconfinder](https://www.iconfinder.com/)；
- [dino](https://github.com/franeklubi/dino) 来自 [franeklubi](https://github.com/franeklubi)；
- .gif 的动态截图是使用 [Screen2Gif](https://github.com/NickeManarin/ScreenToGif) 对 hyper-V 截取的；
- ……