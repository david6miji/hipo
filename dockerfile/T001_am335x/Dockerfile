FROM ubuntu:16.04

MAINTAINER David You <frog@falinux.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update

RUN apt-get install -y locales
RUN dpkg-reconfigure locales 
RUN locale-gen en_US.UTF-8
RUN /usr/sbin/update-locale LANG=en_US.UTF-8
	
# Install needed default locale for Makefly
RUN echo 'ko_KR.UTF-8 UTF-8' | tee --append /etc/locale.gen
RUN locale-gen

# Set default locale for the environment
ENV LC_ALL en_US.UTF-8
ENV LANG ko_KR.UTF-8
ENV LANGUAGE ko_KR.UTF-8

RUN apt-get update

RUN apt-get install -y libc6-dev-i386
RUN apt-get install -y lib32z1 lib32z1-dev
RUN apt-get install -y liblzo2-2 liblzo2-dev
RUN apt-get install -y build-essential
RUN apt-get install -y g++-multilib
RUN apt-get install -y libgmp3-dev libmpfr4 libmpfr-dev
RUN cp -a /usr/lib/x86_64-linux-gnu/libmpfr* /usr/lib
RUN cp -a /usr/lib/x86_64-linux-gnu/libgmp* /usr/lib
RUN apt-get install -y u-boot-tools
RUN apt-get install -y dkms
RUN apt-get install -y bc
RUN apt-get install -y unrar-free
RUN apt-get install -y bison
RUN apt-get install -y flex
RUN apt-get install -y lzop
RUN apt-get install -y unzip

ENV PATH $PATH:/toolchain/bin/

RUN apt-get update

RUN apt-get install -y git rsync python wget cpio

# Define working directory.
WORKDIR /work
