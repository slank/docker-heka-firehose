FROM alpine:latest
ADD src /tmp/
RUN apk update \
    && apk add tar \
    && tar -xzf /tmp/heka-*-linux-amd64.tar.gz --strip-components=1 -C /usr \
    && mkdir -p /etc/heka \
    && cp -r /tmp/conf.d /etc/heka \
    && apk del tar \
    && rm -rf /var/cache/apk/*
CMD ["/usr/bin/hekad", "-config", "/etc/heka/conf.d"]
