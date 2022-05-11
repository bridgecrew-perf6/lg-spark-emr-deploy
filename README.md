# Spark deploy.

## Prerequisites
* [ASW cli](https://aws.amazon.com/cli/)
* I assume you have the AWS credentials to account 122035675440 in place.

## Deploying and running the jobs to EMR.
The project creates an EMR cluster on the fly, and deploys two spark jobs (in two steps) to it.
Prior to activation, make sure the correct jars are deployed remotely into `s3://lzg-dev-jars/`

At the moment, since we lack proper CI-CD support,
we need to deploy those manually.

[data digestion job](https://github.com/LazyGoatTV/lg-raw-data-processing),
and [model training job](https://github.com/LazyGoatTV/lg-streamers-recommendataion)
are the repositories that contains the code in the` steps.
Once cloned into the local disk, type `make deploy` from the root directory.

Finally, type `/create-cluster.sh` to create the cluster, and run the steps.
