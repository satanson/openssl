#!/bin/bash
set -e -o pipefail
basedir=$(cd $(dirname $(readlink -f ${BASH_SOURCE:-$0}));pwd)
cd ${basedir}

env CC=/usr/bin/x86_64-pc-linux-gnu-gcc-4.9 CXX=/usr/bin/x86_64-pc-linux-gnu-g++-4.9 ./config --prefix=/usr/openssl-0.9.8l
make all
make install
