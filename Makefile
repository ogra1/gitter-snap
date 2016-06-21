# -*- Mode:Makefile; indent-tabs-mode:t; tab-width:4 -*-

all: download

install:
	mv tmp/opt/Gitter/linux64/Gitter $(DESTDIR)/../../../
	mv tmp/opt/Gitter/linux64/icudtl.dat $(DESTDIR)/../../../
	mv tmp/opt/Gitter/linux64/libffmpegsumo.so $(DESTDIR)/../../../
	mv tmp/opt/Gitter/linux64/locales $(DESTDIR)/../../../
	mv tmp/opt/Gitter/linux64/nw.pak $(DESTDIR)/../../../
	mv tmp/opt/Gitter/linux64/logo.png $(DESTDIR)/../../../setup/gui/icon.png
	rm -rf *.deb
	rm -rf tmp

download:
	/usr/bin/wget http://update.gitter.im/linux64/gitter_3.0.3_amd64.deb
	/usr/bin/dpkg -x gitter_3.0.3_amd64.deb ./tmp

clean:
	rm -f Gitter
	rm -f icudtl.dat
	rm -f libffmpegsumo.so
	rm -rf locales
	rm -f nw.pak
