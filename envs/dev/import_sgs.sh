#!/bin/bash
# =============================================================
# Phase 2 - Import Script: Security Groups (39)
# Environment: dev | Region: us-east-2
# Run from: ~/terraform-iac/envs/dev/
# =============================================================
set -e

echo "==> Importing Security Groups..."

echo "--- VPC: Default ---"
terraform import module.vpc.aws_security_group.latest_kali_linux_with_gui_2500_kali_tools_apps_by_techlatest_net_2025_1_autogenbyawsmp_1 sg-042e559caf42fa5b9
terraform import module.vpc.aws_security_group.meraki_vpn_access_only sg-0866de6c66790e2cf
terraform import module.vpc.aws_security_group.clickhouse_new sg-0253e9d7aabf21e09
terraform import module.vpc.aws_security_group.default_default sg-0a8dd9c7cfcdd8788
terraform import module.vpc.aws_security_group.ec2_rds_1 sg-08924622f176f691c
terraform import module.vpc.aws_security_group.etl_scrapper sg-0d00485859b5f1d01
terraform import module.vpc.aws_security_group.launch_wizard_1 sg-040763c16e3198cc9
terraform import module.vpc.aws_security_group.launch_wizard_2 sg-088593c479be117e3
terraform import module.vpc.aws_security_group.launch_wizard_3 sg-069612c0e8d5ab2e5
terraform import module.vpc.aws_security_group.launch_wizard_4 sg-03c8ab8c802e06154
terraform import module.vpc.aws_security_group.launch_wizard_5 sg-034065a2196523151
terraform import module.vpc.aws_security_group.launch_wizard_6 sg-0a9aec7240f1bcb1d
terraform import module.vpc.aws_security_group.launch_wizard_7 sg-03af5c88a285e2720
terraform import module.vpc.aws_security_group.launch_wizard_8 sg-0554fbf16472436a4
terraform import module.vpc.aws_security_group.launch_wizard_9 sg-0457a1bab931881bf
terraform import module.vpc.aws_security_group.launch_wizard_10 sg-052c4f1f685bd3eac
terraform import module.vpc.aws_security_group.launch_wizard_11 sg-0b9743a9424d94c68
terraform import module.vpc.aws_security_group.launch_wizard_12 sg-0c9af562aa47db777
terraform import module.vpc.aws_security_group.launch_wizard_13 sg-048ab868b439fce92
terraform import module.vpc.aws_security_group.launch_wizard_14 sg-0593daa6ab62cad91
terraform import module.vpc.aws_security_group.launch_wizard_15 sg-08bfa3b84b21ce7eb
terraform import module.vpc.aws_security_group.launch_wizard_16 sg-052936664a39a9750
terraform import module.vpc.aws_security_group.rds_ec2_1 sg-0db5038facfed1cc0
terraform import module.vpc.aws_security_group.wp_site sg-0e42984ecc2839deb

echo "--- VPC: Meraki-VPN-VPC ---"
terraform import module.vpc.aws_security_group.meraki_vpn_vpc_default sg-0b9e7ad7a6b0028d6
terraform import module.vpc.aws_security_group.git_dev_sg sg-000fb77e5014dabea

echo "--- VPC: dbi360-dev-stage-vpc ---"
terraform import module.vpc.aws_security_group.dbi360_dev_stage_vpc_default sg-014589e7f2b21d2dd
terraform import module.vpc.aws_security_group.dev_vpc_endpoints_sg sg-0e686d485fb82318e
terraform import module.vpc.aws_security_group.development_alb_2_sg sg-0c408f49799e8c608
terraform import module.vpc.aws_security_group.development_alb_sg sg-08bc8b2a0173bfae4
terraform import module.vpc.aws_security_group.development_ecs_sg sg-088b1a7bdd325cef8
terraform import module.vpc.aws_security_group.k8s_argocd_argocdin_ad0cb5df45 sg-0e8f8a9c9f877d59f
terraform import module.vpc.aws_security_group.k8s_developm_ticketin_9fcab02cd1 sg-0e804832a2059e35b
terraform import module.vpc.aws_security_group.k8s_traffic_devekscluster_1d065b7ad2 sg-07d4e16350fadb72a

echo "--- VPC: security-vpc ---"
terraform import module.vpc.aws_security_group.clickhouse_sg sg-0169b88078994829d
terraform import module.vpc.aws_security_group.security_vpc_default sg-0d7266a4b6d75dcf5
terraform import module.vpc.aws_security_group.security_alb_sg sg-04fde5621fc095f8c
terraform import module.vpc.aws_security_group.security_ecs_sg sg-0933026edf8e0926b
terraform import module.vpc.aws_security_group.security_rds_sg sg-0f657bebe966e3826

echo "==> Verifying clean state..."
terraform plan
echo "==> Done. Expected: 0 to add, 0 to change, 0 to destroy"
