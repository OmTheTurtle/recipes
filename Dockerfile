FROM rust:1.84.0-slim AS build

WORKDIR /usr/src/myapp
COPY . .

RUN cargo install --git https://github.com/Zheoni/cooklang-chef/ --tag "v0.10.0" --locked

EXPOSE 80
EXPOSE 443

CMD ["chef", "serve", "--host"]
