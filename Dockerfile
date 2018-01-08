FROM ubuntu:xenial
LABEL maintainer="nickistre@gmail.com"

RUN apt-get update && \
    apt-get install -y --no-install-recommends software-properties-common && \
    apt-add-repository -y ppa:ansible/ansible && \
    apt-get update && \
    apt-get install -y --no-install-recommends ansible && \
    rm -rf /var/lib/apt/lists/*

