#! /bin/sh

wget http://update.gitter.im/linux64/gitter_3.0.3_amd64.deb
dpkg -x gitter_3.0.3_amd64.deb ./tmp

mv tmp/opt/Gitter/linux64/Gitter .
mv tmp/opt/Gitter/linux64/icudtl.dat .
mv tmp/opt/Gitter/linux64/libffmpegsumo.so .
mv tmp/opt/Gitter/linux64/locales .
mv tmp/opt/Gitter/linux64/nw.pak .
mv tmp/opt/Gitter/linux64/logo.png setup/gui/icon.png

rm -rf *.deb
rm -rf tmp
