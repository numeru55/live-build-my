# Overview

My template for debian live-build project.

# Specifications

- Japanese, gnome simple desktop.
- Includes my favorite apps with google chrome. ***So please consider not to provide iso to the others.*** Only for personal use.
- Added broadcom WiFi driver for my MacBook.
- My .emacs and setup script template is in `/home/user` .

- rEFInd-bin and my scripts to fix EFI.

- できるだけ簡単な手順で日本語入力できるようにする。

# Create ISO and use as live debian USB media

```bash
sudo apt update; sudo apt upgrade; sudo apt install wget live-build
make all
```

Burn or boot generated ISO.

# Install Debian to other USB media

Tested only for my Intel Mac.

1. Burn ISO to USB media [A].
2. Boot using [A].
3. Connect to internet. Debian installer seems requires.
4. Using [A], install debian to other USB media [B].
5. Run the scripts at `/home/user` in [A]. EFI fixed, or installed rEFInd.

These scripts are very dangerous. Please double or triple check before excuting.

# 日本語入力について

`ibus-mozc`を指定していますので，Mac環境では[command]+[space]を何度か押してmozcにして日本語入力してください。

# Thanks to

- rEFInd

https://www.rodsbooks.com/refind/index.html

- markdown editor

https://repositorymd.netlify.app/editor

- skel for live-build

https://github.com/homelith/debian-live-custom

- explanation

https://qiita.com/homelith/items/f30a1fbac89dc977c1ff

- Fixing UEFI

https://cpoint-lab.co.jp/article/202001/13627/

- live-build manual

https://live-team.pages.debian.net/live-manual/html/live-manual/examples.ja.html
