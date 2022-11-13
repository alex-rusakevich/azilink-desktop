default: install

uninstall:
	rm -rf /usr/share/azilink-desktop
	rm -rf /usr/bin/azi

install: uninstall
	mkdir /usr/share/azilink-desktop

	cp ./azilink.ovpn /usr/share/azilink-desktop/azilink.ovpn
	cp ./resolv.conf /usr/share/azilink-desktop/resolv.conf

	cp ./azi /usr/bin/azi

run:
	sudo /usr/bin/azi
