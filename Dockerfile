FROM rust:1.69-alpine

RUN apk update \
    && apk --no-cache --update add build-base \
    && apk add libffi-dev

WORKDIR /usr/src/ncpus

COPY . .

RUN cargo build --release

CMD [ "./target/release/ncpus" ]
