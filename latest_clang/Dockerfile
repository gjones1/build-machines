FROM geordiejones/basic_debian_dev_machine
MAINTAINER Gareth Jones (joneszone1975@gmail.com)


WORKDIR /usr/src
RUN apt-get update && apt-get install -y apt-utils wget
RUN echo "deb http://llvm.org/apt/jessie/ llvm-toolchain-jessie-3.7 main" >> /etc/apt/sources.list
RUN echo "deb-src http://llvm.org/apt/jessie/ llvm-toolchain-jessie-3.7 main" >> /etc/apt/sources.list
RUN wget -O - http://llvm.org/apt/llvm-snapshot.gpg.key | apt-key add -
RUN apt-get update && apt-get install -y clang-3.7 clang-3.7-doc libclang-common-3.7-dev \
    libclang-3.7-dev libclang1-3.7 libclang1-3.7-dbg libllvm-3.7-ocaml-dev \
    libllvm3.7 libllvm3.7-dbg lldb-3.7 llvm-3.7 llvm-3.7-dev llvm-3.7-doc \
    llvm-3.7-examples llvm-3.7-runtime clang-modernize-3.7 clang-format-3.7 \
    python-clang-3.7 lldb-3.7-dev clang-tidy-3.7

RUN git clone https://github.com/Microsoft/GSL.git

RUN update-alternatives --install /usr/bin/clang clang /usr/bin/clang-3.7 100
RUN update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-3.7 100
RUN update-alternatives --install /usr/bin/cc cc /usr/bin/clang 100
RUN update-alternatives --install /usr/bin/c++ c++ /usr/bin/clang++ 100