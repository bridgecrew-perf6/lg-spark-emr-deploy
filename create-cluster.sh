#! /usr/bin/bash

aws emr create-cluster \
    --name "Spark cluster for data digestion" \
    --release-label "emr-6.5.0" \
    --applications Name=Spark \
    --steps file://steps.json \
    --use-default-roles  \
    --ec2-attributes SubnetId=subnet-0ad138931468c444f \
    --instance-fleets file://fleets.json \
    --log-uri s3://lzg-dev-logs/ \
    --auto-termination-policy IdleTimeout=300 \
 | tee .cluster_id
