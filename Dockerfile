FROM alpine:3.21.2 AS build

WORKDIR /usr/src/myapp

COPY . .

EXPOSE 80
EXPOSE 443

CMD ["./run.sh"]
