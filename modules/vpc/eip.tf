# =============================================================
# modules/vpc/eip.tf
# ALL 17 Elastic IPs — us-east-2
# Environment: dev  |  ManagedBy: terraform
# Single source of truth for all EIPs.
# NAT Gateway references use aws_eip.<name>.id
# =============================================================

# --- Network Interface: eni-0895ab5cac44befed | 16.59.176.174 ---
resource "aws_eip" "eip_39f12f5d" {
  domain = "vpc"
  tags = {
    Environment = "dev"
    ManagedBy = "terraform"
    Project = "dbi360"
  }
}

# --- Network Interface: eni-0e6bef66d370e3ab8 | 16.59.31.105 ---
resource "aws_eip" "eip_1cd1688a" {
  domain = "vpc"
  tags = {
    Environment = "dev"
    ManagedBy = "terraform"
    Project = "dbi360"
  }
}

# --- Network Interface: eni-031b59d271b3742be | 18.119.73.167 ---
# --- EC2 Instance: i-06890b67524f398ea | 18.188.17.114 ---
resource "aws_eip" "eip_5bb4fd6d" {
  domain = "vpc"
  tags = {
    Environment = "dev"
    ManagedBy = "terraform"
    Project = "dbi360"
  }
}

# --- NAT Gateway: dbi360-dev-stage-nat | 18.190.41.11 ---
resource "aws_eip" "dbi360_dev_stage_nat_eip" {
  domain = "vpc"
  tags = {
    Name = "dbi360-dev-stage-nat-eip"
    Environment = "dev"
    ManagedBy = "terraform"
    Project = "dbi360"
  }
}

# --- Network Interface: eni-045af10a97c6b3fc6 | 18.216.30.35 ---
resource "aws_eip" "eip_1ed86640" {
  domain = "vpc"
  tags = {
    Environment = "dev"
    ManagedBy = "terraform"
    Project = "dbi360"
  }
}

# --- Network Interface: eni-0ce1b851550d6c9d8 | 18.221.65.196 ---
# --- Unassociated: WARNING: not attached | 18.222.91.174 ---
# --- Network Interface: eni-0dc380be6a72f62ce | 18.226.239.43 ---
resource "aws_eip" "security_nat_eip" {
  domain = "vpc"
  tags = {
    Name = "security-nat-eip"
    Environment = "dev"
    ManagedBy = "terraform"
    Project = "dbi360"
  }
}

# --- Network Interface: eni-0eb75a30afb0e1076 | 3.13.69.215 ---
resource "aws_eip" "eip_ddf92523" {
  domain = "vpc"
  tags = {
    Environment = "dev"
    ManagedBy = "terraform"
    Project = "dbi360"
  }
}

# --- EC2 Instance: i-023c71b4f9cf1113c | 3.136.235.145 ---
resource "aws_eip" "github_actions_runner" {
  domain = "vpc"
  tags = {
    Name = "github-actions-runner"
    Environment = "dev"
    ManagedBy = "terraform"
    Project = "dbi360"
  }
}

# --- Unassociated: WARNING: not attached | 3.16.184.89 ---
# --- Network Interface: eni-08660dc6a2b240d50 | 3.21.13.166 ---
# --- Network Interface: eni-09bdc4d582f220d9c | 77.113.106.108 ---
resource "aws_eip" "eip_044115db" {
  domain = "vpc"
  tags = {
    Environment = "dev"
    ManagedBy = "terraform"
    Project = "dbi360"
  }
}

