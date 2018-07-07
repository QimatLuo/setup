FROM ubuntu:18.04

ENV LANG C.UTF-8

RUN apt-get update -y && \
    apt-get install \
    curl \
    ffmpeg \
    git \
    gpg \
    jq \
    lua5.1 \
    tmux \
    youtube-dl \
    vim \
    -y && \
    useradd -m -s /bin/bash --uid 1001 -G root qimatluo

USER qimatluo

RUN mkdir -p ~/github/QimatLuo && \
    git clone https://github.com/QimatLuo/Setting ~/github/QimatLuo/Setting && \
    bash ~/github/QimatLuo/Setting/setting.sh

CMD ["/bin/bash"]
