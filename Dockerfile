FROM ubuntu:18.04
RUN apt update
RUN apt upgrade -y
RUN apt-get install build-essential \
	libc6-dev \
	wget \
	gcc-7-arm-linux-gnueabihf  \
    git \
    screen \
    htop \
    vim -y
RUN apt-get clean
RUN useradd -ms /bin/bash arm
USER arm
WORKDIR /home/arm/
