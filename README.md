# Terraform AWS VPC and EC2 Infrastructure

## Project Overview

This project provisions a complete AWS infrastructure on AWS using Terraform. The infrastructure includes a custom VPC, public subnet, Internet Gateway, route table, security group, and an Ubuntu EC2 instance. Nginx is installed automatically using a User Data script.

## Architecture

Internet
    │
Internet Gateway
    │
Custom VPC (10.0.0.0/16)
    │
Public Subnet (10.0.1.0/24)
    │
Route Table
    │
Security Group
    │
Ubuntu EC2 Instance
    │
Nginx Web Server

## AWS Services Used

- Amazon VPC
- Internet Gateway
- Public Subnet
- Route Table
- Security Group
- Amazon EC2
- IAM Role
- Terraform
- Ubuntu 22.04
- Nginx

## Project Structure

```
terraform-vpc/
├── provider.tf
├── variables.tf
├── terraform.tfvars
├── vpc.tf
├── igw.tf
├── subnet.tf
├── routetable.tf
├── sgroup.tf
├── data.tf
├── ec2.tf
├── outputs.tf
├── .gitignore
├── README.md
└── scripts/
    └── userdata.sh
```

## Prerequisites

- AWS Account
- IAM Role or AWS CLI configured
- Terraform
- Git

## Deployment

```bash
terraform init
terraform plan
terraform apply
```

## Destroy Infrastructure

```bash
terraform destroy
```

## Features

- Infrastructure as Code (Terraform)
- Custom VPC
- Public Subnet
- Internet Gateway
- Route Table Association
- Security Group
- Ubuntu EC2 Instance
- Automatic Nginx Installation using User Data
- Outputs Public IP and DNS

## Outputs

After deployment, Terraform displays:

- VPC ID
- VPC ARN
- VPC CIDR
- Subnet ID
- EC2 Instance ID
- Public IP
- Public DNS

## Author

**Sangeetha S**
