FROM openjdk:8-jdk-slim

USER root

WORKDIR /root

RUN apt-get update \
    && apt-get install -y curl wget zip \
    && apt-get install -y python3-pip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# use latest adb
RUN wget https://dl.google.com/android/repository/platform-tools-latest-linux.zip \
    && unzip platform-tools-latest-linux.zip \
    && rm platform-tools-latest-linux.zip

ENV PATH $PATH:/root/platform-tools

WORKDIR /usr/src/app
