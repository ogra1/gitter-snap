# -*- Mode:Makefile; indent-tabs-mode:t; tab-width:4 -*-

TMPDIR= ./tmp
OPT = $(TMPDIR)/opt/Gitter/linux64
#OUTDIR = $(DESTDIR)/../../../
OUTDIR = ../src/
VERSION = $(shell sed -n -e "s/-.*$$//; s/^[^=]*version[^:]*:[[:blank:]]*//p" ../src/snapcraft.yaml)
URL = http://update.gitter.im/linux64

all: clean download

install:
	mv $(OPT)/Gitter $(OUTDIR)
	mv $(OPT)/icudtl.dat $(OUTDIR)
	mv $(OPT)/libffmpegsumo.so $(OUTDIR)
	mv $(OPT)/locales $(OUTDIR)
	mv $(OPT)/nw.pak $(OUTDIR)
	mv $(OPT)/logo.png $(OUTDIR)setup/gui/icon.png
	rm -rf *.deb
	rm -rf $(TMPDIR)

download:
	/usr/bin/wget $(URL)/gitter_$(VERSION)_amd64.deb
	/usr/bin/dpkg -x gitter_$(VERSION)_amd64.deb $(TMPDIR)

clean:
	rm -f Gitter
	rm -f icudtl.dat
	rm -f libffmpegsumo.so
	rm -rf locales
	rm -f nw.pak
