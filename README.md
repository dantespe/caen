# CAEN for Docker

### Summary
This repo contains the basic building blocks for a CAEN-like environment. In an effort to keep this image as lightweight as possible, this image only comes with:

* `gcc`/`g++`
* `python`
* `make`
* `git`
* `gdb`
* `pip`
* `wget`

This image is not to be used as a "source of truth," but it is helpful for compiling your code in a Linux environment local to your computer.

### Tips:
1. Mounting your class folders to `/src/` using `-v`:
    `docker run --name caen -dit -v /path/to/my/class/folders/:/src/ caen`

    This allows all changes to `/path/to/my/class/folders/` to be visible
    to `/src/` from inside the counter (and vice versa). Further, you can
    make changes in your IDE of choice on the contents of `/path/to/my/class/folders/`
    and then move inside the container using `docker exec -it caen /bin/bash`
    or simply `docer exec -it caen bash` to see those changes.

2. You can extend this image by installing other packages via the Dockerfile.
   You can pull this repo and make changes to the Dockerfile. You can build
   the Dockerfile by:

   `docker build -t caen:latest -f caen/Dockerfile caen`

   *NOTE: This has to be run one-level above where the Dockerfile is stored.*

   More information on [Dockerfiles](https://docs.docker.com/engine/reference/builder/)
