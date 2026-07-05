# Terraform AWS Infrastructure with GitHub Actions CI/CD

## Project Overview

This project provisions a production-style AWS infrastructure using Terraform and automates deployments using GitHub Actions.

## Architecture

- Custom VPC
- Public Subnet
- Internet Gateway
- Route Table
- Route Table Association
- Security Group
- Ubuntu EC2 Instance
- Nginx Web Server (User Data)
- Remote Terraform State (Amazon S3)
- GitHub Actions CI
- GitHub Actions CD
- GitHub Actions Destroy Workflow

## Technologies Used

- Terraform
- AWS EC2
- AWS VPC
- AWS S3 (Remote Backend)
- IAM
- Git
- GitHub
- GitHub Actions
- Ubuntu Linux
- Nginx

## CI Pipeline

Automatically runs on every push to the `main` branch.

- Terraform Format
- Terraform Init
- Terraform Validate
- Terraform Plan

## CD Pipeline

Manual deployment using GitHub Actions.

Performs:

- Terraform Init
- Terraform Plan
- Terraform Apply

## Destroy Pipeline

Manual workflow to safely destroy all Terraform-managed infrastructure.

Performs:

- Terraform Init
- Terraform Destroy

## Remote State

Terraform state is stored securely in an Amazon S3 bucket.

Benefits:

- Shared state between developers and GitHub Actions
- Centralized state management
- Consistent infrastructure deployments

## Project Structure

```
terraform-aws-vpc-ec2/
│
├── .github/
│   └── workflows/
│       ├── terraform.yml
│       ├── terraform-cd.yml
│       └── terraform-destroy.yml
│
├── scripts/
│   └── userdata.sh
│
├── backend.tf
├── provider.tf
├── variables.tf
├── data.tf
├── vpc.tf
├── subnet.tf
├── igw.tf
├── routetable.tf
├── sgroup.tf
├── ec2.tf
├── outputs.tf
└── README.md
```

## Deployment:

```bash
terraform init
terraform plan
terraform apply
```

## Destroy Infrastructure

```bash
terraform destroy
```

## Future Enhancements

- Remote state locking
- Auto Scaling Group
- Application Load Balancer
- Private Subnets
- NAT Gateway
- Multi-AZ Deployment
- Terraform Modules
- GitHub OIDC Authentication
