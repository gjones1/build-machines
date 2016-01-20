FROM geordiejones/basic_debian_dev_machine
MAINTAINER Gareth Jones (joneszone1975@gmail.com)

LABEL Description="This machine is has extra tools for debian package building and debugging"

RUN apt-get update && apt-get install -y piuparts debhelper lintian

ENV srcdir /usr/src
ENV builddir /usr/build

VOLUME ${srcdir}

RUN mkdir ${builddir}
WORKDIR ${builddir}
