# Deploying GKE cluster on GCP

This repository contains everything that is needed for "Google Cloud SpeedRun: Rapid Labs Onboarding" workshop. It provides necessaary scripts and code samples to ensure smooth experience during workshop.

## Links

- [Credits Claim](http://trygcp.dev/e/event-id)

## Useful commands
- `git clone https://github.com/scaliby/deploying-ml-models-on-gke.git` - clones the repository
- `./00_setup/provision.sh` - runs projects provisioning
- `./02_deployment/deploy.sh` - builds, pushes, and deploys on GKE
- `kubectl get pods` - lists pods on Kubernetes
- `kubectl get deployment` - lists deployments on Kubernetes
- `kubectl get svc` - lists services (can be used to retrieve LB IP) 
- `kubectl get hpa` - lists HPA's
