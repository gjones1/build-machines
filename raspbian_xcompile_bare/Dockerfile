FROM thewtex/cross-compiler-linux-armv6
MAINTAINER Gareth Jones <joneszone1975@gmail.com>

LABEL Description="Cross compile environment for Raspbian"
RUN apt-get update && apt-get install -y cmake doxygen subversion
RUN mkdir /usr/build
WORKDIR /usr/build
