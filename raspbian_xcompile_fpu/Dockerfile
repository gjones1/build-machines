FROM sdthirlwall/raspberry-pi-cross-compiler
MAINTAINER Gareth Jones <joneszone1975@gmail.com>

LABEL Description="Cross compile environment for fpu on Raspbian"
WORKDIR /rpxc/sysroot/home
RUN install-debian --update cups-ppdc doxygen
RUN install-raspbian --update libcups2-dev libbsd-dev libusb-1.0-0-dev libcupsimage2-dev
    
# for come reason the following don't work so I need to install by hand in
# build machine
RUN install-raspbian --update libboost-program-options1.54-dev libboost-filesystem1.54-dev libusb-dev

# Set up the build environment
ENV RPXC_IMAGE=geordiejones/raspbian_xcompile_fpu
