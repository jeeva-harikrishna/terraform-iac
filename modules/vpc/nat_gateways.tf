# =============================================================
# modules/vpc/nat_gateways.tf - Phase 2 Import
# Environment: dev
# Region: us-east-2
# ManagedBy: terraform
# =============================================================

# --- EIP: security-nat | Public IP: 3.128.19.67 ---
resource "aws_eip" "security_nat_eip" {
  domain = "vpc"
  tags   = { Name = "security-nat-eip", Environment = "dev", ManagedBy = "terraform", Project = "dbi360" }
}

# --- NAT Gateway: security-nat ---
# VPC: security-vpc | Subnet: security-public-2a
resource "aws_nat_gateway" "security_nat" {
  allocation_id = aws_eip.security_nat_eip.id
  subnet_id     = "subnet-0edb5e24493ea9804"
  tags          = { Name = "security-nat", Environment = "dev", ManagedBy = "terraform", Project = "dbi360" }
}

# --- EIP: dbi360-dev-stage-nat | Public IP: 18.190.41.11 ---
resource "aws_eip" "dbi360_dev_stage_nat_eip" {
  domain = "vpc"
  tags   = { Name = "dbi360-dev-stage-nat-eip", Environment = "dev", ManagedBy = "terraform", Project = "dbi360" }
}

# --- NAT Gateway: dbi360-dev-stage-nat ---
# VPC: dbi360-dev-stage-vpc | Subnet: dbi360-dev-stage-subnet-public1-us-east-2a
resource "aws_nat_gateway" "dbi360_dev_stage_nat" {
  allocation_id = aws_eip.dbi360_dev_stage_nat_eip.id
  subnet_id     = "subnet-0e4b966ab7e6a80ad"
  tags          = { Name = "dbi360-dev-stage-nat", Environment = "dev", ManagedBy = "terraform", Project = "dbi360" }
}
