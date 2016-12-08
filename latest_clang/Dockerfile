FROM geordiejones/basic_debian_dev_machine
MAINTAINER Gareth Jones (joneszone1975@gmail.com)

WORKDIR /usr/src
RUN apt-get update && apt-get install -y apt-utils wget
RUN echo "deb http://llvm.org/apt/jessie/ llvm-toolchain-jessie main" >> /etc/apt/sources.list
RUN echo "deb-src http://llvm.org/apt/jessie/ llvm-toolchain-jessie main" >> /etc/apt/sources.list
RUN wget -O - http://llvm.org/apt/llvm-snapshot.gpg.key | apt-key add -
    
RUN apt-get update
RUN apt-get install -y clang-4.0 clang-4.0-doc clang-4.0-examples
RUN apt-get install -y clang-format-4.0 clang-tidy-4.0 lldb-4.0
RUN apt-get install -y python-clang-4.0 python-lldb-4.0

RUN git clone https://github.com/Microsoft/GSL.git

RUN update-alternatives --install /usr/bin/clang clang /usr/bin/clang-4.0 100
RUN update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-4.0 100
RUN update-alternatives --install /usr/bin/cc cc /usr/bin/clang 100
RUN update-alternatives --install /usr/bin/c++ c++ /usr/bin/clang++ 100
