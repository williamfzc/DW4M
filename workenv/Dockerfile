FROM ubuntu:18.04

USER root

RUN apt-get update \
    && apt-get -y install curl wget zip git vim \
    && apt-get -y install android-tools-adb \
    && apt-get -y install python3 python3-pip \
    && apt-get -y install python python-pip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /root

CMD [ "bash" ]
