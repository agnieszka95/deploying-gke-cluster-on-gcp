# Deploying GKE cluster on GCP

This repository contains everything that is needed for "Google Cloud SpeedRun: Rapid Labs Onboarding" workshop. It provides necessaary scripts and code samples to ensure smooth experience during workshop.

## Links

- [Credits Claim](http://trygcp.dev/e/devfest-prague-2025)

## Useful commands
- `git clone https://github.com/agnieszka95/deploying-gke-cluster-on-gcp.git` - clones the repository
- `chmod +x ./deploying-gke-cluster-on-gcp/00_setup/provision.sh` - make file executable
- `./deploying-gke-cluster-on-gcp/00_setup/provision.sh` - runs projects provisioning
- `./01_deployment/deployment.yaml` - GKE deployment
- `kubectl touch -f deployment.yaml` - create deployment
- `kubectl get pods` - lists pods on Kubernetes
- `kubectl get deployment` - lists deployments on Kubernetes 
