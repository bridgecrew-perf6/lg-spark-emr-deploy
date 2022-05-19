#! /usr/bin/bash

if [ -z $CLUSTER_ID ]; then
    echo "Please set CLUSTER_ID as env. variable"
    exit
fi
aws emr add-steps \
    --cluster-id $CLUSTER_ID \
    --steps file://steps.json
