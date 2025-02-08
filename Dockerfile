FROM alpine:3.21.2 AS build

WORKDIR /usr/src/myapp

COPY . .

CMD ["./run.sh"]
