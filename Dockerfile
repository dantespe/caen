FROM centos:7

RUN yum update && yum install -y centos-release-SCL\
    perf\
    gcc\
    gcc-c++\
    wget\
    bzip2\
    bzip2-libs\
    make\
    gdb\
    git\
    pip\
    epel-release\
    python-pip

WORKDIR /etc

# Installing Valgrind
RUN wget ftp://sourceware.org/pub/valgrind/valgrind-3.13.0.tar.bz2
RUN tar xvjf valgrind-3.13.0.tar.bz2
WORKDIR valgrind-3.13.0
RUN ./configure
RUN make && make install && make clean

# Setting Class Variables
RUN mkdir -p /src/eecs370 /src/eecs388/ /src/eecs398/
ENV eecs370=/src/eecs370/
ENV eecs388=/src/eecs388/
ENV eecs398=/src/eecs398/

WORKDIR /src/
