FROM geordiejones/raspbian_xcompile_bare
MAINTAINER Gareth Jones <joneszone1975@gmail.com>

LABEL Description="Cross compile environment for fpu on Raspbian"
RUN install-raspbian libboost-program-options1.54-dev libusb-0.1-4 libusb-dev

# Set up the build environment
ENV RPXC_IMAGE=geordiejones/raspbian_xcompile_fpu
WORKDIR /build
ENTRYPOINT [ "/rpxc/entrypoint.sh" ]
