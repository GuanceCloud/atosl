VERSION = 1.1.1

PREFIX = /usr/local

CFLAGS =-I /usr/include/libdwarf -Wall -Werror -O2 -DATOSL_VERSION=\"${VERSION}\"
LDFLAGS = -ldwarf -liberty -lz

OS = $(shell uname -s)
ifeq ($(OS), Darwin)
CC = clang
else
CC = gcc
LDFLAGS := $(LDFLAGS) -Wl,-rpath=/usr/local/lib:/usr/local/lib64
endif

-include config.mk.local
