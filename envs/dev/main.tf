# =============================================================
# envs/dev/main.tf
# Environment: dev
# Region: us-east-2
# ManagedBy: terraform
# =============================================================

module "vpc" {
  source     = "../../modules/vpc"
  aws_region = var.aws_region
  vpc_id      = "vpc-09a55f1c24c5673a4"
  environment = "dev"

  providers = {
    aws            = aws
    aws.us_east_1  = aws.us_east_1
    aws.ap_south_1 = aws.ap_south_1
    aws.us_west_1  = aws.us_west_1
    aws.us_west_2  = aws.us_west_2
  }
}

module "ec2" {
  source = "../../modules/ec2"
}

module "iam" {
  source = "../../modules/iam"
}

module "ecr" {
  source = "../../modules/ecr"
}

module "ecs_development" {
  source      = "../../modules/ecs/development"
  aws_region  = var.aws_region
  environment = "development"
}

#module "ecs_staging" {
# source      = "../../modules/ecs/staging"
#  aws_region  = var.aws_region
#  environment = "staging"
#}

#module "ecs_testing" {
#  source      = "../../modules/ecs/testing"
#  aws_region  = var.aws_region
#  environment = "testing"
#}

#module "ecs_idle" {
#  source      = "../../modules/ecs/idle"
#  aws_region  = var.aws_region
#  environment = "idle"
#}
