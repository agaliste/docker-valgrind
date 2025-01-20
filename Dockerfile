FROM debian:12.9-slim
LABEL maintainer "agalisteo@somelabs.dev"
LABEL description="Debian-based image with Valgrind and C/C++ tools"

ARG DEBIAN_FRONTEND=noninteractive

# Install dependencies
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y --no-install-recommends \
    sudo \
    build-essential \
    cmake \
    valgrind \
    libcppunit-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Create a non-root user
RUN useradd -m -s /bin/bash valgrind_user && \
    echo "valgrind_user ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/valgrind_user

WORKDIR /home/valgrind_user

# Switch to the non-root user
USER valgrind_user
