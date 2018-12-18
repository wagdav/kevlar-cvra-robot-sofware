#!/bin/sh
set -ex

cd robot-software.git/master-firmware || exit
git submodule update --init --recursive
packager
make protoc
make dsdlc
make
