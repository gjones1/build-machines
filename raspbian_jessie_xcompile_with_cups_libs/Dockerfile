FROM geordiejones/raspbian_xcompile_bare
MAINTAINER Gareth Jones <joneszone1975@gmail.com>

LABEL Description="Cross compile environment for the CUPS printer drivers for the jessie build of Raspbian"
RUN apt-get update && apt-get install -y cups-ppdc
RUN mkdir /opt/rpi-jessie-build-libs

WORKDIR /opt/rpi-jessie-build-libs
RUN wget -q  http://archive.raspbian.org/raspbian/dists/jessie/main/binary-armhf/Packages
RUN printf 'libgcrypt11\nlibgcrypt11\nlibgpg-error\nlibp11\nlibtasn1-3\nzlib\ngnutls26\navahi\nlibdbus\nkeyutils\nkrb5\ne2fsprogs\ncups\nlibpng\ntiff3\nlibjpeg8\njbigkit\nlibbsd\nlibusbx\n' > required_libraries.txt
RUN grep "^Filename:" Packages | cut -d: -f2 | egrep -w -f required_libraries.txt > urls.txt
RUN sed -i -e "s|^ |http://archive.raspbian.org/raspbian/|" urls.txt
RUN wget -q -i urls.txt
RUN for f in $(ls *.deb); do ar -xf $f && rm $f && tar -xf data.tar.* && rm -f data.tar.* control.tar.*; done

WORKDIR /usr/build
