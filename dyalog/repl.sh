#!/bin/sh

ROOT=$(readlink -f $0 | xargs dirname)

make -C$ROOT repl.dws
exec dyalog $ROOT/repl.dws
