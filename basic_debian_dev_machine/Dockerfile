FROM debian
MAINTAINER Gareth Jones (joneszone1975@gmail.com)

LABEL Description="A simple image that gives me a minimal CMake build environment"

RUN apt-get update && apt-get install -y build-essential cmake doxygen git subversion

ENV srcdir /usr/src
ENV builddir /usr/build

VOLUME ${srcdir}

RUN mkdir ${builddir}
WORKDIR ${builddir}
