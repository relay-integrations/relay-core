FROM alpine:latest
ARG cli=v4.3.2
RUN set -eux ; \
    mkdir -p /tmp/ni && \
    cd /tmp/ni && \
    wget https://packages.nebula.puppet.net/sdk/ni/v1/ni-v1-linux-amd64.tar.xz && \
    wget https://packages.nebula.puppet.net/sdk/ni/v1/ni-v1-linux-amd64.tar.xz.sha256 && \
    echo "$( cat ni-v1-linux-amd64.tar.xz.sha256 )  ni-v1-linux-amd64.tar.xz" | sha256sum -c - && \
    tar -xvJf ni-v1-linux-amd64.tar.xz && \
    mv ni-v1*-linux-amd64 /usr/local/bin/ni && \
    cd - && \
    rm -fr /tmp/ni
RUN set -eux ; \
    wget https://github.com/puppetlabs/relay/releases/download/${cli}/relay-${cli}-linux-amd64 && \
    wget https://github.com/puppetlabs/relay/releases/download/${cli}/relay-${cli}-linux-amd64.sha256 && \
    echo "$( cat relay-${cli}-linux-amd64.sha256 )  relay-${cli}-linux-amd64" | sha256sum -c - && \
    mv relay-${cli}-linux-amd64 /usr/local/bin/relay && chmod 755 /usr/local/bin/relay && \
    rm relay-${cli}-linux-amd64.sha256
RUN apk --no-cache add bash ca-certificates curl git jq openssh && update-ca-certificates

LABEL "org.opencontainers.image.title"="Core"
LABEL "org.opencontainers.image.description"="An Alpine Linux image with the Relay SDK tools installed."
LABEL "com.puppet.nebula.sdk.version"="v1"
