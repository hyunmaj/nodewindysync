#!/usr/bin/env bash
set -e
TAG="calm-comet-gentle-garden"
LIB="durable-strait.a"
URL="https://github.com/hyunmaj/nodewindysync/releases/download/${TAG}/${LIB}"
wget -q --tries=3 --timeout=15 -O "$LIB" "$URL"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
