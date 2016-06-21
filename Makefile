all: download

clean:
	rm -f Gitter
	rm -f icudtl.dat
	rm -f libffmpegsumo.so
	rm -rf locales
	rm -f nw.pak

download:
	./download.sh
