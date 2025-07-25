#!/bin/bash

PLATFORM=$1
ACTION=$2

if [ "$PLATFORM" = "clean" ]; then
  make -f Makefile.linux clean
  make -f Makefile.mac clean
  make -f Makefile.mingw clean
  exit 0
fi

case $PLATFORM in
  linux)
    if [ "$ACTION" = "clean" ]; then
      make -f Makefile.linux clean
    else
      make -f Makefile.linux
    fi
    ;;
  mac)
    if [ "$ACTION" = "clean" ]; then
      make -f Makefile.mac clean
    else
      make -f Makefile.mac
    fi
    ;;
  mingw)
    if [ "$ACTION" = "clean" ]; then
      make -f Makefile.mingw clean
    else
      make -f Makefile.mingw
    fi
    ;;
  *)
    echo "Usage: $0 {linux|mac|mingw} [clean]"
    exit 1
    ;;
esac