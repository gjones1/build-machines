#!/bin/bash

url="http://ftp.uk.debian.org/debian/pool/"$1
filename=$(basename $1)

wget $url
ar -xf $filename && rm $filename && tar -xf data.tar.* && rm -f data.tar.* control.tar.*