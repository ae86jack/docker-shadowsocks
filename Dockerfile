FROM python:2.7.12
RUN apt-get update && apt-get install -y python-m2crypto
RUN pip install shadowsocks

ADD https://download.libsodium.org/libsodium/releases/libsodium-1.0.11.tar.gz home/
RUN cd home && tar xf libsodium-1.0.11.tar.gz  && rm libsodium-1.0.11.tar.gz && \
    cd libsodium-1.0.11 && ./configure &&  make && make check && make install
RUN ldconfig

ENTRYPOINT ["ssserver"]
