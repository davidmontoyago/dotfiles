#!/bin/sh

# init workspace
GOWORKSPACE="$HOME/projects/go/src/github.com/davidmontoyago"
test -d "$GOWORKSPACE" || mkdir -p "$GOWORKSPACE"
test -d "$HOME/bin" || mkdir -p "$HOME/bin"

# protoc go plugin
go get -u github.com/golang/protobuf/protoc-gen-go
