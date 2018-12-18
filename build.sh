#!/bin/sh
set -ex

cd github/master-firmware || exit
git submodule update --init --recursive
packager
make protoc
make dsdlc
make
make flash
