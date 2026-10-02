# =============================================================
# modules/vpc/security_groups.tf - Phase 2 Import
# Environment: dev | Region: us-east-2 | ManagedBy: terraform
# vpc_id and description match AWS exactly - safe to import
# =============================================================

# -------------------------------------------------------------
# VPC: Default VPC (vpc-0d84fba11c63039b4)
# -------------------------------------------------------------

# Latest Kali Linux with GUI & 2500+ Kali tools & apps by Techlatest.net-2025.1-AutogenByAWSMP--1 | sg-042e559caf42fa5b9
resource "aws_security_group" "latest_kali_linux_with_gui_2500_kali_tools_apps_by_techlatest_net_2025_1_autogenbyawsmp_1" {
  name        = "Latest Kali Linux with GUI & 2500+ Kali tools & apps by Techlatest.net-2025.1-AutogenByAWSMP--1"
  description = "Latest Kali Linux with GUI & 2500+ Kali tools & apps by Techlatest.net-2025.1-AutogenByAWSMP--1 created 2025-06-18T05:39:34.706Z"
  vpc_id      = "vpc-0d84fba11c63039b4"
  tags        = { Name = "Latest Kali Linux with GUI & 2500+ Kali tools & apps by Techlatest.net-2025.1-AutogenByAWSMP--1", Environment = "dev", ManagedBy = "terraform", Project = "dbi360" }
}

# Meraki-VPN-Access-Only | sg-0866de6c66790e2cf
resource "aws_security_group" "meraki_vpn_access_only" {
  name        = "Meraki-VPN-Access-Only"
  description = "Allow SSH to Admin"
  vpc_id      = "vpc-0d84fba11c63039b4"
  tags        = { Name = "Meraki-VPN-Access-Only", Environment = "dev", ManagedBy = "terraform", Project = "dbi360" }
}

# clickhouse-new | sg-0253e9d7aabf21e09
resource "aws_security_group" "clickhouse_new" {
  name        = "clickhouse-new"
  description = "for click house"
  vpc_id      = "vpc-0d84fba11c63039b4"
  tags        = { Name = "clickhouse-new", Environment = "dev", ManagedBy = "terraform", Project = "dbi360" }
}

# default | sg-0a8dd9c7cfcdd8788
resource "aws_security_group" "default_default" {
  name        = "default"
  description = "default VPC security group"
  vpc_id      = "vpc-0d84fba11c63039b4"
  tags        = { Name = "default", Environment = "dev", ManagedBy = "terraform", Project = "dbi360" }
}

# ec2-rds-1 | sg-08924622f176f691c
resource "aws_security_group" "ec2_rds_1" {
  name        = "ec2-rds-1"
  description = "Security group attached to instances to securely connect to asterdevrds. Modification could lead to connection loss."
  vpc_id      = "vpc-0d84fba11c63039b4"
  tags        = { Name = "ec2-rds-1", Environment = "dev", ManagedBy = "terraform", Project = "dbi360" }
}

# etl_scrapper | sg-0d00485859b5f1d01
resource "aws_security_group" "etl_scrapper" {
  name        = "etl_scrapper"
  description = "for nexus"
  vpc_id      = "vpc-0d84fba11c63039b4"
  tags        = { Name = "etl_scrapper", Environment = "dev", ManagedBy = "terraform", Project = "dbi360" }
}

# launch-wizard-1 | sg-040763c16e3198cc9
resource "aws_security_group" "launch_wizard_1" {
  name        = "launch-wizard-1"
  description = "launch-wizard-1 created 2025-02-13T09:51:28.608Z"
  vpc_id      = "vpc-0d84fba11c63039b4"
  tags        = { Name = "launch-wizard-1", Environment = "dev", ManagedBy = "terraform", Project = "dbi360" }
}

# launch-wizard-2 | sg-088593c479be117e3
resource "aws_security_group" "launch_wizard_2" {
  name        = "launch-wizard-2"
  description = "launch-wizard-2 created 2025-01-10T15:15:39.476Z"
  vpc_id      = "vpc-0d84fba11c63039b4"
  tags        = { Name = "launch-wizard-2", Environment = "dev", ManagedBy = "terraform", Project = "dbi360" }
}

# launch-wizard-3 | sg-069612c0e8d5ab2e5
resource "aws_security_group" "launch_wizard_3" {
  name        = "launch-wizard-3"
  description = "launch-wizard-3 created 2025-01-16T12:03:06.199Z"
  vpc_id      = "vpc-0d84fba11c63039b4"
  tags        = { Name = "launch-wizard-3", Environment = "dev", ManagedBy = "terraform", Project = "dbi360" }
}

# launch-wizard-4 | sg-03c8ab8c802e06154
resource "aws_security_group" "launch_wizard_4" {
  name        = "launch-wizard-4"
  description = "launch-wizard-4 created 2025-01-17T07:52:15.565Z"
  vpc_id      = "vpc-0d84fba11c63039b4"
  tags        = { Name = "launch-wizard-4", Environment = "dev", ManagedBy = "terraform", Project = "dbi360" }
}

# launch-wizard-5 | sg-034065a2196523151
resource "aws_security_group" "launch_wizard_5" {
  name        = "launch-wizard-5"
  description = "launch-wizard-5 created 2025-01-20T06:35:08.463Z"
  vpc_id      = "vpc-0d84fba11c63039b4"
  tags        = { Name = "launch-wizard-5", Environment = "dev", ManagedBy = "terraform", Project = "dbi360" }
}

# launch-wizard-6 | sg-0a9aec7240f1bcb1d
resource "aws_security_group" "launch_wizard_6" {
  name        = "launch-wizard-6"
  description = "launch-wizard-6 created 2025-01-23T05:51:59.484Z"
  vpc_id      = "vpc-0d84fba11c63039b4"
  tags        = { Name = "launch-wizard-6", Environment = "dev", ManagedBy = "terraform", Project = "dbi360" }
}

# launch-wizard-7 | sg-03af5c88a285e2720
resource "aws_security_group" "launch_wizard_7" {
  name        = "launch-wizard-7"
  description = "launch-wizard-7 created 2025-01-23T08:38:57.279Z"
  vpc_id      = "vpc-0d84fba11c63039b4"
  tags        = { Name = "launch-wizard-7", Environment = "dev", ManagedBy = "terraform", Project = "dbi360" }
}

# launch-wizard-8 | sg-0554fbf16472436a4
resource "aws_security_group" "launch_wizard_8" {
  name        = "launch-wizard-8"
  description = "launch-wizard-8 created 2025-01-23T09:38:06.107Z"
  vpc_id      = "vpc-0d84fba11c63039b4"
  tags        = { Name = "launch-wizard-8", Environment = "dev", ManagedBy = "terraform", Project = "dbi360" }
}

# launch-wizard-9 | sg-0457a1bab931881bf
resource "aws_security_group" "launch_wizard_9" {
  name        = "launch-wizard-9"
  description = "launch-wizard-9 created 2025-06-12T11:38:04.957Z"
  vpc_id      = "vpc-0d84fba11c63039b4"
  tags        = { Name = "launch-wizard-9", Environment = "dev", ManagedBy = "terraform", Project = "dbi360" }
}

# launch-wizard-10 | sg-052c4f1f685bd3eac
resource "aws_security_group" "launch_wizard_10" {
  name        = "launch-wizard-10"
  description = "launch-wizard-10 created 2025-06-20T13:35:37.009Z"
  vpc_id      = "vpc-0d84fba11c63039b4"
  tags        = { Name = "launch-wizard-10", Environment = "dev", ManagedBy = "terraform", Project = "dbi360" }
}

# launch-wizard-11 | sg-0b9743a9424d94c68
resource "aws_security_group" "launch_wizard_11" {
  name        = "launch-wizard-11"
  description = "launch-wizard-11 created 2025-06-30T10:36:50.062Z"
  vpc_id      = "vpc-0d84fba11c63039b4"
  tags        = { Name = "launch-wizard-11", Environment = "dev", ManagedBy = "terraform", Project = "dbi360" }
}

# launch-wizard-12 | sg-0c9af562aa47db777
resource "aws_security_group" "launch_wizard_12" {
  name        = "launch-wizard-12"
  description = "launch-wizard-12 created 2025-09-01T12:13:22.359Z"
  vpc_id      = "vpc-0d84fba11c63039b4"
  tags        = { Name = "launch-wizard-12", Environment = "dev", ManagedBy = "terraform", Project = "dbi360" }
}

# launch-wizard-13 | sg-048ab868b439fce92
resource "aws_security_group" "launch_wizard_13" {
  name        = "launch-wizard-13"
  description = "launch-wizard-13 created 2026-01-20T13:59:08.964Z"
  vpc_id      = "vpc-0d84fba11c63039b4"
  tags        = { Name = "launch-wizard-13", Environment = "dev", ManagedBy = "terraform", Project = "dbi360" }
}

# launch-wizard-14 | sg-0593daa6ab62cad91
resource "aws_security_group" "launch_wizard_14" {
  name        = "launch-wizard-14"
  description = "launch-wizard-14 created 2026-02-04T12:52:45.686Z"
  vpc_id      = "vpc-0d84fba11c63039b4"
  tags        = { Name = "launch-wizard-14", Environment = "dev", ManagedBy = "terraform", Project = "dbi360" }
}

# launch-wizard-15 | sg-08bfa3b84b21ce7eb
resource "aws_security_group" "launch_wizard_15" {
  name        = "launch-wizard-15"
  description = "launch-wizard-15 created 2026-03-11T03:26:39.987Z"
  vpc_id      = "vpc-0d84fba11c63039b4"
  tags        = { Name = "launch-wizard-15", Environment = "dev", ManagedBy = "terraform", Project = "dbi360" }
}

# launch-wizard-16 | sg-052936664a39a9750
resource "aws_security_group" "launch_wizard_16" {
  name        = "launch-wizard-16"
  description = "launch-wizard-16 created 2026-08-14T16:24:21.939Z"
  vpc_id      = "vpc-0d84fba11c63039b4"
  tags        = { Name = "launch-wizard-16", Environment = "dev", ManagedBy = "terraform", Project = "dbi360" }
}

# rds-ec2-1 | sg-0db5038facfed1cc0
resource "aws_security_group" "rds_ec2_1" {
  name        = "rds-ec2-1"
  description = "Security group attached to asterdevrds to allow EC2 instances with specific security groups attached to connect to the database. Modification could lead to connection loss."
  vpc_id      = "vpc-0d84fba11c63039b4"
  tags        = { Name = "rds-ec2-1", Environment = "dev", ManagedBy = "terraform", Project = "dbi360" }
}

# wp_site | sg-0e42984ecc2839deb
resource "aws_security_group" "wp_site" {
  name        = "wp_site"
  description = "for wp site access"
  vpc_id      = "vpc-0d84fba11c63039b4"
  tags        = { Name = "wp_site", Environment = "dev", ManagedBy = "terraform", Project = "dbi360" }
}

# -------------------------------------------------------------
# VPC: Meraki-VPN-VPC (vpc-0eb487fb1814d9df7)
# -------------------------------------------------------------

# default | sg-0b9e7ad7a6b0028d6
resource "aws_security_group" "meraki_vpn_vpc_default" {
  name        = "default"
  description = "default VPC security group"
  vpc_id      = "vpc-0eb487fb1814d9df7"
  tags        = { Name = "default", Environment = "dev", ManagedBy = "terraform", Project = "dbi360" }
}

# git-dev-sg | sg-000fb77e5014dabea
resource "aws_security_group" "git_dev_sg" {
  name        = "git-dev-sg"
  description = "Security group for git-developer workspace"
  vpc_id      = "vpc-0eb487fb1814d9df7"
  tags        = { Name = "git-dev-sg", Environment = "dev", ManagedBy = "terraform", Project = "dbi360" }
}

# -------------------------------------------------------------
# VPC: dbi360-dev-stage-vpc (vpc-09a55f1c24c5673a4)
# -------------------------------------------------------------

# default | sg-014589e7f2b21d2dd
resource "aws_security_group" "dbi360_dev_stage_vpc_default" {
  name        = "default"
  description = "default VPC security group"
  vpc_id      = "vpc-09a55f1c24c5673a4"
  tags        = { Name = "default", Environment = "dev", ManagedBy = "terraform", Project = "dbi360" }
}

# dev-vpc-endpoints-sg | sg-0e686d485fb82318e
resource "aws_security_group" "dev_vpc_endpoints_sg" {
  name        = "dev-vpc-endpoints-sg"
  description = "Allow HTTPS from ECS tasks to VPC Endpoints"
  vpc_id      = "vpc-09a55f1c24c5673a4"
  tags        = { Name = "dev-vpc-endpoints-sg", Environment = "dev", ManagedBy = "terraform", Project = "dbi360" }
}

# development-alb-2-sg | sg-0c408f49799e8c608
resource "aws_security_group" "development_alb_2_sg" {
  name        = "development-alb-2-sg"
  description = "Security group for development-alb-2"
  vpc_id      = "vpc-09a55f1c24c5673a4"
  tags        = { Name = "development-alb-2-sg", Environment = "dev", ManagedBy = "terraform", Project = "dbi360" }
}

# development-alb-sg | sg-08bc8b2a0173bfae4
resource "aws_security_group" "development_alb_sg" {
  name        = "development-alb-sg"
  description = "ALB for ECS apps"
  vpc_id      = "vpc-09a55f1c24c5673a4"
  tags        = { Name = "development-alb-sg", Environment = "dev", ManagedBy = "terraform", Project = "dbi360" }
}

# development-ecs-sg | sg-088b1a7bdd325cef8
resource "aws_security_group" "development_ecs_sg" {
  name        = "development-ecs-sg"
  description = "ECS tasks for ticketing-system-backend-Created by Braja"
  vpc_id      = "vpc-09a55f1c24c5673a4"
  tags        = { Name = "development-ecs-sg", Environment = "dev", ManagedBy = "terraform", Project = "dbi360" }
}

# k8s-argocd-argocdin-ad0cb5df45 | sg-0e8f8a9c9f877d59f
resource "aws_security_group" "k8s_argocd_argocdin_ad0cb5df45" {
  name        = "k8s-argocd-argocdin-ad0cb5df45"
  description = "[k8s] Managed SecurityGroup for LoadBalancer"
  vpc_id      = "vpc-09a55f1c24c5673a4"
  tags        = { Name = "k8s-argocd-argocdin-ad0cb5df45", Environment = "dev", ManagedBy = "terraform", Project = "dbi360" }
}

# k8s-developm-ticketin-9fcab02cd1 | sg-0e804832a2059e35b
resource "aws_security_group" "k8s_developm_ticketin_9fcab02cd1" {
  name        = "k8s-developm-ticketin-9fcab02cd1"
  description = "[k8s] Managed SecurityGroup for LoadBalancer"
  vpc_id      = "vpc-09a55f1c24c5673a4"
  tags        = { Name = "k8s-developm-ticketin-9fcab02cd1", Environment = "dev", ManagedBy = "terraform", Project = "dbi360" }
}

# k8s-traffic-devekscluster-1d065b7ad2 | sg-07d4e16350fadb72a
resource "aws_security_group" "k8s_traffic_devekscluster_1d065b7ad2" {
  name        = "k8s-traffic-devekscluster-1d065b7ad2"
  description = "[k8s] Shared Backend SecurityGroup for LoadBalancer"
  vpc_id      = "vpc-09a55f1c24c5673a4"
  tags        = { Name = "k8s-traffic-devekscluster-1d065b7ad2", Environment = "dev", ManagedBy = "terraform", Project = "dbi360" }
}

# -------------------------------------------------------------
# VPC: security-vpc (vpc-0bb070e4036db1f53)
# -------------------------------------------------------------

# ClickHouse-SG | sg-0169b88078994829d
resource "aws_security_group" "clickhouse_sg" {
  name        = "ClickHouse-SG"
  description = "Created by Braja"
  vpc_id      = "vpc-0bb070e4036db1f53"
  tags        = { Name = "ClickHouse-SG", Environment = "dev", ManagedBy = "terraform", Project = "dbi360" }
}

# default | sg-0d7266a4b6d75dcf5
resource "aws_security_group" "security_vpc_default" {
  name        = "default"
  description = "default VPC security group"
  vpc_id      = "vpc-0bb070e4036db1f53"
  tags        = { Name = "default", Environment = "dev", ManagedBy = "terraform", Project = "dbi360" }
}

# security-alb-sg | sg-04fde5621fc095f8c
resource "aws_security_group" "security_alb_sg" {
  name        = "security-alb-sg"
  description = "Security ALB Security Group"
  vpc_id      = "vpc-0bb070e4036db1f53"
  tags        = { Name = "security-alb-sg", Environment = "dev", ManagedBy = "terraform", Project = "dbi360" }
}

# security-ecs-sg | sg-0933026edf8e0926b
resource "aws_security_group" "security_ecs_sg" {
  name        = "security-ecs-sg"
  description = "Security ECS Security Group"
  vpc_id      = "vpc-0bb070e4036db1f53"
  tags        = { Name = "security-ecs-sg", Environment = "dev", ManagedBy = "terraform", Project = "dbi360" }
}

# security-rds-sg | sg-0f657bebe966e3826
resource "aws_security_group" "security_rds_sg" {
  name        = "security-rds-sg"
  description = "Security RDS Security Group"
  vpc_id      = "vpc-0bb070e4036db1f53"
  tags        = { Name = "security-rds-sg", Environment = "dev", ManagedBy = "terraform", Project = "dbi360" }
}
