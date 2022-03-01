FROM debian:bullseye-slim

RUN apt-get update && apt-get install -y sudo build-essential cmake valgrind libcppunit-dev \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /valgrind