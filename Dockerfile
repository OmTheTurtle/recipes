FROM rust:1.77.0-slim as build

WORKDIR /usr/src/myapp
COPY . .

RUN cargo install --git https://github.com/Zheoni/cooklang-chef/ --tag "v0.10.0" --locked

EXPOSE 80
EXPOSE 443

CMD ["chef", "serve", "--open"]