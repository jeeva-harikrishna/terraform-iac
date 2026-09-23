variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-2"
}
variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}
variable "project" {
  description = "Project name"
  type        = string
  default     = "dbi360"
}
