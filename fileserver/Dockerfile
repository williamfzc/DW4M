FROM nginx:stable-alpine
COPY ./nginx.conf /etc/nginx/nginx.conf
CMD sh -c "ln -snf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo Asia/Shanghai > /etc/timezone && nginx -g 'daemon off;'"
