# Microservices Deployment Project

## Overview
This project aims to deploy a microservices-based application using Kubernetes and Infrastructure as Code (IaaC) approach, with an emphasis on readability, maintainability, and DevOps practices. The application is based on the Socks Shop example microservice application, and the deployment is orchestrated using various tools such as Terraform, Ansible, Helm, and GitLab CI/CD. The deployment includes setting up a Kubernetes cluster, configuring network security, implementing monitoring and logging solutions, and automating the deployment process.

## Project Structure
The project directory structure is organized as follows:
~~~
├── ansible
│   ├── common
│   │   └── tasks
│   │       └── main.yaml
│   ├── deploy
│   │   └── tasks
│   │       └── main.yaml
│   └── vault
│       └── tasks
│           └── main.yaml
├── helm
│   └── sock-shop
│       ├── chart.yaml
│       ├── templates
│       │   ├── deployment.yaml
│       │   └── service.yaml
│       └── values.yaml
├── kubernetes
│   ├── cert-manager
│   │   └── cert-manager.yaml
│   ├── ingress
│   │   └── ingress.yaml
│   └── network-policies
│       └── sock-shop-policy.yaml
└── terraform
    ├── eks
    │   ├── main.tf
    │   ├── outputs.tf
    │   └── variables.tf
    ├── prometheus
    │   ├── main.tf
    │   ├── outputs.tf
    │   └── variables.tf
    └── vault
        ├── main.tf
        ├── outputs.tf
        └── variables.tf

~~~
## Project Components
- Ansible: Used for configuration management and automation.
- Terraform: Used for provisioning infrastructure on AWS.
- Helm: Utilized for managing Kubernetes applications via Helm charts.
- Kubernetes: Orchestrates the microservices application.
- GitLab CI/CD: Implements Continuous Integration and Deployment pipelines.
- Prometheus: Used for monitoring Kubernetes services.
- ELK Stack (Elasticsearch, Fluentd, Kibana): Collects, stores, and visualizes logs.
- Cert-Manager: Manages Let's Encrypt certificates for HTTPS termination.

## Deployment Process
1. Infrastructure Provisioning: Use Terraform to provision the Kubernetes cluster on AWS EKS.
2. Network Security: Implement network policies to secure the infrastructure.
3. Monitoring: Deploy Prometheus for monitoring Kubernetes services and define alerting rules.
4. Logging: Deploy the ELK Stack (Elasticsearch, Fluentd, Kibana) for log collection and visualization.
5. CI/CD Pipeline: Utilize GitLab CI/CD for automated deployment, including linting, testing, building Docker images, and deploying to Kubernetes.
6. Secrets Management: Use Ansible Vault for encrypting and managing sensitive information.
7. Microservices Deployment: Deploy microservices using Helm charts, parameterized for easy customization and updates.
8. HTTPS Termination: Setup Ingress Controller for HTTPS termination and obtain Let's Encrypt certificates.
9. Additional Configurations: Implement Kubernetes Network Policies, Ingress rules, and integrate with Ansible Vault for secure automation.

## Getting Started
To deploy the microservices application:

1. Set up the required tools and dependencies (Terraform, Ansible, Helm, etc.).
2. Configure AWS credentials and variables in Terraform.
3. Run Terraform scripts to provision the Kubernetes cluster.
4. Configure network security, monitoring, logging, and CI/CD pipelines.
5. Deploy microservices using Helm charts with customized configurations.
6. Configure HTTPS termination and obtain Let's Encrypt certificates.
7. Manage secrets securely using Ansible Vault.
8. Monitor the deployed services using Prometheus.
9. Collect and visualize logs using the ELK Stack.
    
## Deployment Instructions
To deploy the microservices-based application, follow these steps:

### 1. Provision Infrastructure
- Use Terraform to provision the Kubernetes cluster, networking components, and monitoring tools.
  ```bash
  cd terraform/
  terraform init
  terraform apply

### 2. Deploy Microservices
- Use Ansible to deploy the microservices to the Kubernetes cluster.
  cd ansible/playbooks/
  ansible-playbook deploy.yaml

### 3. Configure Network Security
- Apply Kubernetes network policies to restrict traffic between microservices.
  kubectl apply -f kubernetes/network-policies/sock-shop-policy.yaml

### 4. Setup Ingress Controller
- Apply Kubernetes ingress rules to control access to services.
  kubectl apply -f kubernetes/ingress/ingress.yaml

### 5. Deploy Monitoring and Logging
- Deploy Prometheus, Grafana, Fluentd, Elasticsearch, and Kibana using Helm or Kubernetes manifests.
- Configure Prometheus to scrape metrics from Kubernetes services and define alerting rules.
- Configure Fluentd to forward logs to Elasticsearch.
  
### 6. Automate with CI/CD
- Set up GitLab CI/CD pipeline to automate linting, testing, building Docker images, and deploying to Kubernetes.
- Integrate with Ansible Vault to manage secrets securely during the CI/CD process.

## Additional Considerations
- Modularize Terraform Configurations: Terraform configurations are modularized for better maintainability.
- Documentation: Thorough documentation is provided for infrastructure and deployment pipeline.
- Version Control: All infrastructure and deployment scripts are version-controlled using Git.
- Kubernetes Network Policies: Network policies are implemented to restrict traffic between microservices.
- Secrets Management: Sensitive data such as API keys, passwords, and certificates are encrypted using Ansible Vault.
- CI/CD Automation: The deployment process is automated using GitLab CI/CD, ensuring consistent and reliable deployments.

## Contributing
Contributions are welcome! Feel free to submit issues, suggestions, or pull requests
