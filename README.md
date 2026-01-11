# 🚀 Terraform S3 Bucket Project (AWS)

This project demonstrates how to provision an Amazon S3 bucket in the ap-southeast-1 (Singapore) region using Terraform.
Since S3 bucket names must be globally unique, this implementation automatically appends a random hexadecimal suffix to the bucket name to prevent naming conflicts during repeated deployments.

## 🧱 What This Project Creates

✅ Amazon S3 Bucket
firstproject-s3-bucket-<random-suffix>

## 📁 Project Overview
providers.tf

Defines the cloud provider (AWS)

Locks Terraform version to ensure consistency:

Terraform ~> 1.7

Configures AWS region:

ap-southeast-1 (Singapore)

## s3.tf

Generates a unique suffix using the random_id resource

Creates an S3 bucket with a globally unique name

Outputs the final bucket name after deployment

## 🔄 Implementation Steps (Steps-by-steps)

### Step 1 : Format Terraform files

Formats all .tf files to standard Terraform style

```bash
terraform fmt
```

### Step 2 : Initialize the project

Downloads providers and sets up Terraform working directory.

```bash
terraform init
```

### Step 3 : Validate configuration

Checks whether the Terraform code is syntactically valid.

```bash
terraform validate
```

### Step 4 : Create an execution plan

Shows what Terraform will create before applying.

```bash
terraform plan
```

### Step 5 : Apply (Provision resources)

Creates the S3 bucket in AWS.

```bash
terraform apply
```

## 📤Output :

bucket_name = "firstproject-s3-bucket-<random_suffix>"


## 🧹Cleanup (Destroy Resources)

```bash
terraform destroy
```

## ✅ Key Learning Outcomes

- Infrastructure as Code (IaC) using Terraform
- Terraform provider configuration and version locking
- AWS S3 bucket creation and global naming constraints
- Dynamic resource naming using random_id
- End-to-end Terraform workflow (fmt, init, validate, plan, apply)
- Terraform outputs for resource visibility
- AWS region configuration and deployment awareness
- Safe resource cleanup using terraform destroy
