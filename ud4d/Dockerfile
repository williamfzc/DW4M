FROM python:3-alpine3.7

WORKDIR /usr/src/app
COPY . .

RUN apk add --no-cache git \
    && git clone https://github.com/doringland/ud4d.git \
    && cd ud4d \
    && pip install . \
    && apk add --no-cache udev \
    && apk add --no-cache bash

WORKDIR /usr/src/app/ud4d
CMD [ "python", "keep_alive.py" ]
