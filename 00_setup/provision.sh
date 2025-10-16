#! /bin/sh

#set -e

PROJECT_ID="MY_PROJECT_ID"

echo "Set Project ID"
gcloud config set project $PROJECT_ID

echo "Enabling container.googleapis.com"
gcloud services enable container.googleapis.com

echo "Creating cluster"
gcloud container clusters workshop --location=us-central1

echo "Getting credentials for the cluster"
gcloud container clusters get-credentials workshop --location=us-central1

echo "Create the Node Pool"
gcloud container node-pools create workshop-nodepool --cluster workshop --zone us-central1-a --num-nodes 1 --machine-type "e2-medium" --enable-autoscaling --min-nodes=1 --max-nodes=1 --management 'auto-upgrade=true,auto-repair=true'

PROJECT_NUMBER=$(gcloud config get-value project)
PROJECT_ID=$(gcloud projects describe $PROJECT_NUMBER --format="value(projectNumber)")
echo "Retrieved project id: $PROJECT_ID"
