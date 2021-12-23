put to config/archives/live.list.chroot for live build time
cp live.list.binary for live system

```
deb http://debian-live.alioth.debian.org/ sid-snapshots main contrib non-free
```

refer to https://live-team.pages.debian.net/live-manual/html/live-manual/customizing-package-installation.en.html

```
deb http://dl.google.com/linux/chrome/deb/ stable main
```

manual saids...

'You should also put the ASCII-armored GPG key used to sign the repository 
into config/archives/your-repository.key.{binary,chroot} files.

google key will be get:

```
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
```

refer to 

https://www.karelie.net/install-chrome-debian-9/
http://yakushi.shinshu-u.ac.jp/robotics/?DebianLive/Build-HOWTO#qe397947
https://arpinux-developpez-com.translate.goog/construire-un-live-debian/?_x_tr_sl=fr&_x_tr_tl=en&_x_tr_hl=ja&_x_tr_pto=sc
https://forums.kali.org/showthread.php?43038-Kali-linux-with-a-custom-TDE-Trinity-Desktop
