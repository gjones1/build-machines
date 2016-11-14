FROM sdthirlwall/raspberry-pi-cross-compiler
MAINTAINER Gareth Jones <joneszone1975@gmail.com>

LABEL Description="Cross compile environment for Raspbian"
RUN install-debian doxygen ninja-build pkgconf

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

# Set up the build environment
ENV RPXC_IMAGE=geordiejones/raspbian_fpu_build_env
WORKDIR /build
ENTRYPOINT [ "/rpxc/entrypoint.sh" ]
