#! /bin/bash

if [[ -z $CLUSTER_ID && -f .cluster_id ]]; then
    echo "Reading cluster ID from .cluster_id"
    CLUSTER_ID=$(jq '.ClusterId' .cluster_id | tr -d '"')
fi

echo "Terminating cluter $CLUSTER_ID"
aws emr terminate-clusters --cluster-ids $CLUSTER_ID
