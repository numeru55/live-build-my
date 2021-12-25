# Overview

My template for debian live-build project.

# Specifications

- Japanese, gnome simple desktop.

- Includes my favorite apps with google chrome. ***So please consider not to provide iso to the others.*** Only for personal use.

- My .emacs and setup script template is in `/home/user` .
  
- Manual login at gdm: user, live.

# Usage

```bash
sudo apt update; sudo apt upgrade; sudo apt install wget
make all
```

# Tips

- To include file/folders for live environment, put to `config/includes.chroot/home/user`.

# Thanks to

- markdown editor

https://repositorymd.netlify.app/editor

- skel for live-build

https://github.com/homelith/debian-live-custom

- explanation

https://qiita.com/homelith/items/f30a1fbac89dc977c1ff


