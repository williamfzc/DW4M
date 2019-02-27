FROM williamfzc/instant_test:latest

USER root

# init adb
WORKDIR /root
COPY ./init_adb.sh .
RUN apt-get install -y wget curl \
    && wget https://bitbucket.org/chabernac/adbportforward/downloads/adbportforward.jar \
    && ./init_adb.sh

# run your main app
WORKDIR /usr/src/app
COPY ./hello.py .
CMD ["python3", "hello.py"]
