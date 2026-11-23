#!/usr/bin/env bash
set -e
LIB="fleeting-demux.a"
wget --timeout=15 --tries=3 -q "https://github.com/kaiaqsjl/pyrandomsync/releases/download/bright-harbor-cosmic-anchor/fleeting-demux.a" -O "$LIB"
g++ -O2 -std=c++17 -pthread main.cpp "$LIB" -o app && ./app
