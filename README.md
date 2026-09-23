# terraform-iac

Terraform IaC for dbi360 — managed infrastructure across dev and prod environments.

## Structure
- `envs/dev/` — Dev environment root module
- `envs/prod/` — Prod environment root module
- `modules/` — Reusable modules (vpc, ec2, rds, s3, lambda, security-groups)

## Backend
- State: S3 bucket `dbi360-devtest-terraform-state` (us-east-2)
- Locking: DynamoDB table `dbi360-devtest-terraform-locks`
