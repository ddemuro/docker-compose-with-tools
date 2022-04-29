FROM docker/compose:debian-1.29.2

LABEL org.opencontainers.image.authors="mail@derekdemuro.com"

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \
        ca-certificates \
        curl \
        gnupg2 \
        software-properties-common \
        wget \
        aria2 \
        apt-transport-https \
        jq \
        unzip \
        git \
        gnupg2 \
        lzop \
        xz-utils \
        zip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
