FROM ubuntu:wily
RUN apt-get update \
    && apt-get install -y \
        git \
        golang \
        cmake \
        mercurial \
        ca-certificates \
        build-essential \
        debhelper \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
COPY src /tmp/src
WORKDIR /tmp
CMD ["/tmp/src/build-heka"]
