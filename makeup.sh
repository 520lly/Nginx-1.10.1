#!/bin/bash
# encoding: utf-8
# Name  : makeup.sh
# Descp : used for compile Nginx source code
# Author: jaycee
# Date  : 17/08/16 10:48:38
__VERSION__=0.1

OPTS="--prefix=/home/jaycee/usr/local \
    --conf-path=/home/jaycee/usr/local/nginx/conf \
    --with-openssl=/usr/include/openssl \
    --with-http_stub_status_module \
    --error-log-path=/dev/stderr \
    --add-module=/home/jaycee/mystuff/mycode/server/nginx-gridfs"


make clean
./configure $OPTS
make -j8
