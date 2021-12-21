build_debian:
	rm -rf ../live-build-work-debian
	mkdir ../live-build-work-debian
	cp -r ../live-build-my/debian/* ../live-build-work-debian
	cd ../live-build-work-debian && sudo lb build
