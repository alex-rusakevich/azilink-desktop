.ONESHELL:
default: install

uninstall:
	rm -rf /usr/share/azilink-desktop
	rm -rf /usr/bin/azi

install: 
	mkdir -p /usr/share/azilink-desktop
	mkdir -p /usr/bin

	cp ./azilink.ovpn /usr/share/azilink-desktop/azilink.ovpn
	cp ./azilink-resolv.conf /usr/share/azilink-desktop/azilink-resolv.conf
	cp ./azilink.apk /usr/share/azilink-desktop/azilink.apk

	cp ./azi /usr/bin/azi

run:
	/usr/bin/azi
