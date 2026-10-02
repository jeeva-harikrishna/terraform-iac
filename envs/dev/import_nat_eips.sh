#!/bin/bash
# ============================================================
# Phase 2 - Import Script: NAT Gateways + EIPs
# Fixed: module.vpc prefix added
# Run from: ~/terraform-iac/envs/dev/
# ============================================================
set -e  # stop on any error

echo "==> Step 1: Importing Elastic IPs..."
terraform import module.vpc.aws_eip.security_nat_eip eipalloc-0ed77668c89bebcec
terraform import module.vpc.aws_eip.dbi360_dev_stage_nat_eip eipalloc-0ba2f3b3c1b8ce99f

echo "==> Step 2: Importing NAT Gateways..."
terraform import module.vpc.aws_nat_gateway.security_nat nat-05b347ea46e616f47
terraform import module.vpc.aws_nat_gateway.dbi360_dev_stage_nat nat-03f25ca7bc9110f9d

echo "==> Step 3: Verifying clean state..."
terraform plan
echo "==> Done. Expected: 0 to add, 0 to change, 0 to destroy"
