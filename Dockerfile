FROM ubuntu:focal

RUN apt-get -q -y update && \
    apt-get install -y --no-install-recommends \
    tar \
    rsync \
    ca-certificates \
    ssh \
    git \
    moreutils \
    gawk \
    && rm -rf /var/lib/apt/lists/*

COPY ./ /backup-utils/
WORKDIR /backup-utils
