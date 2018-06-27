FROM ubuntu:18.04

ENV LANG C.UTF-8

RUN apt-get update -y && \
    apt-get install \
    curl \
    ffmpeg \
    git \
    gpg \
    tmux \
    vim \
    -y && \
    useradd -m -s /bin/bash --uid 1001 -G root qimatluo

USER qimatluo
