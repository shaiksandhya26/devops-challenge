
#### This repository contains the full implementation of the DevOps Home Challenge, which includes:

- Infrastructure as Code using Terraform
- CI/CD pipeline using Jenkins
- Kubernetes deployment using manifests or Helm
- Security scanning for IaC and container images
- Documentation, architecture, and setup instructions

The goal of this project is to demonstrate end-to-end DevOps processes, including provisioning, automation, deployment, and security.

#### Project Structure

devops-challenge/
│
├── README.md                    # Main documentation
├── SETUP.md                     # Detailed setup instructions
├── ARCHITECTURE.md              # Architecture decisions
│
├── terraform/                   # Infrastructure as Code
│   ├── modules/                 # Reusable Terraform modules
│   │   ├── networking/
│   │   ├── kubernetes/
│   │   └── security/
│   ├── environments/            # Environment-specific configs
│   │   ├── local/
│   │   ├── staging/
│   │   └── production/
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   └── versions.tf
│
├── jenkins/                     # CI/CD Configuration
│   ├── Jenkinsfile              # Main pipeline
│   ├── scripts/                 # Helper scripts
│   └── plugins.txt              # Required Jenkins plugins
│
├── kubernetes/                  # K8s Deployments
│   ├── manifests/               # Raw YAML files
│   │   ├── staging/
│   │   └── production/
│   ├── helm-chart/              # Helm chart (if chosen)
│   │   ├── Chart.yaml
│   │   ├── values.yaml
│   │   └── templates/
│   └── kustomize/               # Kustomize overlays (optional)
│
├── application/                 # Sample Application
│   ├── src/                     # Application source code
│   ├── Dockerfile
│   ├── docker-compose.yml       # Local development
│   └── requirements.txt         # Dependencies
│
├── monitoring/                  # Observability (bonus)
│   ├── prometheus/
│   ├── grafana/
│   └── alerting/
│
├── security/                    # Security configurations
│   ├── policies/                # Security policies
│   ├── scans/                   # Security scan configs
│   └── certificates/            # TLS certificates
│
├── scripts/                     # Automation scripts
│   ├── setup-local.sh           # Local environment setup
│   ├── deploy.sh                # Deployment helper
│   └── cleanup.sh               # Environment cleanup
│
└── docs/                        # Additional documentation
    ├── images/                  # Architecture diagrams
    ├── troubleshooting.md
    └── best-practices.md

#### Part-1 Infrastructure

- Modularized Terraform code  
- Environment separation (staging/prod)
- Support for AWS EKS or local (Minikube/Kubernetes)  
- IaC security scanning using tfsec or checkov

#### Part-2 CI/CD (Jenkins)

Pipelines Includes

1. Code checkout  
2. Terraform static scanning  
3. Docker build & push  
4. Image vulnerability scanning  
5. Kubernetes deployment (Helm or manifests)  
6. Promotion + manual approvals  

#### Part 3 – Kubernetes

- Environment-specific namespaces  
- ConfigMaps, Secrets, probes, and resource limits  
- Optional HPA & autoscaling  

#### Part 4 – Security

- IaC scanning (tfsec/checkov)
- Least-privilege IAM (AWS)
- Secret management (Jenkins + K8s Secrets)

#### Documentation Included

- SETUP.md → Step-by-step setup to run the project  
- ARCHITECTURE.md → Architecture diagrams, decisions, tradeoffs  
- Troubleshooting → Fix common issues  
- Best Practices → Security, structure, standards  

#### How to Run the Project

See SETUP.md for:

- Terraform environment setup  
- Jenkins installation and configuration  
- Running Kubernetes locally or in AWS  
- Deploying the sample application  
- Testing the CI/CD pipeline 

#### Evalution Readiness

This project includes everything required for a technical walkthrough:

- Working Terraform modules  
- Working Jenkins CI/CD pipeline  
- Live Kubernetes deployment  
- Security scanning reports  
- Architecture documentation 






