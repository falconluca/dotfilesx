#!/bin/bash

export GOPROXY=https://goproxy.cn,direct
export GOPRIVATE=*.cds8.cn
export GO111MODULE=on
export GOSUMDB=off
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH

export goapp="$GOPATH/bin"

echo "🐳 ==> GO:"
go version
echo "GOPATH: $(go env GOPATH)"
