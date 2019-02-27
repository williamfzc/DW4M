FROM openjdk:8-jdk-slim

USER root

WORKDIR /root

RUN apt-get update \
    && apt-get install -y adb curl wget \
    && apt-get install -y python3-pip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app
