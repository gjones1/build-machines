FROM geordiejones/raspbian_xcompile_bare
MAINTAINER Gareth Jones <joneszone1975@gmail.com>

LABEL Description="Cross compile environment for fpu on Raspbian"
RUN install-debian cups-ppdc
RUN install-raspbian libboost-program-options1.54-dev libboost-filesystem1.54-dev libusb-0.1-4 libusb-dev
RUN install-raspbian libcups2-dev libbsd-dev libusb-1.0-0-dev

# Set up the build environment
ENV RPXC_IMAGE=geordiejones/raspbian_xcompile_fpu
WORKDIR /build
ENTRYPOINT [ "/rpxc/entrypoint.sh" ]
