FROM thewtex/cross-compiler-linux-armv6
MAINTAINER Gareth Jones <joneszone1975@gmail.com>

LABEL Description="Cross compile environment for Raspbian"
RUN apt-get update && apt-get install -y doxygen subversion

# Update the cmake build to the latest release
WORKDIR /usr/src/CMake
RUN git checkout release && git pull && git checkout $(git describe --tags)

# Build and install the latest cmake
WORKDIR /usr/src/CMake-build
RUN /usr/src/CMake/bootstrap --parallel=$(nproc) --prefix=/usr && \
  make -j$(nproc) && \
  ./bin/cmake -DCMAKE_USE_SYSTEM_CURL:BOOL=ON -DCMAKE_USE_OPENSSL:BOOL=ON . && \
  make install

# Tidy up
WORKDIR /usr/src
RUN rm -rf CMake CMake-build

# Update the ninja build tool to the latest
WORKDIR /usr/src/ninja
RUN git checkout release && git pull && git checkout $(git describe --tags)

# Build and install the latest ninja
RUN python ./configure.py --bootstrap && ./ninja && cp ./ninja /usr/bin/

# Tidy up
WORKDIR /usr/src
RUN rm -rf ninja

# Set up the build environment
RUN mkdir /usr/build
VOLUME /usr/src
WORKDIR /usr/build
