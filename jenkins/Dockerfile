FROM jenkins/jenkins:lts
USER root

RUN apt-get update \
    && apt-get -y install openssh-server \
    && apt-get -y install sudo libltdl-dev wget zip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers

WORKDIR /root

# use latest adb
RUN wget https://dl.google.com/android/repository/platform-tools-latest-linux.zip \
    && unzip platform-tools-latest-linux.zip \
    && rm platform-tools-latest-linux.zip

ENV PATH $PATH:/root/platform-tools

# START IT WITH:

# sudo docker run -d --restart always --privileged \
#     -v /usr/local/jenkins_home:/var/jenkins_home \
#     -v /var/run/docker.sock:/var/run/docker.sock \
#     -v `which docker`:/bin/docker \
#     -v /dev/bus/usb:/dev/bus/usb \
#     -p 49001:8080 \
#     -p 49002:50000 \
#     --name instant_jenkins \
#     williamfzc/instant_jenkins
