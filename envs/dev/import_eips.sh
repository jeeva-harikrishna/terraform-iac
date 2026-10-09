#!/bin/bash
# =============================================================
# import_eips.sh — final v2
# Cleans ALL existing aws_eip state entries first,
# then re-imports all 17 cleanly from eip.tf
# Run from: ~/terraform-iac/envs/dev/
# =============================================================
set -e

echo "=== Step 1: Remove ALL existing aws_eip entries from state ==="

terraform state rm module.vpc.aws_eip.eip_39f12f5d 2>/dev/null || true
terraform state rm module.vpc.aws_eip.eip_1cd1688a 2>/dev/null || true
terraform state rm module.vpc.aws_eip.eip_49feafec 2>/dev/null || true
terraform state rm module.vpc.aws_eip.eip_5bb4fd6d 2>/dev/null || true
terraform state rm module.vpc.aws_eip.dbi360_dev_stage_nat_eip 2>/dev/null || true
terraform state rm module.vpc.aws_eip.eip_1ed86640 2>/dev/null || true
terraform state rm module.vpc.aws_eip.eip_3e8f3a16 2>/dev/null || true
terraform state rm module.vpc.aws_eip.eip_0f97893d 2>/dev/null || true
terraform state rm module.vpc.aws_eip.eip_6470bae8 2>/dev/null || true
terraform state rm module.vpc.aws_eip.eip_b59cc225 2>/dev/null || true
terraform state rm module.vpc.aws_eip.eip_38188f7c 2>/dev/null || true
terraform state rm module.vpc.aws_eip.security_nat_eip 2>/dev/null || true
terraform state rm module.vpc.aws_eip.eip_ddf92523 2>/dev/null || true
terraform state rm module.vpc.aws_eip.github_actions_runner 2>/dev/null || true
terraform state rm module.vpc.aws_eip.eip_48f362cc 2>/dev/null || true
terraform state rm module.vpc.aws_eip.eip_e7bc4323 2>/dev/null || true
terraform state rm module.vpc.aws_eip.eip_044115db 2>/dev/null || true

echo "✓ State cleared"
echo ""
echo "=== Step 2: Import all 17 EIPs ==="
echo ""

echo "[$(date +%T)] module.vpc.aws_eip.eip_39f12f5d (eipalloc-09138659139f12f5d) [Network Interface]"
terraform import module.vpc.aws_eip.eip_39f12f5d eipalloc-09138659139f12f5d

echo "[$(date +%T)] module.vpc.aws_eip.eip_1cd1688a (eipalloc-0f4996f861cd1688a) [Network Interface]"
terraform import module.vpc.aws_eip.eip_1cd1688a eipalloc-0f4996f861cd1688a

echo "[$(date +%T)] module.vpc.aws_eip.eip_49feafec (eipalloc-0cfcaa92049feafec) [Network Interface]"
terraform import module.vpc.aws_eip.eip_49feafec eipalloc-0cfcaa92049feafec

echo "[$(date +%T)] module.vpc.aws_eip.eip_5bb4fd6d (eipalloc-0b8d930d45bb4fd6d) [EC2 Instance]"
terraform import module.vpc.aws_eip.eip_5bb4fd6d eipalloc-0b8d930d45bb4fd6d

echo "[$(date +%T)] module.vpc.aws_eip.dbi360_dev_stage_nat_eip (eipalloc-0ba2f3b3c1b8ce99f) [NAT Gateway]"
terraform import module.vpc.aws_eip.dbi360_dev_stage_nat_eip eipalloc-0ba2f3b3c1b8ce99f

echo "[$(date +%T)] module.vpc.aws_eip.eip_1ed86640 (eipalloc-03349b9d31ed86640) [Network Interface]"
terraform import module.vpc.aws_eip.eip_1ed86640 eipalloc-03349b9d31ed86640

echo "[$(date +%T)] module.vpc.aws_eip.eip_3e8f3a16 (eipalloc-09d29a9123e8f3a16) [Network Interface]"
terraform import module.vpc.aws_eip.eip_3e8f3a16 eipalloc-09d29a9123e8f3a16

echo "[$(date +%T)] module.vpc.aws_eip.eip_0f97893d (eipalloc-09ce478aa0f97893d) [Unassociated]"
terraform import module.vpc.aws_eip.eip_0f97893d eipalloc-09ce478aa0f97893d

echo "[$(date +%T)] module.vpc.aws_eip.eip_6470bae8 (eipalloc-01db3cc466470bae8) [Network Interface]"
terraform import module.vpc.aws_eip.eip_6470bae8 eipalloc-01db3cc466470bae8

echo "[$(date +%T)] module.vpc.aws_eip.eip_b59cc225 (eipalloc-021edd6c5b59cc225) [Network Interface]"
terraform import module.vpc.aws_eip.eip_b59cc225 eipalloc-021edd6c5b59cc225

echo "[$(date +%T)] module.vpc.aws_eip.eip_38188f7c (eipalloc-0df864a8138188f7c) [Network Interface]"
terraform import module.vpc.aws_eip.eip_38188f7c eipalloc-0df864a8138188f7c

echo "[$(date +%T)] module.vpc.aws_eip.security_nat_eip (eipalloc-0ed77668c89bebcec) [NAT Gateway]"
terraform import module.vpc.aws_eip.security_nat_eip eipalloc-0ed77668c89bebcec

echo "[$(date +%T)] module.vpc.aws_eip.eip_ddf92523 (eipalloc-03eab6222ddf92523) [Network Interface]"
terraform import module.vpc.aws_eip.eip_ddf92523 eipalloc-03eab6222ddf92523

echo "[$(date +%T)] module.vpc.aws_eip.github_actions_runner (eipalloc-081c0ea4c064c29cf) [EC2 Instance]"
terraform import module.vpc.aws_eip.github_actions_runner eipalloc-081c0ea4c064c29cf

echo "[$(date +%T)] module.vpc.aws_eip.eip_48f362cc (eipalloc-0e613d82b48f362cc) [Unassociated]"
terraform import module.vpc.aws_eip.eip_48f362cc eipalloc-0e613d82b48f362cc

echo "[$(date +%T)] module.vpc.aws_eip.eip_e7bc4323 (eipalloc-0a81f3f22e7bc4323) [Network Interface]"
terraform import module.vpc.aws_eip.eip_e7bc4323 eipalloc-0a81f3f22e7bc4323

echo "[$(date +%T)] module.vpc.aws_eip.eip_044115db (eipalloc-027c71650044115db) [Network Interface]"
terraform import module.vpc.aws_eip.eip_044115db eipalloc-027c71650044115db

echo ""
echo "=== All 17 EIPs imported. Running plan to verify... ==="
echo ""
terraform plan -out=tfplan
