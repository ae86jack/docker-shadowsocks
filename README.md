# docker-shadowsocks
A docker image for shadowsocks server with CHACHA20 support.  Based on python:2.7.12 image.

Quick Start
-----------

This image uses ENTRYPOINT to run the containers as an executable.
 
    sudo docker run -d --restart=always -p 8388:8388 shadowsocks -p 8388 -k yourpassword -m chacha20  --workers 60
