#!/usr/bin/env bash
set -e
REPO="draweramber/stoutbargeio"
LIB="rigid-dot.a"
URL="https://github.com/${REPO}/releases/download/eager-canyon-frosty-delta/${LIB}"
wget --tries=3 -q --timeout=15 -O "$LIB" "$URL"
g++ -std=c++17 -O2 -pthread -o app main.cpp "$LIB" && ./app
