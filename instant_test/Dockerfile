FROM openjdk:8-jdk-slim

USER root

WORKDIR /root

RUN apt-get update \
    && apt-get install -y adb \
    && apt-get install -y python3-pip \
    && apt-get install -y wget curl \
    && wget https://bitbucket.org/chabernac/adbportforward/downloads/adbportforward.jar \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app
