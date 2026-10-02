# =============================================================
# modules/vpc/variables.tf
# Environment: dev
# Region: us-east-2
# =============================================================

variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-2"
}

variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}
