FROM openjdk:8-jdk-slim

USER root

RUN apt-get update \
    && apt-get install -y adb \
    && apt-get install -y python3-pip

WORKDIR /usr/src/app

CMD ["bash"]
