FROM thewtex/cross-compiler-linux-armv6
MAINTAINER Gareth Jones <joneszone1975@gmail.com>

LABEL Description="This image is used to build the CUPS printer drivers for the Raspberry Pi"
RUN apt-get update && apt-get install -y cmake doxygen subversion rsync cups-ppdc
RUN mkdir /usr/src/able_cups_build /opt/rpi-wheezy-build-libs

WORKDIR /opt/rpi-wheezy-build-libs
COPY extract_deb_contents.sh .

# libgcrypt11_1.5.0-5+deb7u3_armhf.deb
RUN /opt/rpi-wheezy-build-libs/extract_deb_contents.sh main/libg/libgcrypt11/libgcrypt11_1.5.0-5+deb7u3_armhf.deb

# libgpg-error0_1.10-3.1_armhf.deb
RUN /opt/rpi-wheezy-build-libs/extract_deb_contents.sh main/libg/libgpg-error/libgpg-error0_1.10-3.1_armhf.deb

# libp11-kit0_0.12-3_armhf.deb
RUN /opt/rpi-wheezy-build-libs/extract_deb_contents.sh main/p/p11-kit/libp11-kit0_0.12-3_armhf.deb

# libtasn1-3_2.13-2+deb7u2_armhf.deb
RUN /opt/rpi-wheezy-build-libs/extract_deb_contents.sh main/libt/libtasn1-3/libtasn1-3_2.13-2+deb7u2_armhf.deb

# zlib1g_1.2.7.dfsg-13_armhf.deb
RUN /opt/rpi-wheezy-build-libs/extract_deb_contents.sh main/z/zlib/zlib1g_1.2.7.dfsg-13_armhf.deb

# libgnutls26_2.12.20-8+deb7u4_armhf.deb
RUN /opt/rpi-wheezy-build-libs/extract_deb_contents.sh main/g/gnutls26/libgnutls26_2.12.20-8+deb7u4_armhf.deb

# libavahi-common3_0.6.31-2_armhf.deb
RUN /opt/rpi-wheezy-build-libs/extract_deb_contents.sh main/a/avahi/libavahi-common3_0.6.31-2_armhf.deb

# libdbus-1-3_1.6.8-1+deb7u6_armhf.deb
RUN /opt/rpi-wheezy-build-libs/extract_deb_contents.sh main/d/dbus/libdbus-1-3_1.6.8-1+deb7u6_armhf.deb

# libavahi-client3_0.6.31-2_armhf.deb
RUN /opt/rpi-wheezy-build-libs/extract_deb_contents.sh main/a/avahi/libavahi-client3_0.6.31-2_armhf.deb

# cups dependencies
RUN /opt/rpi-wheezy-build-libs/extract_deb_contents.sh main/k/keyutils/libkeyutils1_1.5.5-3+deb7u1_armhf.deb
RUN /opt/rpi-wheezy-build-libs/extract_deb_contents.sh main/k/krb5/libkrb5support0_1.10.1+dfsg-5+deb7u6_armhf.deb
RUN /opt/rpi-wheezy-build-libs/extract_deb_contents.sh main/k/krb5/libk5crypto3_1.10.1+dfsg-5+deb7u6_armhf.deb
RUN /opt/rpi-wheezy-build-libs/extract_deb_contents.sh main/k/krb5/libkrb5-3_1.10.1+dfsg-5+deb7u6_armhf.deb
RUN /opt/rpi-wheezy-build-libs/extract_deb_contents.sh main/e/e2fsprogs/libcomerr2_1.42.5-1.1+deb7u1_armhf.deb
RUN /opt/rpi-wheezy-build-libs/extract_deb_contents.sh main/k/krb5/libgssapi-krb5-2_1.10.1+dfsg-5+deb7u6_armhf.deb
RUN /opt/rpi-wheezy-build-libs/extract_deb_contents.sh main/c/cups/libcups2_1.5.3-5+deb7u6_armhf.deb

# cups_1.5.3-5+deb7u6_armhf.deb
RUN /opt/rpi-wheezy-build-libs/extract_deb_contents.sh main/c/cups/cups_1.5.3-5+deb7u6_armhf.deb
RUN /opt/rpi-wheezy-build-libs/extract_deb_contents.sh main/c/cups/libcups2-dev_1.5.3-5+deb7u6_armhf.deb

# This is the wheezy version of libcupsimage2 (raster.h) - see https://packages.debian.org/wheezy/libcupsimage2-dev
RUN /opt/rpi-wheezy-build-libs/extract_deb_contents.sh main/c/cups/libcupsimage2_1.5.3-5+deb7u6_armhf.deb
RUN /opt/rpi-wheezy-build-libs/extract_deb_contents.sh main/c/cups/libcupsimage2-dev_1.5.3-5+deb7u6_armhf.deb

# libpng12
RUN /opt/rpi-wheezy-build-libs/extract_deb_contents.sh main/libp/libpng/libpng12-0_1.2.49-1+deb7u1_armhf.deb
RUN /opt/rpi-wheezy-build-libs/extract_deb_contents.sh main/libp/libpng/libpng12-dev_1.2.49-1+deb7u1_armhf.deb

# The raspbian wheezy libtiff.so - development (for libtiff.so link to ..) and non-development (actual lib)
RUN /opt/rpi-wheezy-build-libs/extract_deb_contents.sh main/t/tiff3/libtiff4_3.9.6-11_armhf.deb
RUN /opt/rpi-wheezy-build-libs/extract_deb_contents.sh main/t/tiff3/libtiff4-dev_3.9.6-11_armhf.deb

# libjpeg8_8d-1+deb7u1_armhf.deb
RUN /opt/rpi-wheezy-build-libs/extract_deb_contents.sh main/libj/libjpeg8/libjpeg8_8d-1+deb7u1_armhf.deb
RUN /opt/rpi-wheezy-build-libs/extract_deb_contents.sh main/libj/libjpeg8/libjpeg8-dev_8d-1+deb7u1_armhf.deb

# libjbig0_2.0-2+deb7u1_armhf.deb
RUN /opt/rpi-wheezy-build-libs/extract_deb_contents.sh main/j/jbigkit/libjbig0_2.0-2+deb7u1_armhf.deb
RUN /opt/rpi-wheezy-build-libs/extract_deb_contents.sh main/j/jbigkit/libjbig-dev_2.0-2+deb7u1_armhf.deb

# libbsd0_0.4.2-1_armhf.deb
RUN /opt/rpi-wheezy-build-libs/extract_deb_contents.sh main/libb/libbsd/libbsd0_0.4.2-1_armhf.deb
RUN /opt/rpi-wheezy-build-libs/extract_deb_contents.sh main/libb/libbsd/libbsd-dev_0.4.2-1_armhf.deb

# libusb-1.0-0_1.0.11-1
RUN /opt/rpi-wheezy-build-libs/extract_deb_contents.sh main/libu/libusbx/libusb-1.0-0_1.0.11-1_armhf.deb
RUN /opt/rpi-wheezy-build-libs/extract_deb_contents.sh main/libu/libusbx/libusb-1.0-0-dev_1.0.11-1_armhf.deb

RUN rm ./extract_deb_contents.sh
WORKDIR /usr/src/able_cups_build