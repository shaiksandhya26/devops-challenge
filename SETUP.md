This guide explains how to fully set up and run the infrastructure, CI/CD pipeline, Kubernetes cluster, and deployment defined in this repository.

#### 1. Prerequisites


Install the following:

### Required Tools

Terraform                - Infrastructure provisioning
Docker                   - Build and run container images
Kubectl                  - Managing Kubernetes
tfsec                    - Terraform security scanning
Minikube or EKS          - Cluster management
Jenkins                  - CI/CD

#### 2. Infrastructure Setup (Choose One)

- AWS Cloud
  1. Need AWS account
  2. Access-Key
  3. Secret-Key
  4. Terraform modules for VPC, EKS, and IAM
  5. Jenkins
  6. ECR

- Local setup
  1. Docker-Desktop
  2. kubectl
  3. jenkins
  4. Minikube
  5. Local Registry
  6. Terraform


