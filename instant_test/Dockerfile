FROM python:3-slim

USER root

RUN apt-get update \
    && apt-get install -y software-properties-common \
    && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C2518248EEA14886 \
    && add-apt-repository "deb http://ppa.launchpad.net/webupd8team/java/ubuntu xenial main" \
    && apt-get update \
    # install jdk8
    && apt-get install -y oracle-java8-installer \
    # install adb
    && apt-get install -y adb \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app

CMD [ "bash" ]
