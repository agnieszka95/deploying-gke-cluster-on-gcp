#! /bin/sh

#set -e

PROJECT_ID="MY_PROJECT_ID"
export PROJECT_ID

echo "Set Project ID"
gcloud config set project "$PROJECT_ID"

echo "Enabling container.googleapis.com"
gcloud services enable container.googleapis.com

ZONE="us-west1-a"

echo "Creating cluster 'workshop' with 1 e2-micro node in zone $ZONE"
gcloud container clusters create workshop --zone=$ZONE --num-nodes=1 --machine-type="e2-micro" --release-channel="regular" --enable-autoscaling --min-nodes=1 --max-nodes=2

echo "Getting credentials for the cluster"
gcloud container clusters get-credentials workshop --region=us-west1-a
