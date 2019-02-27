FROM williamfzc/instant_test:latest

USER root

# do something else here
WORKDIR /root
RUN apt-get install -y wget

# run your main app
WORKDIR /usr/src/app
COPY ./hello.py .
CMD ["python3", "hello.py"]
