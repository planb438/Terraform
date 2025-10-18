[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Platform](https://img.shields.io/badge/platform-Ubuntu%2022.04%2B-lightgrey)](#)
[![Kubernetes](https://img.shields.io/badge/Kubernetes-MicroK8s%20%7C%20kubeadm-blue)](#)
[![YouTube](https://img.shields.io/badge/YouTube-TechShorts-red)](https://www.youtube.com/@adaribain)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-Adari%20Bain-blue)](https://www.linkedin.com/in/adari-bain-298924152/)


# AWS Terraform Infrastructure

This repository contains a Terraform configuration to provision basic AWS infrastructure, including a **VPC**, **EC2 instance**, and an **S3 bucket**. The infrastructure is modular, allowing for easy reuse and extension.

## Project Structure

✅ Summary Tree



aws-terraform-infra/
-
├── backend.tf # S3 backend configuration for Terraform state

-
├── main.tf # Root Terraform configuration that includes all modules

-
├── outputs.tf # Root outputs exposed from the modules

-
├── provider.tf # AWS provider configuration

-
├── terraform.tfvars # Default variable values for the environment

-
├── variables.tf # Input variables for the root configuration

-
├── modules/

-
│ ├── vpc/ # VPC module

-
│ │ ├── main.tf # VPC creation (subnet, internet gateway, etc.)

-
│ │ ├── outputs.tf # VPC module outputs (e.g., VPC ID)

-
│ │ └── variables.tf # VPC module input variables (e.g., CIDR block)

-
│ ├── ec2/ # EC2 module

-
│ │ ├── main.tf # EC2 instance creation

-
│ │ ├── outputs.tf # EC2 module outputs (e.g., instance ID)

-
│ │ └── variables.tf # EC2 module input variables (e.g., AMI ID, instance type)

-
│ └── s3/ # S3 module

-
│ ├── main.tf # S3 bucket creation

-
│ ├── outputs.tf # S3 module outputs (e.g., bucket ARN)

-
│ └── variables.tf # S3 module input variables (e.g., bucket name)

-
└── environments/

-
├── dev/ # Development environment configuration

-
│ ├── main.tf # Dev environment module call

-
│ └── terraform.tfvars # Variable values for Dev environment

-
└── prod/ # Production environment configuration

-
├── main.tf # Prod environment module call

-
└── terraform.tfvars # Variable values for Prod environment

markdown
Copy
Edit

## Requirements

- **Terraform** (v0.12 or later)
- **AWS Account** with proper credentials set up

## How to Use

### 1. Install Terraform

Ensure Terraform is installed. You can follow the [installation guide](https://learn.hashicorp.com/tutorials/terraform/install-cli).

### 2. Configure AWS Credentials

Terraform will use your AWS credentials. You can configure them using the AWS CLI:

```bash
aws configure
Alternatively, you can export them as environment variables:

bash
Copy
Edit
export AWS_ACCESS_KEY_ID="your_access_key_id"
export AWS_SECRET_ACCESS_KEY="your_secret_access_key"
export AWS_DEFAULT_REGION="us-east-1"
3. Initialize the Terraform Project
Navigate to the root of the repository and initialize the project:

bash
Copy
Edit
terraform init
4. Apply the Configuration
To provision the resources, run:

bash
Copy
Edit
terraform apply
Terraform will prompt you to confirm the action. Type yes to proceed.

5. Environment-Specific Configuration
You can manage separate environments like dev and prod by applying configurations from the environments/ folder.

For example, to deploy the infrastructure for the dev environment:

bash
Copy
Edit
cd environments/dev
terraform init
terraform apply
You can do the same for prod.

6. Clean Up
To destroy the infrastructure, run:

bash
Copy
Edit
terraform destroy
Output
After the resources are applied, the following outputs will be displayed:

vpc_id – The ID of the VPC.

ec2_instance_id – The ID of the EC2 instance.

s3_bucket_arn – The ARN of the created S3 bucket.


yaml
Copy
Edit

---

This `README.md` provides a clean, structured overview of your Terraform infrastructure project. You can now add it to your GitHub repository. 

Would you like me to regenerate the updated repo with the `README.md` file included and zip it for download?
