#!/bin/bash

export GOPROXY=https://goproxy.io

WKDIR=`cd $(dirname $0) && pwd`
DATAPATH=$WKDIR/data
echo "[Data Path] $DATAPATH"
if [ ! -d $DATAPATH ]; then
    echo "No Data Folder, Create One"
    mkdir $DATAPATH
    mkdir $DATAPATH/objects
fi 
echo "Building"
sh $WKDIR/build.sh

echo "Starting Server at `date`"
LISTEN_ADDRESS=:8778 STORAGE_ROOT=$DATAPATH $WKDIR/simple-server
echo "Server Stopped at `date`"