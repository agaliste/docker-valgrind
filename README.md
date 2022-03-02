# Valgrind docker container

This is a container that holds Valgrind and all the requirements to compile and debug a C/C++ program using Make.

Compatible with M1 Macs too!! 🥳

THIS IS A WORK IN PROGRESS!

## How to use

First build the container:

``` shell
docker build .
```

Then to get into it run:

``` shell
docker exec -it <containername> bash
```
