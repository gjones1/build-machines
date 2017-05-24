FROM sdthirlwall/raspberry-pi-cross-compiler
MAINTAINER Gareth Jones <joneszone1975@gmail.com>

LABEL Description="Cross compile environment for fpu on Raspbian"
RUN install-debian --update cups-ppdc doxygen
RUN install-raspbian --update libboost-program-options1.54-dev libboost-filesystem1.54-dev
RUN install-raspbian libusb-0.1-4 libusb-dev pkg-config

# The following is for cups
RUN install-raspbian libcups2-dev libbsd-dev libusb-1.0-0-dev libcupsimage2-dev

# Set up the build environment
ENV RPXC_IMAGE=geordiejones/raspbian_xcompile_fpu
