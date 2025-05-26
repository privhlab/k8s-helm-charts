# CSI-Driver Helm Charts for Homelab

This repository contains independent Helm charts for deploying and managing CSI-Driver in a Homelab environment. CSI-Driver is a Container Storage Interface driver that allows Kubernetes to manage storage resources.

## Features

- Customizable Helm charts tailored for Homelab setups.
- Simplified deployment of Metallb on Kubernetes clusters.
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

2. Install the chart:
```bash
helm install csi-driver-nfs . --values dev/values.yaml --namespace kube-system
```

3. Customize the chart values [dev/values.yaml](dev/values.yaml) to suit your environment.

4. Upgrade the deployment:

```bash
helm upgrade csi-driver-nfs . --values dev/values.yaml --namespace kube-system
```

## Automated Deployment via ArgoCD

This repo is configured to deploy CSI via ArgoCD. The [dev/application.yaml](dev/application.yaml) manifests defines the deployment to ArgoCD.