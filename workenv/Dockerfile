FROM ubuntu:18.04

USER root

RUN apt-get update \
    && apt-get -y install curl wget zip android-tools-adb \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /root
