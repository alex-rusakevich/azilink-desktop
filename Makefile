.ONESHELL:
default: install

uninstall:
	rm -rf $(DESTDIR)/usr/share/azilink-desktop
	rm -rf $(DESTDIR)/usr/bin/azi

install: 
	mkdir -p $(DESTDIR)/usr/share/azilink-desktop
	mkdir -p $(DESTDIR)/usr/bin

	cp ./azilink.ovpn $(DESTDIR)/usr/share/azilink-desktop/azilink.ovpn
	cp ./resolv.conf $(DESTDIR)/usr/share/azilink-desktop/resolv.conf
	cp ./azilink.apk $(DESTDIR)/usr/share/azilink-desktop/azilink.apk

	cp ./azi $(DESTDIR)/usr/bin/azi

run:
	/usr/bin/azi
