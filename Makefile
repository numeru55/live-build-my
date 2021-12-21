build:
	cd ..
	rm -rf live-build-work
	mkdir live-build-work
	cp -R live-build-my/* live-build-work
	cd live-build-work
	cd debian
	sudo lb build
	cd ../ubuntu
	sudo lb build
	cd ../../live-build-my
