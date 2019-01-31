#!/bin/bash

# cd ./src/main/protos && sh gen.sh
cd ./src/main/protos && $HOME/protobuf/bin/protoc --java_out=../gen/  ./core/*.proto ./api/*.proto
