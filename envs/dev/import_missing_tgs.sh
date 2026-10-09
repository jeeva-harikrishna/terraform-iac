#!/bin/bash
# Import 27 missing TGs — run AFTER missing_tgs.tf is in place
# Usage: cd ~/terraform-iac/envs/dev && bash import_missing_tgs.sh

set -e
echo "Importing 27 missing target groups..."
echo ""
IMPORTED=0
FAILED=0

echo "[1/27] hrms_recruitment_frontend_tg"
if terraform import "module.vpc.aws_lb_target_group.hrms_recruitment_frontend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/hrms-recruitment-frontend-tg/16b87d0be49cb141"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[2/27] hrms_report_tg"
if terraform import "module.vpc.aws_lb_target_group.hrms_report_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/hrms-report-tg/21bc988e60c05054"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[3/27] inventory_service_backend_tg"
if terraform import "module.vpc.aws_lb_target_group.inventory_service_backend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/inventory-service-backend-tg/6519138ec7531671"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[4/27] inventory_service_frontend_tg"
if terraform import "module.vpc.aws_lb_target_group.inventory_service_frontend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/inventory-service-frontend-tg/61ca06b4c1966196"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[5/27] jeevahealthcare_website_tg"
if terraform import "module.vpc.aws_lb_target_group.jeevahealthcare_website_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/jeevahealthcare-website-tg/2e90c6a4ccc7a7cf"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[6/27] lead_qualifier_backend_tg"
if terraform import "module.vpc.aws_lb_target_group.lead_qualifier_backend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/lead-qualifier-backend-tg/be4ae8d901c7cb8f"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[7/27] lead_qualifier_frontend_tg"
if terraform import "module.vpc.aws_lb_target_group.lead_qualifier_frontend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/lead-qualifier-frontend-tg/f52e3bf2459be391"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[8/27] marketing_backend_service_tg"
if terraform import "module.vpc.aws_lb_target_group.marketing_backend_service_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/marketing-backend-service-tg/250e3640afde0010"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[9/27] marketing_frontend_service_tg"
if terraform import "module.vpc.aws_lb_target_group.marketing_frontend_service_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/marketing-frontend-service-tg/0a3c1bd984d4da46"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[10/27] master_configuration_backend_tg"
if terraform import "module.vpc.aws_lb_target_group.master_configuration_backend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/master-configuration-backend-tg/4e9e25f9fd03623b"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[11/27] master_product_service_tg"
if terraform import "module.vpc.aws_lb_target_group.master_product_service_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/master-product-service-tg/5847e548c67956bc"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[12/27] mfg_backend_tg"
if terraform import "module.vpc.aws_lb_target_group.mfg_backend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/mfg-backend-tg/bf76adf586c63b55"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[13/27] mfg_frontend_tg"
if terraform import "module.vpc.aws_lb_target_group.mfg_frontend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/mfg-frontend-tg/fa477407f613c95e"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[14/27] mfg_salesorder_backend_tg"
if terraform import "module.vpc.aws_lb_target_group.mfg_salesorder_backend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/mfg-salesorder-backend-tg/c4c1267704c4ed5b"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[15/27] mfg_salesorder_frontend_tg"
if terraform import "module.vpc.aws_lb_target_group.mfg_salesorder_frontend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/mfg-salesorder-frontend-tg/9739790e6215c483"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[16/27] my_trade_guru_backend_tg"
if terraform import "module.vpc.aws_lb_target_group.my_trade_guru_backend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/my-trade-guru-backend-tg/6d0b4481a43229a4"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[17/27] my_trade_guru_frontend_tg"
if terraform import "module.vpc.aws_lb_target_group.my_trade_guru_frontend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/my-trade-guru-frontend-tg/2bbb5ecc728fca5b"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[18/27] n8n_demo_tg"
if terraform import "module.vpc.aws_lb_target_group.n8n_demo_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/n8n-demo-tg/1bc288d7664b39b7"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[19/27] n8n_target_group"
if terraform import "module.vpc.aws_lb_target_group.n8n_target_group" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/n8n-target-group/9eb217950efb025d"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[20/27] nexus_fast_api_tg"
if terraform import "module.vpc.aws_lb_target_group.nexus_fast_api_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/nexus-fast-api-tg/e1b40889881e1b99"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[21/27] nexus_landing_next_tg"
if terraform import "module.vpc.aws_lb_target_group.nexus_landing_next_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/nexus-landing-next-tg/2a01e85288e9d367"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[22/27] nexus_react_frontend_tg"
if terraform import "module.vpc.aws_lb_target_group.nexus_react_frontend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/nexus-react-frontend-tg/9ebedac4f16b1635"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[23/27] notification_backend_tg"
if terraform import "module.vpc.aws_lb_target_group.notification_backend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/notification-backend-tg/9586f8b69ca59871"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[24/27] notification_frontend_tg"
if terraform import "module.vpc.aws_lb_target_group.notification_frontend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/notification-frontend-tg/1e18247d9fd9ba0b"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[25/27] pricing_engine_tg"
if terraform import "module.vpc.aws_lb_target_group.pricing_engine_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/pricing-engine-tg/d9316b2af18e1ebf"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[26/27] purchase_intelligence_tg"
if terraform import "module.vpc.aws_lb_target_group.purchase_intelligence_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/purchase-intelligence-tg/dad6ec4a7602fd32"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[27/27] purchase_service_backend_tg"
if terraform import "module.vpc.aws_lb_target_group.purchase_service_backend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/purchase-service-backend-tg/cbb7f376aac19f07"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo ""
echo "Done. Imported: $IMPORTED | Skipped/Failed: $FAILED"
echo "Verify: terraform state list | grep aws_lb_target_group | wc -l  (expect 126)"
echo "Then:   terraform plan  (must show 0 to destroy)"
