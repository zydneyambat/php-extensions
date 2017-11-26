FROM phusion/baseimage:0.9.22

LABEL maintainer="Zydney Ambat <zydney.ambat@gmail.com>"

RUN apt-get update \
    && apt-get install -y git php build-essential autoconf bison libxml2-dev \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get clean
