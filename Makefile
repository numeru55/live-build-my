build:
	rm -rf ../live-build-work
	mkdir ../live-build-work
	cp -r ../live-build-my/* ../live-build-work
	cd ../live-build-work/debian && sudo lb build
	cd ../live-build-work/ubuntu && sudo lb build
