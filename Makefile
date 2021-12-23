all: build

config: clean
	lb config
	wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub > config/archives/google.key.chroot
	cp config/archives/google.key.chroot config/archives/google.key.binary

build: clean config
	sudo lb build

clean:
	sudo lb clean
	rm config/archives/google.key.*

distclean: clean
	sudo lb clean --purge
	sudo rm -f *.iso *.img *.list *.packages *.buildlog *.md5sum

