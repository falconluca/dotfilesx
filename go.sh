#!/bin/bash

export GOPROXY=https://goproxy.cn,direct
export GOPRIVATE=*.cds8.cn
export GO111MODULE=on
export GOSUMDB=off
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH

export goapp="$GOPATH/bin"

echo -e "\n🐳 ==> Go:"
go version | awk '{print $3}'
echo "GOPATH: $(go env GOPATH)"
echo "GOARCH: $(go env GOARCH)"
echo "GO111MODULE: $(go env GO111MODULE)"
echo "GOPROXY: $(go env GOPROXY)"
echo "GOPRIVATE: $(go env GOPRIVATE)"
