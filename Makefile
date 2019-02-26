#!/bin/bash

rm -rf client && mkdir client
find proto -name '*.proto' | xargs -IXXX protoc --go_out=plugins=grpc:client XXX
