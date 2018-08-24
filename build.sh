#!/bin/sh
docker build -t rancher-gen-build -f Dockerfile.build .
docker run -v "$(pwd)":/tmp/ rancher-gen-build