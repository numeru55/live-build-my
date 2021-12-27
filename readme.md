# Overview

My template for debian live-build project.

# Specifications

- Japanese, gnome simple desktop.
- Includes my favorite apps with google chrome. ***So please consider not to provide iso to the others.*** Only for personal use.
- Added broadcom WiFi driver for my MacBook.
- My .emacs and setup script template is in `/home/user` .

# Usage

```bash
sudo apt update; sudo apt upgrade; sudo apt install wget live-build
make all
```

# Known bug

- Another USB stick can't be booted on my Mac, which is run "debian install" program using generated ISO. 
Then, install rEFInd to the USB stick. My mac will find the installed debian.

1. Burn ISO to USB media [A].
2. Boot using [A].
3. Using [A], install debian to other USB media [B].
4. My mac will not find [B] as bootable.
5. Install rEFInd to [B].
6. My mac will boot [B] disk through rEFInd. 

- Japanese input method is not tested.


# Tips

- To include file/folders for live environment, put to `config/includes.chroot/home/user`.

# Thanks to

- markdown editor

https://repositorymd.netlify.app/editor

- skel for live-build

https://github.com/homelith/debian-live-custom

- explanation

https://qiita.com/homelith/items/f30a1fbac89dc977c1ff


