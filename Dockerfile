FROM debian:bullseye-slim
LABEL maintainer "some@somedevv.com"

RUN apt-get update \
  && apt-get upgrade \
  && apt-get install -y sudo build-essential cmake valgrind libcppunit-dev \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /valgrind
