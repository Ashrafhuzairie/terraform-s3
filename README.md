Terraform S3 Bucket Project (AWS)

This project creates an AWS S3 Bucket in ap-southeast-1 (Singapore) using Terraform.
To avoid S3 bucket naming conflicts (bucket names must be globally unique), it appends a random hex suffix to the bucket name.

What this project creates:

✅ S3 Bucket: firstproject-s3-bucket-<random-suffix>

providers.tf is where the cloud provider is define :
Locks Terraform version to ~> 1.7

s3.tf is where s3 bucket is define to generate random suffix using random_id,
create s3 bucket and prints the final bucket names.

🔄 Implementation Steps (Steps-by-steps)

1) Format Terraform files

Formats all .tf files to standard Terraform style

```bash
terraform fmt
```

2) Initialize the project

Downloads providers and sets up Terraform working directory.

```bash
terraform init
```

3) Validate configuration

Checks whether the Terraform code is syntactically valid.

```bash
terraform validate
```

4) Create an execution plan

Shows what Terraform will create before applying.

```bash
terraform plan
```

5) Apply (Provision resources)

Creates the S3 bucket in AWS.

```bash
terraform apply
```

Output :

bucket_name = "firstproject-s3-bucket-<random_suffix>"


Cleanup (Destroy Resources)

```bash
terraform destroy
```

✅ Key Learning Outcomes

Infrastructure as Code (IaC) using Terraform
Terraform provider configuration and version locking
AWS S3 bucket creation and global naming constraints
Dynamic resource naming using random_id
End-to-end Terraform workflow (fmt, init, validate, plan, apply)
Terraform outputs for resource visibility
AWS region configuration and deployment awareness
Safe resource cleanup using terraform destroy