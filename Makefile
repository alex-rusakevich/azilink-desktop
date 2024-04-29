.ONESHELL:
default: install

uninstall:
	rm -rf /usr/share/azilink-desktop
	rm -rf /usr/bin/azi

install: 
	mkdir -p /usr/share/azilink-desktop
	mkdir -p /usr/bin

	cp ./resources/azilink.ovpn /usr/share/azilink-desktop/azilink.ovpn
	cp ./resources/azilink-resolv.conf /usr/share/azilink-desktop/azilink-resolv.conf
	cp ./resources/azilink.apk /usr/share/azilink-desktop/azilink.apk

	cp ./azi /usr/bin/azi

run:
	/usr/bin/azi
