default: install

uninstall:
	rm -rf /usr/share/azilink-desktop
	rm -rf /usr/bin/azi

install: 
	mkdir -p $(DESTDIR)/usr/share/azilink-desktop

	cp ./azilink.ovpn $(DESTDIR)/usr/share/azilink-desktop/azilink.ovpn
	cp ./resolv.conf $(DESTDIR)/usr/share/azilink-desktop/resolv.conf

	cp ./azi $(DESTDIR)/usr/bin/azi

run:
	sudo /usr/bin/azi
