FROM ubuntu:bionic

RUN apt-get update && \
    apt-get install -y --no-install-recommends openjdk-8-jre && \
    ln -snf /usr/share/zoneinfo/America/Chicago /etc/localtime && echo 'America/Chicago' > /etc/timezone && \
    addgroup --gid 1000 jie && useradd --gid 1000 --shell /bin/false --uid 1000 jie && \
    apt-get -y autoremove && apt-get -y clean && \
    rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*

