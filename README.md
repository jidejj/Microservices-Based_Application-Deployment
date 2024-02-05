# Microservices-Based Application Deployment

## Overview
This project aims to deploy a microservices-based application using Kubernetes and Infrastructure as Code (IaaC) approach. The application is based on the Socks Shop example microservice application, and the deployment is orchestrated using various tools such as Terraform, Ansible, Helm, and GitLab CI/CD. The deployment includes setting up a Kubernetes cluster, configuring network security, implementing monitoring and logging solutions, and automating the deployment process.

## Project Structure
The project is structured as follows:
- `ansible/`: Contains Ansible playbooks and roles for deploying microservices and managing secrets.
- `helm/`: Contains Helm charts for the microservices.
- `kubernetes/`: Contains Kubernetes manifests for network policies, ingress rules, and cert-manager deployment.
- `terraform/`: Contains Terraform configurations for provisioning infrastructure such as EKS cluster, networking, and monitoring tools.
- `.gitlab-ci.yml`: GitLab CI/CD pipeline definition for automating the deployment process.
- `.ansible-vault-pass`: Ansible Vault password file.

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

## Contributors
Jide Olaniyan (olaniyanjide@hotmail.com)
