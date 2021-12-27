all: build

config: clean
	lb config
	wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub > config/archives/google.key.chroot
	cp config/archives/google.key.chroot config/archives/google.key.binary
	wget https://sourceforge.net/projects/refind/files/0.13.2/refind-bin-0.13.2.zip/download -O refind-bin-0.13.2.zip
	unzip refind-bin-0.13.2.zip -d config/includes.chroot/home/user/
	rm refind-bin-0.13.2.zip

build: clean config
	sudo lb build

clean:
	sudo lb clean
	rm -f config/archives/google.key.*
	rm -rf config/includes.chroot/home/user/refind*

distclean: clean
	sudo lb clean --purge
	sudo rm -f *.iso *.img *.list *.packages *.buildlog *.md5sum

