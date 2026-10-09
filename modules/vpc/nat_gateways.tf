# =============================================================
# modules/vpc/nat_gateways.tf
# Environment: dev  |  ManagedBy: terraform
# NOTE: EIPs are defined in eip.tf — referenced here by name.
# =============================================================

# --- NAT Gateway: security-nat ---
# VPC: security-vpc | Subnet: security-public-2a
resource "aws_nat_gateway" "security_nat" {
  allocation_id = aws_eip.security_nat_eip.id
  subnet_id     = "subnet-0edb5e24493ea9804"
  tags          = { Name = "security-nat", Environment = "dev", ManagedBy = "terraform", Project = "dbi360" }
}

# --- NAT Gateway: dbi360-dev-stage-nat ---
# VPC: dbi360-dev-stage-vpc | Subnet: dbi360-dev-stage-subnet-public1-us-east-2a
resource "aws_nat_gateway" "dbi360_dev_stage_nat" {
  allocation_id = aws_eip.dbi360_dev_stage_nat_eip.id
  subnet_id     = "subnet-0e4b966ab7e6a80ad"
  tags          = { Name = "dbi360-dev-stage-nat", Environment = "dev", ManagedBy = "terraform", Project = "dbi360" }
}

