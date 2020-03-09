#!/bin/bash

echo "Start Building `date`"
export GOPROXY=https://goproxy.io

echo "Remove useless modules..."
go mod tidy
echo "Building..."
go build
if [ $? -ne 0 ]; then
    echo "Build Failed! Please check the log."
    exit -1
fi
echo "Build Success at `date`"