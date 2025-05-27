# Minio Helm Charts for Homelab

This repository contains independent Helm charts for deploying and managing Minio in a Homelab environment. Minio is a high-performance, S3 compatible object storage solution.

## Features

- Customizable Helm charts tailored for Homelab setups.
- Simplified deployment of Minio on Kubernetes clusters.
- Support for GitOps workflows to manage Kubernetes resources.

## Prerequisites

- Kubernetes cluster (v1.20 or later recommended).
- Helm (v3 or later).
- Basic knowledge of Kubernetes and Helm.

## Installation

1. Add dependencies to your Helm repositories:

```bash
helm dependency build
```

2. Create the namespace for Minio if it doesn't exist:

```bash
kubectl apply -f dev/namespace.yaml
```

Check the namespace: [dev/namespace.yaml](dev/namespace.yaml)

3. Install the chart:
```bash
helm install minio . --values dev/values.yaml --namespace minio
```

4. Customize the chart values [dev/values.yaml](dev/values.yaml) to suit your environment.

5. Upgrade the deployment:

```bash
helm upgrade minio . --values dev/values.yaml --namespace minio
```

## Automated Deployment via ArgoCD

This repo is configured to deploy Minio via ArgoCD. The [dev/application.yaml](dev/application.yaml) manifests defines the deployment to ArgoCD.