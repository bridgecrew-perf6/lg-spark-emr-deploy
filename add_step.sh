#! /usr/bin/bash

if [[ -z $CLUSTER_ID && -f .cluster_id ]]; then
    echo "Reading cluster ID from .cluster_id"
    CLUSTER_ID=$(jq '.ClusterId' .cluster_id | tr -d '"')
fi

if [ $# -ne 1 ]; then
    echo "Usage: ./add_step.sh <steps-file-path>"
    exit
fi

aws emr add-steps \
    --cluster-id $CLUSTER_ID \
    --steps file://$1
