# 🌍 Terraform Infrastructure Modules

This repository contains **Terraform configurations** for provisioning and managing cloud infrastructure across various environments (AWS, GCP, etc.).

---

## 📂 Structure

| Directory | Purpose |
|-----------|---------|
| `aws/`          | Terraform modules for AWS (e.g., EC2, VPC, S3) |
| `gcp/`          | Terraform modules for Google Cloud Platform (if applicable) |
| `modules/`      | Reusable infrastructure modules |
| `environments/` | Environment-specific configurations (e.g., dev, prod) |

---

## 🧰 Requirements

- [Terraform](https://www.terraform.io/) 1.0+
- Cloud CLI tools (e.g., `aws`, `gcloud`) configured
- Backend setup (optional): S3 + DynamoDB (AWS) or GCS + Cloud Storage Bucket (GCP)

---

## 🚀 Getting Started

```bash
cd aws/ec2-example/
terraform init
terraform plan
terraform apply
