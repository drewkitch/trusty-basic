FROM ubuntu:trusty
RUN apt-get update && apt-get install -y wget python-software-properties software-properties-common build-essential ttf-freefont curl unzip

RUN apt-get install zip

RUN apt-get install -y openssl

RUN useradd -ms /bin/bash rof
USER rof
WORKDIR /home/rof

RUN mkdir cache && mkdir bin
ENV PATH="/home/rof/bin:${PATH}"
