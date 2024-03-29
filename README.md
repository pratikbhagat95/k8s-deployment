# Kubernetes Deployment Templates

This repository contains a collection of Kubernetes manifest files for spring boot applications. These files are designed to simplify the process of deploying applications on Kubernetes clusters on local machine using docker desktop.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Usage](#usage)


## Prerequisites

Before using these templates, ensure that you have the following prerequisites:

- A running Kubernetes cluster on local machine using docker desktop
- `kubectl` command-line tool installed and configured to connect to your Kubernetes cluster

## Usage

1. Clone the repository:

   ```bash
   git clone https://github.com/pratikbhagat95/k8s-deployment.git

2. Get into repository:
    ```bash
    cd k8s-deployment

3. Run kubernetes file:
    ```bash
    kubectl apply -f manifest_files_k8s/

4. Check application in browser:
    ```bash
    http://localhost:30002

5. Check DB:
    ```bash
    http://localhost:30005
