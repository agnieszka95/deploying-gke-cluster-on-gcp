#! /bin/sh

#set -e

PROJECT_ID="MY_PROJECT_ID"
export PROJECT_ID

echo "Set Project ID"
gcloud config set project "$PROJECT_ID"

echo "Enabling container.googleapis.com"
gcloud services enable container.googleapis.com

echo "Creating cluster"
gcloud container clusters create workshop --region=us-central1 --num-nodes=1 --machine-type="e2-micro" --release-channel="regular" --enable-autoscaling --min-nodes=1 --max-nodes=2 # Setting a small range just in case

echo "Getting credentials for the cluster"
gcloud container clusters get-credentials workshop --region=us-central1
