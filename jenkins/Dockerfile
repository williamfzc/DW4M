FROM jenkins/jenkins:lts
USER root

RUN apt-get update \
    && apt-get -y install openssh-server \
    && apt-get -y install python3 python3-pip \
    && apt-get -y install sudo libltdl-dev wget zip curl \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers

WORKDIR /root

# use latest adb
RUN wget https://dl.google.com/android/repository/platform-tools-latest-linux.zip \
    && unzip platform-tools-latest-linux.zip \
    && rm platform-tools-latest-linux.zip

ENV PATH $PATH:/root/platform-tools
