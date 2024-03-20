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

這個是用來雙啟動,甚至多啟動 那些藉助 [Brunch 框架](https://github.com/sebanc/brunch) 安裝在 非 chromebook 的 chromeOS。
#### 特色
- 圖形介面設定預設的 `.img` 和 `.img.grub.txt` 檔案；
- 使用了 [a1ive](https://github.com/a1ive) 的打過補丁的 [grub](https://github.com/a1ive/grub)，全面支援安全啟動，
  - 可以啟動任意未簽名的核心；
- 支援滑鼠，支援 PS/2 觸控板；
- 支援多語言；
- 圖形介面設定倒計時的時間；

#### 全域性按鍵

按鍵|功能
-|-
【↑】【↓】|導航；
【Enter】|進入已選擇的選項；
【ESC】|返回上一個選單列表；（主選單處退出）
【Delete】|顯示隱藏選單；
【F5】|重新整理，重新進入 grub2；
【F10】|截圖；

#### 滑鼠對映

操作|功能
-|-
上滑|【↑】
下滑|【↓】
左鍵|【Enter】
右鍵|【ESC】

#### 檔案結構樹狀圖
<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-brunch/grub2-brunch.png">

-----------------------------------------------------------------------------------------------------------------------------------
## 💻️預覽👀

<details>
<summary>🖱️點選展開檢視🖱️</summary>

### 1024x768
<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-brunch/簡體中文/簡體中文.gif">

### 1920x1080
<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-brunch/簡體中文/1080p-menu.png">
<img src="https://raw.githubusercontent.com/M-L-P/.github/main/screenshots/grub2-brunch/簡體中文/1080p-settings.png">
</details>

## 🧭指南⬇️

### 複製到 ESP 分割槽
- 複製資料夾 `zip: EFI/brunch` 到 `ESP: \EFI`；
### 設定預設檔案（參考 gif 動圖）
- 根據提示，選擇【檔案】選項；（參考 gif 動圖）
- 進入 grub2 的 檔案管理器，尋找 `.img` 和 `.img.grub.txt` 檔案，並設定為預設；（參考 gif 動圖）

## 📝FAQ❓️
### 安全啟動
- 需要透過 [Yours-UEFI](https://github.com/M-L-P/Yours-UEFI) （有補丁）啟動 `grub2-brunch.efi`，因為該檔案未簽名；

### DinoChrome
[dino](https://github.com/franeklubi/dino) 來自 [franeklubi](https://github.com/franeklubi)
- - 需要開啟 CSM 模式，純 UEFI 無法執行。

## ⭐收藏🌟
如果你喜歡並且期待未來的更新，你可以點亮星星。💫<br/>
告訴你的朋友，你得到了個好東西。

## 🎉來源🎊
- 許多檔案改編自 [Brunch Framework](https://github.com/sebanc/brunch)；
- [grub](https://github.com/a1ive/grub) 來自 [a1ive](https://github.com/a1ive)；
- grub2 檔案管理器的程式碼改編自 [a1ive](https://github.com/a1ive) 的 [grub2-filemanager](https://github.com/a1ive/grub2-filemanager)；
- Terminal box 來自 [Ventoy](https://github.com/ventoy/Ventoy) 的官方主題；
- 許多圖示來自 [flaticon](https://www.flaticon.com/)；
- 一些圖示來自 [iconfinder](https://www.iconfinder.com/)；
- [dino](https://github.com/franeklubi/dino) 來自 [franeklubi](https://github.com/franeklubi)；
- .gif 的動態截圖是使用 [Screen2Gif](https://github.com/NickeManarin/ScreenToGif) 對 hyper-V 擷取的；
- ……
