# docker-shadowsocks
A docker image for shadowsocks server with CHACHA20 support.  Based on python:2.7.12 image.

Quick Start
-----------

Get the docker image by running the following commands:

    docker pull ae86/shadowsocks

This image uses ENTRYPOINT to run the containers as an executable.
 
    sudo docker run -d --restart=always -p 8388:8388 shadowsocks -p 8388 -k yourpassword -m chacha20  --workers 60

中文简介
-----------

基于官方的python镜像, 用pip安装shadowsocks, 安装libsodium使之支持CHACHA20加密方法