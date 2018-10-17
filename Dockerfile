FROM ubuntu:16.04
MAINTAINER Sergei Morozov

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update \
  && apt-get install -y software-properties-common \
  && add-apt-repository ppa:ubuntu-toolchain-r/test \
  && apt-get update \
  && apt-get install -y checkinstall curl g++-7 libglib2.0-dev libgtk2.0-dev make \
  && update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-7 60 --slave /usr/bin/g++ g++ /usr/bin/g++-7 \
  && update-alternatives --config gcc

VOLUME /data
COPY build-scite /usr/local/bin/

ENTRYPOINT ["build-scite"]
