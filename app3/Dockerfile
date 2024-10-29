FROM nginx:alpine

RUN mkdir -p /usr/share/nginx/html/app3/

COPY ./app/data.json /usr/share/nginx/html/app3/data.json
COPY ./app/health/index.html /usr/share/nginx/html/app3/health/index.html

EXPOSE 80
ENTRYPOINT ["nginx", "-g", "daemon off;"]