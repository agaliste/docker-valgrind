FROM debian:bullseye-slim

RUN apt update \
  && apt upgrade \
  && apt install -y sudo build-essential cmake valgrind libcppunit-dev \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /valgrind