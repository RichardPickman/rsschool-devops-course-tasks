# Description

This repository uses Terraform to manage infrastructure.

## Prerequisites

- Terraform installed (version [minimum version required])
- A provider configuration for your cloud provider (e.g., AWS, GCP, Azure)

## Getting Started

Clone the repository:

```bash
git clone github.com/richardpickman/rsschool-devops-course-tasks
```

Navigate to the project directory:

```bash
cd  rsschool-devops-course-tasks
```

## Initialize Terraform:

Initialize the Terraform configuration:

```bash
terraform init
```

This command downloads the necessary plugins and providers for your configuration.

Format the Terraform code:

```bash
terraform fmt
```

This ensures that the code adheres to the official Terraform style guidelines.

## Applying Changes

Review the plan:

```bash
terraform plan
```

This command generates a preview of the changes that will be made to your infrastructure.

Apply the changes:

```bash
terraform apply
```

This command executes the plan and applies the changes to your infrastructure.

Destroying the infrastructure:

```bash
terraform destroy
```
