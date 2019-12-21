FROM debian:stretch
LABEL maintainer="CoinLobby"
LABEL description="Dockerized CNL Core, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
