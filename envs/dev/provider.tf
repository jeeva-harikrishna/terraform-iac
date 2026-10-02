# =============================================================
# envs/dev/provider.tf
# Additional provider aliases for multi-region S3 buckets
# ManagedBy: terraform
# =============================================================

provider "aws" {
  alias  = "us_east_1"
  region = "us-east-1"
  default_tags {
    tags = {
      ManagedBy   = "Terraform"
      Environment = var.environment
      Project     = "dbi360"
    }
  }
}

provider "aws" {
  alias  = "ap_south_1"
  region = "ap-south-1"
  default_tags {
    tags = {
      ManagedBy   = "Terraform"
      Environment = var.environment
      Project     = "dbi360"
    }
  }
}

provider "aws" {
  alias  = "us_west_1"
  region = "us-west-1"
  default_tags {
    tags = {
      ManagedBy   = "Terraform"
      Environment = var.environment
      Project     = "dbi360"
    }
  }
}

provider "aws" {
  alias  = "us_west_2"
  region = "us-west-2"
  default_tags {
    tags = {
      ManagedBy   = "Terraform"
      Environment = var.environment
      Project     = "dbi360"
    }
  }
}
