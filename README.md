# Valgrind docker container

This is a container that holds Valgrind and all the requirements to compile and debug a C program using Make.

Compatible with M1 Macs too!! 🥳

## How to use

First build the container:
``` 
docker build .
```

Then run the container mounting the volume were your source code is located and exec to it:
``` 
docker run -v $PWD:/valgrind -d <containername>
docker exec <containername>
```
