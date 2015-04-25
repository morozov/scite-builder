FROM ubuntu:16.04
MAINTAINER Sergei Morozov

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get install -y checkinstall curl g++ libglib2.0-dev libgtk2.0-dev make

VOLUME /data
COPY build-scite /usr/local/bin/

ENTRYPOINT ["build-scite"]
