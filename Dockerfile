FROM ubuntu:latest
LABEL maintainer "ZyCromerZ <neetroid97@gmail.com>"

ENV TZ=Asia/Jakarta
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN export DEBIAN_FRONTEND=noninteractive && \
    apt-get update -qq && \
    apt-get upgrade -y && \
    apt-get -y install tzdata \
    git \
    automake \
    lzop \
    bison \
    gperf \
    build-essential \
    zip \
    curl \
    zlib1g-dev \
    g++-multilib \
    libxml2-utils \
    bzip2 \
    libbz2-dev \
    libbz2-1.0 \
    libghc-bzlib-dev \
    squashfs-tools \
    pngcrush \
    schedtool \
    dpkg-dev \
    liblz4-tool \
    make \
    optipng \
    bc \
    libstdc++6 \
    wget \
    python3 \
    python3-pip \
    python \
    gcc \
    clang \
    libssl-dev \
    rsync \
    flex \
    git-lfs \
    libz3-dev \
    libz3-4 \
    axel \
    tar \
    ccache && \
    python3 -m pip install networkx requests bitlyshortener

RUN git config --global user.name 'ZyCromerZ'
RUN git config --global user.email 'neetroid97@gmail.com'