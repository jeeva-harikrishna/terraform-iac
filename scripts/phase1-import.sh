#!/bin/bash
# =============================================================
# Phase 1 Import Script — VPCs, Subnets, IGWs, Route Tables
# Run from: ~/terraform-iac/envs/dev
# Usage:    bash ../../scripts/phase1-import.sh
# =============================================================

set -e  # stop on first error

echo ""
echo "=== Phase 1: Importing VPCs ==="
terraform import module.vpc.aws_vpc.security_vpc          vpc-0bb070e4036db1f53
terraform import module.vpc.aws_vpc.dbi360_dev_stage_vpc  vpc-09a55f1c24c5673a4
terraform import module.vpc.aws_vpc.meraki_vpn_vpc        vpc-0eb487fb1814d9df7

echo ""
echo "=== Phase 1: Importing Internet Gateways ==="
terraform import module.vpc.aws_internet_gateway.security_igw         igw-0a47da695bf20f195
terraform import module.vpc.aws_internet_gateway.dbi360_dev_stage_igw igw-07c2609308250dca4
terraform import module.vpc.aws_internet_gateway.meraki_vpn_igw       igw-0ffe75bb90823b504

echo ""
echo "=== Phase 1: Importing Subnets — security-vpc ==="
terraform import module.vpc.aws_subnet.security_public_2a  subnet-0edb5e24493ea9804
terraform import module.vpc.aws_subnet.security_public_2b  subnet-00aeadbdd62745fc3
terraform import module.vpc.aws_subnet.security_public_2c  subnet-0da9a2ce0bdf8f0c4
terraform import module.vpc.aws_subnet.security_private_2a subnet-035eae517a4c1c48c
terraform import module.vpc.aws_subnet.security_private_2b subnet-079cf74b31c237da7
terraform import module.vpc.aws_subnet.security_private_2c subnet-08f816b820691bce8

echo ""
echo "=== Phase 1: Importing Subnets — dbi360-dev-stage-vpc ==="
terraform import module.vpc.aws_subnet.dbi360_dev_stage_public1_2a  subnet-0e4b966ab7e6a80ad
terraform import module.vpc.aws_subnet.dbi360_dev_stage_public2_2b  subnet-0d1f5a1657a43b81e
terraform import module.vpc.aws_subnet.dbi360_dev_stage_private1_2a subnet-0eeefbeb3f67a5dfc
terraform import module.vpc.aws_subnet.dbi360_dev_stage_private2_2b subnet-073cba83e3cde7daf

echo ""
echo "=== Phase 1: Importing Subnets — Meraki-VPN-VPC ==="
terraform import module.vpc.aws_subnet.meraki_vpc_subnet subnet-0884c47833760649d

echo ""
echo "=== Phase 1: Importing Route Tables ==="
terraform import module.vpc.aws_route_table.security_public_rt               rtb-023b392c9398ee8e6
terraform import module.vpc.aws_route_table.security_private_rt              rtb-0188970286d67a4dd
terraform import module.vpc.aws_route_table.dbi360_dev_stage_rtb_public      rtb-0b24ce7df23534a59
terraform import module.vpc.aws_route_table.dbi360_dev_stage_rtb_private1_2a rtb-01936e220a5aece0c
terraform import module.vpc.aws_route_table.dbi360_dev_stage_rtb_private2_2b rtb-001dbe3403a99f224

echo ""
echo "=== Phase 1: Importing Route Table Associations ==="
terraform import module.vpc.aws_route_table_association.security_public_2a   rtb-023b392c9398ee8e6/subnet-0edb5e24493ea9804
terraform import module.vpc.aws_route_table_association.security_public_2b   rtb-023b392c9398ee8e6/subnet-00aeadbdd62745fc3
terraform import module.vpc.aws_route_table_association.security_public_2c   rtb-023b392c9398ee8e6/subnet-0da9a2ce0bdf8f0c4
terraform import module.vpc.aws_route_table_association.security_private_2a  rtb-0188970286d67a4dd/subnet-035eae517a4c1c48c
terraform import module.vpc.aws_route_table_association.security_private_2b  rtb-0188970286d67a4dd/subnet-079cf74b31c237da7
terraform import module.vpc.aws_route_table_association.security_private_2c  rtb-0188970286d67a4dd/subnet-08f816b820691bce8
terraform import module.vpc.aws_route_table_association.dbi360_dev_stage_public1_2a  rtb-0b24ce7df23534a59/subnet-0e4b966ab7e6a80ad
terraform import module.vpc.aws_route_table_association.dbi360_dev_stage_public2_2b  rtb-0b24ce7df23534a59/subnet-0d1f5a1657a43b81e
terraform import module.vpc.aws_route_table_association.dbi360_dev_stage_private1_2a rtb-01936e220a5aece0c/subnet-0eeefbeb3f67a5dfc
terraform import module.vpc.aws_route_table_association.dbi360_dev_stage_private2_2b rtb-001dbe3403a99f224/subnet-073cba83e3cde7daf

echo ""
echo "============================================="
echo "Phase 1 imports complete — running plan now"
echo "============================================="
terraform plan
