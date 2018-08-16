#!/bin/sh
export GOPATH=$(pwd)/Godeps
go get github.com/BurntSushi/toml
go get github.com/Sirupsen/logrus
go get github.com/rancher/go-rancher-metadata/metadata
go build -ldflags "-X main.GitSHA=LocalBuild" -o "rancher-gen"
