#! /usr/bin/bash

if [ -z $CLUSTER_ID ]; then
    echo "Please set CLUSTER_ID as env. variable"
    exit
fi

if [ $# -ne 1 ]; then
    echo "Usage: ./add_step.sh <steps-file-path>"
    exit
fi

aws emr add-steps \
    --cluster-id $CLUSTER_ID \
    --steps file://$1
