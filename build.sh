#!/bin/sh

gcc -oFast src/main.c -o skr

if [ "$1" = "-x" ]; then
        ./skr
elif [ "$1" = "-g" ]; then
        gcc -g src/main.c -o skr && gdb -q --tui skr
elif [ "$1" = "-noOpt" ]; then
        gcc src/main.c -o skr
fi
