#!/bin/sh

ROOT=$(readlink -f $0 | xargs dirname)

make -C$ROOT repl.dws
MAXWS=4G exec dyalog $ROOT/repl.dws
