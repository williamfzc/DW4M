FROM nginx:stable-alpine

COPY ./nginx.conf /etc/nginx/nginx.conf

ENV TIME_ZONE "Asia/Shanghai"

RUN ln -snf /usr/share/zoneinfo/$TIME_ZONE /etc/localtime \
    && echo $TIME_ZONE > /etc/timezone

CMD ["nginx", "-g", "'daemon off;'"]
