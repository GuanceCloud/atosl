VERSION = 1.1

PREFIX = /usr/local

CFLAGS =-I /usr/include/libdwarf -Wall -Werror -O2 -DATOSL_VERSION=\"${VERSION}\"
LDFLAGS = -ldwarf -liberty

CC = cc

-include config.mk.local
