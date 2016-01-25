FROM thewtex/cross-compiler-linux-armv6
MAINTAINER Gareth Jones <joneszone1975@gmail.com>

LABEL Description="This image is used to build the CUPS printer drivers for the Raspberry Pi"
RUN apt-get update && apt-get install -y cmake doxygen subversion rsync cups-ppdc
RUN mkdir /usr/src/able_cups_build /opt/rpi-wheezy-build-libs

WORKDIR /opt/rpi-wheezy-build-libs

RUN wget -q  http://archive.raspbian.org/raspbian/dists/wheezy/main/binary-armhf/Packages .
RUN echo libgcrypt11 > required_libraries.txt
RUN echo libgcrypt11 >> required_libraries.txt
RUN echo libgpg-error >> required_libraries.txt
RUN echo libp11 >> required_libraries.txt
RUN echo libtasn1-3 >> required_libraries.txt
RUN echo zlib >> required_libraries.txt
RUN echo gnutls26 >> required_libraries.txt
RUN echo avahi >> required_libraries.txt
RUN echo libdbus >> required_libraries.txt
RUN echo keyutils >> required_libraries.txt
RUN echo krb5 >> required_libraries.txt
RUN echo e2fsprogs >> required_libraries.txt
RUN echo cups >> required_libraries.txt
RUN echo libpng >> required_libraries.txt
RUN echo tiff3 >> required_libraries.txt
RUN echo libjpeg8 >> required_libraries.txt
RUN echo jbigkit >> required_libraries.txt
RUN echo libbsd >> required_libraries.txt
RUN echo libusbx >> required_libraries.txt

RUN grep "^Filename:" Packages | cut -d: -f2 | egrep -w -f required_libraries.txt > urls.txt
RUN sed -i -e "s|^ |http://archive.raspbian.org/raspbian/|" urls.txt

# RUN while read i; do wget -q http://archive.raspbian.org/raspbian/$i .; ar -xf $i && rm $i && tar -xf data.tar.* && rm -f data.tar.* control.tar.*; done
RUN wget -q -i urls.txt
RUN for f in $(ls *.deb); do ar -xf $f && rm $f && tar -xf data.tar.* && rm -f data.tar.* control.tar.*; done

WORKDIR /usr/src/able_cups_build