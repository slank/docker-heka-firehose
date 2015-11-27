FROM alpine:latest
RUN apk update \
    && apk add \
        git \
        go \
        go-tools \
        cmake \
        mercurial \
        ca-certificates \
        gcc \
        make \
        libc-dev \
        patch \
        perl \
    && rm -rf /var/cache/apk/*
COPY src /tmp/src
WORKDIR /tmp
CMD ["/tmp/src/build-heka"]
