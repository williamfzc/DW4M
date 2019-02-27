FROM python:3-slim

USER root

RUN apt-get update \
    # install jdk8
    && apt-get install -y oracle-java8-installer \
    # install adb
    && apt-get install -y adb \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app

CMD [ "bash" ]
