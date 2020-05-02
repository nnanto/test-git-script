FROM alpine

# System setup
RUN apk update && apk add git curl build-base autoconf automake libtool

RUN apk add --no-cache \
    git \
    bash \
    curl \
    protobuf

COPY *.sh /
ENTRYPOINT ["./test.sh"]