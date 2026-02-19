#!/bin/sh
set -eu

# init workspace
GOWORKSPACE="$HOME/projects/go/src/github.com/davidmontoyago"

mkdir -p "$GOWORKSPACE"
mkdir -p "$HOME/bin"

# delve debugger
go install github.com/go-delve/delve/cmd/dlv@latest

# protoc go plugin
go install github.com/golang/protobuf/protoc-gen-go@latest
