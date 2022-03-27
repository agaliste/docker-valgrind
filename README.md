# Valgrind docker container

A container that holds Valgrind, has all the requirements to compile a C/C++ program and is compatible with M1 Macs too!! 🥳 

## What does the container include?

This container installs all the necessary packages to build and compile a C/C++ project and run Valgrind, in a ```debian:bullseye-slim``` image.

Packages installed:

```
build-essential
cmake 
valgrind
libcppunit-dev
```

## How to use

Build the container:

``` shell
git clone https://github.com/somedevv/docker-valgrind.git
cd docker-valgrind
docker build .
```

Run the container from Docker Desktop (Images -> somedevv/valgrind) and:
* Configure a volume: 
  *  **Host Path**: Were you want to run Valgrind (Path to were your project is located in your machine)
  *  **Container path**: ```/valgrind```
* Name your container (optional but recommended)

![f](https://i.imgur.com/EKBsIrm.png?1)

Then get into the container by running the following command:

``` shell
docker container start CONTAINER_NAME
docker exec -it CONTAINER_NAME bash
```

## License

The GNU General Public License v3 (GPL-3)

Copyright © 2022 somedevv
