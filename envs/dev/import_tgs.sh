#!/bin/bash
# Terraform CLI import script — dbi360 Dev (us-east-2)
# Generated: 2026-10-05
# Total: 121 target groups
# Skipped (orphans): aster-demo-tg, buyersflow-caption-tg, buyersflow-new, calculator-v2, hrms-exit-process-frontend-tg
# Usage: cd ~/terraform-iac/envs/dev && bash import_tgs.sh
# Safe to re-run — already-imported resources will print a warning and continue.

set -e

TERRAFORM_DIR="$(cd "$(dirname "$0")" && pwd)"
echo "Working directory: $TERRAFORM_DIR"
echo "Starting import of 121 target groups..."
echo ""

IMPORTED=0
FAILED=0

echo "[1/121] ai-chatbot-website-tg"
if terraform import "module.vpc.aws_lb_target_group.ai_chatbot_website_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/ai-chatbot-website-tg/4d34ad1cb639fddb"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[2/121] all-email-receive-webhook-tg"
if terraform import "module.vpc.aws_lb_target_group.all_email_receive_webhook_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/all-email-receive-webhook-tg/8206b8213ff08fb1"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[3/121] aster-landing-tg"
if terraform import "module.vpc.aws_lb_target_group.aster_landing_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/aster-landing-tg/5e08810f14913f16"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[4/121] aster-node-tg"
if terraform import "module.vpc.aws_lb_target_group.aster_node_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/aster-node-tg/9de480aa69b928a0"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[5/121] asterdocs-frontend-tg"
if terraform import "module.vpc.aws_lb_target_group.asterdocs_frontend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/asterdocs-frontend-tg/cfea56c4efe665dc"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[6/121] audit-management-backend-tg"
if terraform import "module.vpc.aws_lb_target_group.audit_management_backend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/audit-management-backend-tg/9c8e1e3e931f0dea"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[7/121] audit-management-frontend-tg"
if terraform import "module.vpc.aws_lb_target_group.audit_management_frontend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/audit-management-frontend-tg/f97f3d6438d6a037"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[8/121] audit-trail-frontend-tg"
if terraform import "module.vpc.aws_lb_target_group.audit_trail_frontend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/audit-trail-frontend-tg/1ab1189fcd4194fe"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[9/121] authorization-v2-tg"
if terraform import "module.vpc.aws_lb_target_group.authorization_v2_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/authorization-v2-tg/70fcd37329aa5d84"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[10/121] authserver-backend-tg"
if terraform import "module.vpc.aws_lb_target_group.authserver_backend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/authserver-backend-tg/81a029b5c176088a"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[11/121] authserver-frontend-tg"
if terraform import "module.vpc.aws_lb_target_group.authserver_frontend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/authserver-frontend-tg/c24279f565617dba"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[12/121] b2badmin-backend-tg"
if terraform import "module.vpc.aws_lb_target_group.b2badmin_backend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/b2badmin-backend-tg/1fadc3fb83f3141f"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[13/121] b2badmin-frontend-tg"
if terraform import "module.vpc.aws_lb_target_group.b2badmin_frontend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/b2badmin-frontend-tg/e570409f442533db"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[14/121] biotrace-next-tg"
if terraform import "module.vpc.aws_lb_target_group.biotrace_next_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/biotrace-next-tg/4493d9ad3e082bdc"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[15/121] buyersflow-backend-tg"
if terraform import "module.vpc.aws_lb_target_group.buyersflow_backend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/buyersflow-backend-tg/87bd08c09debd282"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[16/121] buyersflow-new-tg"
if terraform import "module.vpc.aws_lb_target_group.buyersflow_new_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/buyersflow-new-tg/09d78834100e1f39"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[17/121] buyersflow-website-tg"
if terraform import "module.vpc.aws_lb_target_group.buyersflow_website_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/buyersflow-website-tg/943b60586158a77e"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[18/121] calculator-v2-tg"
if terraform import "module.vpc.aws_lb_target_group.calculator_v2_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/calculator-v2-tg/dca4543b1d1ebe87"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[19/121] clickhouse-tg"
if terraform import "module.vpc.aws_lb_target_group.clickhouse_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/clickhouse-tg/02a42d58fdb491b0"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[20/121] clicklens-tg"
if terraform import "module.vpc.aws_lb_target_group.clicklens_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/clicklens-tg/fc6d38821dafb596"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[21/121] communication-backend-tg"
if terraform import "module.vpc.aws_lb_target_group.communication_backend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/communication-backend-tg/1ea139913fd8bfa3"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[22/121] communication-frontend-tg"
if terraform import "module.vpc.aws_lb_target_group.communication_frontend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/communication-frontend-tg/9a7a68d653578fa2"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[23/121] company-research-api-backend-tg"
if terraform import "module.vpc.aws_lb_target_group.company_research_api_backend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/company-research-api-backend-tg/0e1d07204c2fc0fc"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[24/121] company-research-backend-tg"
if terraform import "module.vpc.aws_lb_target_group.company_research_backend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/company-research-backend-tg/274ea57b8de71616"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[25/121] compliance-service-tg"
if terraform import "module.vpc.aws_lb_target_group.compliance_service_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/compliance-service-tg/6694c90b9928e22c"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[26/121] confluxhr-website-frontend-tg"
if terraform import "module.vpc.aws_lb_target_group.confluxhr_website_frontend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/confluxhr-website-frontend-tg/fd7631f5def51aee"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[27/121] customer-map-service-backend-tg"
if terraform import "module.vpc.aws_lb_target_group.customer_map_service_backend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/customer-map-service-backend-tg/d10d8fbeeb634a85"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[28/121] customer-map-service-frontend-tg"
if terraform import "module.vpc.aws_lb_target_group.customer_map_service_frontend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/customer-map-service-frontend-tg/0d9fe67b458bc063"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[29/121] dbi-chat-area-tg"
if terraform import "module.vpc.aws_lb_target_group.dbi_chat_area_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/dbi-chat-area-tg/7070d4926bf20231"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[30/121] dbi-chat-widget-tg"
if terraform import "module.vpc.aws_lb_target_group.dbi_chat_widget_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/dbi-chat-widget-tg/773258881610b697"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[31/121] dbi-hubspot-backend-tg"
if terraform import "module.vpc.aws_lb_target_group.dbi_hubspot_backend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/dbi-hubspot-backend-tg/20d84f49b30cd1fd"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[32/121] dbi-websocket-tg"
if terraform import "module.vpc.aws_lb_target_group.dbi_websocket_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/dbi-websocket-tg/50594c9ffc8506c3"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[33/121] drmallad-tg"
if terraform import "module.vpc.aws_lb_target_group.drmallad_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/drmallad-tg/253d440c5bcdeff5"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[34/121] ecommerce-frontend-next-tg"
if terraform import "module.vpc.aws_lb_target_group.ecommerce_frontend_next_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/ecommerce-frontend-next-tg/ebfc0acdb9c82d24"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[35/121] entity-service-tg"
if terraform import "module.vpc.aws_lb_target_group.entity_service_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/entity-service-tg/cbd420028a18a521"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[36/121] exit-frontend-tg"
if terraform import "module.vpc.aws_lb_target_group.exit_frontend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/exit-frontend-tg/f98e4977002ece76"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[37/121] farm-management-tg"
if terraform import "module.vpc.aws_lb_target_group.farm_management_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/farm-management-tg/721bd93632c87e6f"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[38/121] finance-backend-service-tg"
if terraform import "module.vpc.aws_lb_target_group.finance_backend_service_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/finance-backend-service-tg/76b8ee9420513bae"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[39/121] finance-frontend-service-tg"
if terraform import "module.vpc.aws_lb_target_group.finance_frontend_service_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/finance-frontend-service-tg/a202bbebcd5823f7"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[40/121] finance-reports-service-tg"
if terraform import "module.vpc.aws_lb_target_group.finance_reports_service_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/finance-reports-service-tg/6e18208eb351867f"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[41/121] findsuppliers-backend-tg"
if terraform import "module.vpc.aws_lb_target_group.findsuppliers_backend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/findsuppliers-backend-tg/209f5fe72419cae7"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[42/121] findsuppliers-frontend-tg"
if terraform import "module.vpc.aws_lb_target_group.findsuppliers_frontend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/findsuppliers-frontend-tg/459a7bfd5d50395d"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[43/121] findsuppliers-website-tg"
if terraform import "module.vpc.aws_lb_target_group.findsuppliers_website_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/findsuppliers-website-tg/81305595c177bbd2"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[44/121] gj-ecommerce-backend-tg"
if terraform import "module.vpc.aws_lb_target_group.gj_ecommerce_backend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/gj-ecommerce-backend-tg/7a912dd99d81f26f"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[45/121] gjca-ecommerce-backend-tg"
if terraform import "module.vpc.aws_lb_target_group.gjca_ecommerce_backend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/gjca-ecommerce-backend-tg/36779e131ee293d7"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[46/121] gjca-ecommerce-frontend-tg"
if terraform import "module.vpc.aws_lb_target_group.gjca_ecommerce_frontend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/gjca-ecommerce-frontend-tg/e66c84e7389d4edb"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[47/121] hrms-attendance-tg"
if terraform import "module.vpc.aws_lb_target_group.hrms_attendance_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/hrms-attendance-tg/a0534ae413d3ce3a"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[48/121] hrms-backend-tg"
if terraform import "module.vpc.aws_lb_target_group.hrms_backend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/hrms-backend-tg/ebc2c0d8d30a9e36"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[49/121] hrms-careeer-frontend-tg"
if terraform import "module.vpc.aws_lb_target_group.hrms_careeer_frontend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/hrms-careeer-frontend-tg/19f0793ae1d0b893"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[50/121] hrms-employee-tg"
if terraform import "module.vpc.aws_lb_target_group.hrms_employee_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/hrms-employee-tg/f11587084a68829a"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[51/121] hrms-inventory-tg"
if terraform import "module.vpc.aws_lb_target_group.hrms_inventory_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/hrms-inventory-tg/fb350197c7ecc7a5"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[52/121] hrms-payroll-tg"
if terraform import "module.vpc.aws_lb_target_group.hrms_payroll_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/hrms-payroll-tg/3b2aa6266aa8f289"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[53/121] hrms-recruitment-frontend-tg"
if terraform import "module.vpc.aws_lb_target_group.hrms_recruitment_frontend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/hrms-recruitment-frontend-tg/16b87d0be49cb141"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[54/121] hrms-report-tg"
if terraform import "module.vpc.aws_lb_target_group.hrms_report_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/hrms-report-tg/21bc988e60c05054"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[55/121] inventory-service-backend-tg"
if terraform import "module.vpc.aws_lb_target_group.inventory_service_backend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/inventory-service-backend-tg/6519138ec7531671"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[56/121] inventory-service-frontend-tg"
if terraform import "module.vpc.aws_lb_target_group.inventory_service_frontend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/inventory-service-frontend-tg/61ca06b4c1966196"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[57/121] jeevahealthcare-website-tg"
if terraform import "module.vpc.aws_lb_target_group.jeevahealthcare_website_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/jeevahealthcare-website-tg/2e90c6a4ccc7a7cf"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[58/121] lead-qualifier-backend-tg"
if terraform import "module.vpc.aws_lb_target_group.lead_qualifier_backend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/lead-qualifier-backend-tg/be4ae8d901c7cb8f"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[59/121] lead-qualifier-frontend-tg"
if terraform import "module.vpc.aws_lb_target_group.lead_qualifier_frontend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/lead-qualifier-frontend-tg/f52e3bf2459be391"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[60/121] marketing-backend-service-tg"
if terraform import "module.vpc.aws_lb_target_group.marketing_backend_service_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/marketing-backend-service-tg/250e3640afde0010"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[61/121] marketing-frontend-service-tg"
if terraform import "module.vpc.aws_lb_target_group.marketing_frontend_service_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/marketing-frontend-service-tg/0a3c1bd984d4da46"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[62/121] master-configuration-backend-tg"
if terraform import "module.vpc.aws_lb_target_group.master_configuration_backend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/master-configuration-backend-tg/4e9e25f9fd03623b"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[63/121] master-product-service-tg"
if terraform import "module.vpc.aws_lb_target_group.master_product_service_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/master-product-service-tg/5847e548c67956bc"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[64/121] mfg-backend-tg"
if terraform import "module.vpc.aws_lb_target_group.mfg_backend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/mfg-backend-tg/bf76adf586c63b55"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[65/121] mfg-frontend-tg"
if terraform import "module.vpc.aws_lb_target_group.mfg_frontend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/mfg-frontend-tg/fa477407f613c95e"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[66/121] mfg-salesorder-backend-tg"
if terraform import "module.vpc.aws_lb_target_group.mfg_salesorder_backend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/mfg-salesorder-backend-tg/c4c1267704c4ed5b"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[67/121] mfg-salesorder-frontend-tg"
if terraform import "module.vpc.aws_lb_target_group.mfg_salesorder_frontend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/mfg-salesorder-frontend-tg/9739790e6215c483"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[68/121] my-trade-guru-backend-tg"
if terraform import "module.vpc.aws_lb_target_group.my_trade_guru_backend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/my-trade-guru-backend-tg/6d0b4481a43229a4"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[69/121] my-trade-guru-frontend-tg"
if terraform import "module.vpc.aws_lb_target_group.my_trade_guru_frontend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/my-trade-guru-frontend-tg/2bbb5ecc728fca5b"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[70/121] n8n-demo-tg"
if terraform import "module.vpc.aws_lb_target_group.n8n_demo_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/n8n-demo-tg/1bc288d7664b39b7"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[71/121] n8n-target-group"
if terraform import "module.vpc.aws_lb_target_group.n8n_target_group" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/n8n-target-group/9eb217950efb025d"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[72/121] nexus-fast-api-tg"
if terraform import "module.vpc.aws_lb_target_group.nexus_fast_api_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/nexus-fast-api-tg/e1b40889881e1b99"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[73/121] nexus-landing-next-tg"
if terraform import "module.vpc.aws_lb_target_group.nexus_landing_next_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/nexus-landing-next-tg/2a01e85288e9d367"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[74/121] nexus-react-frontend-tg"
if terraform import "module.vpc.aws_lb_target_group.nexus_react_frontend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/nexus-react-frontend-tg/9ebedac4f16b1635"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[75/121] notification-backend-tg"
if terraform import "module.vpc.aws_lb_target_group.notification_backend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/notification-backend-tg/9586f8b69ca59871"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[76/121] notification-frontend-tg"
if terraform import "module.vpc.aws_lb_target_group.notification_frontend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/notification-frontend-tg/1e18247d9fd9ba0b"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[77/121] pricing-engine-tg"
if terraform import "module.vpc.aws_lb_target_group.pricing_engine_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/pricing-engine-tg/d9316b2af18e1ebf"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[78/121] purchase-intelligence-tg"
if terraform import "module.vpc.aws_lb_target_group.purchase_intelligence_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/purchase-intelligence-tg/dad6ec4a7602fd32"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[79/121] purchase-service-backend-tg"
if terraform import "module.vpc.aws_lb_target_group.purchase_service_backend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/purchase-service-backend-tg/cbb7f376aac19f07"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[80/121] purchase-service-frontend-tg"
if terraform import "module.vpc.aws_lb_target_group.purchase_service_frontend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/purchase-service-frontend-tg/1a801e80869743f7"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[81/121] regos-tg"
if terraform import "module.vpc.aws_lb_target_group.regos_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/regos-tg/9bb8312c377edc04"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[82/121] reports-service-tg"
if terraform import "module.vpc.aws_lb_target_group.reports_service_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/reports-service-tg/483619a0086e8511"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[83/121] revenue-incentive-tg"
if terraform import "module.vpc.aws_lb_target_group.revenue_incentive_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/revenue-incentive-tg/b492542212b4c4be"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[84/121] sales-clickhouse-tg"
if terraform import "module.vpc.aws_lb_target_group.sales_clickhouse_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/sales-clickhouse-tg/90fe9db9de51c1cf"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[85/121] sales-dashboard-backend-tg"
if terraform import "module.vpc.aws_lb_target_group.sales_dashboard_backend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/sales-dashboard-backend-tg/ac00b9fa4ec6a18d"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[86/121] sales-dashboard-frontend-tg"
if terraform import "module.vpc.aws_lb_target_group.sales_dashboard_frontend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/sales-dashboard-frontend-tg/4d0ab2690f74bc7b"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[87/121] sales-service-backend-tg"
if terraform import "module.vpc.aws_lb_target_group.sales_service_backend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/sales-service-backend-tg/e7b699bb845a0fcc"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[88/121] sales-service-frontend-tg"
if terraform import "module.vpc.aws_lb_target_group.sales_service_frontend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/sales-service-frontend-tg/15655e8c52ea3871"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[89/121] security-tg"
if terraform import "module.vpc.aws_lb_target_group.security_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/security-tg/5fc53644415f2088"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[90/121] sgl-ecommerce-backend-tg"
if terraform import "module.vpc.aws_lb_target_group.sgl_ecommerce_backend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/sgl-ecommerce-backend-tg/edce09e613f0d4db"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[91/121] sgl-ecommerce-frontend-tg"
if terraform import "module.vpc.aws_lb_target_group.sgl_ecommerce_frontend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/sgl-ecommerce-frontend-tg/42f9b39a6ecbdbb4"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[92/121] simplewebpage"
if terraform import "module.vpc.aws_lb_target_group.simplewebpage" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/simplewebpage/f3ead7d7b9e23268"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[93/121] sla-rule-engine-backend-tg"
if terraform import "module.vpc.aws_lb_target_group.sla_rule_engine_backend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/sla-rule-engine-backend-tg/61c3491a8483f6bc"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[94/121] sla-rule-engine-frontend-tg"
if terraform import "module.vpc.aws_lb_target_group.sla_rule_engine_frontend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/sla-rule-engine-frontend-tg/aa8bc8dda1158cc0"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[95/121] sourcing-backend-service-tg"
if terraform import "module.vpc.aws_lb_target_group.sourcing_backend_service_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/sourcing-backend-service-tg/8d5f9e70b8f204df"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[96/121] sourcing-frontend-service-tg"
if terraform import "module.vpc.aws_lb_target_group.sourcing_frontend_service_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/sourcing-frontend-service-tg/e8e711c0a9f03a6d"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[97/121] sso-litigation-management-api-tg"
if terraform import "module.vpc.aws_lb_target_group.sso_litigation_management_api_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/sso-litigation-management-api-tg/ab2506f26788c64f"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[98/121] sso-litigation-management-tg"
if terraform import "module.vpc.aws_lb_target_group.sso_litigation_management_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/sso-litigation-management-tg/e23cc97be03f406d"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[99/121] sso-mis-tg"
if terraform import "module.vpc.aws_lb_target_group.sso_mis_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/sso-mis-tg/91cb464a3feed21e"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[100/121] sso-project-management-tg"
if terraform import "module.vpc.aws_lb_target_group.sso_project_management_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/sso-project-management-tg/ac8e8f506f6e8b5b"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[101/121] staging-aster-node-tg"
if terraform import "module.vpc.aws_lb_target_group.staging_aster_node_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/staging-aster-node-tg/7677833e040ac98b"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[102/121] staging-asterdocs-frontend-tg"
if terraform import "module.vpc.aws_lb_target_group.staging_asterdocs_frontend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/staging-asterdocs-frontend-tg/3231b226f90d0e14"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[103/121] staging-authserver-backend-tg"
if terraform import "module.vpc.aws_lb_target_group.staging_authserver_backend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/staging-authserver-backend-tg/da716b7892c35565"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[104/121] staging-authserver-frontend-tg"
if terraform import "module.vpc.aws_lb_target_group.staging_authserver_frontend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/staging-authserver-frontend-tg/0c4ebd109f79dd5c"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[105/121] staging-supplier-kpi-b-85763a-tg"
if terraform import "module.vpc.aws_lb_target_group.staging_supplier_kpi_b_85763a_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/staging-supplier-kpi-b-85763a-tg/6eacf536dc45252e"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[106/121] staging-supplier-kpi-frontend-tg"
if terraform import "module.vpc.aws_lb_target_group.staging_supplier_kpi_frontend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/staging-supplier-kpi-frontend-tg/99c49177588a0212"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[107/121] supplier-kpi-backend-dev-tg"
if terraform import "module.vpc.aws_lb_target_group.supplier_kpi_backend_dev_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/supplier-kpi-backend-dev-tg/1737e3f1d572f5ec"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[108/121] supplier-kpi-backend-v2-tg"
if terraform import "module.vpc.aws_lb_target_group.supplier_kpi_backend_v2_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/supplier-kpi-backend-v2-tg/d5f1a1d2feeda1f4"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[109/121] supplier-kpi-dev-tg"
if terraform import "module.vpc.aws_lb_target_group.supplier_kpi_dev_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/supplier-kpi-dev-tg/602eb52cd505980a"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[110/121] supplier-kpi-frontend-tg"
if terraform import "module.vpc.aws_lb_target_group.supplier_kpi_frontend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/supplier-kpi-frontend-tg/7d2027ac139723ba"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[111/121] synapsebiolab-tg"
if terraform import "module.vpc.aws_lb_target_group.synapsebiolab_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/synapsebiolab-tg/680987b608c5afb4"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[112/121] task-management-tg"
if terraform import "module.vpc.aws_lb_target_group.task_management_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/task-management-tg/f7b26b7513aad0b7"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[113/121] task-service-frontend-tg"
if terraform import "module.vpc.aws_lb_target_group.task_service_frontend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/task-service-frontend-tg/adae0e26f89b5c7b"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[114/121] taskmanagement-website-tg"
if terraform import "module.vpc.aws_lb_target_group.taskmanagement_website_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/taskmanagement-website-tg/a35ac279b88402aa"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[115/121] ticketing-frontend-tg"
if terraform import "module.vpc.aws_lb_target_group.ticketing_frontend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/ticketing-frontend-tg/adad2aae56f63053"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[116/121] ticketing-system-backend-tg"
if terraform import "module.vpc.aws_lb_target_group.ticketing_system_backend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/ticketing-system-backend-tg/c7357aa185a13963"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[117/121] ticketing-system-frontend-tg"
if terraform import "module.vpc.aws_lb_target_group.ticketing_system_frontend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/ticketing-system-frontend-tg/230a2fe056e61c39"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[118/121] vmi-service-backend-tg"
if terraform import "module.vpc.aws_lb_target_group.vmi_service_backend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/vmi-service-backend-tg/710726192692d5e8"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[119/121] vmi-service-frontend-tg"
if terraform import "module.vpc.aws_lb_target_group.vmi_service_frontend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/vmi-service-frontend-tg/9c0b48d06c08d7eb"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[120/121] wms-service-backend-tg"
if terraform import "module.vpc.aws_lb_target_group.wms_service_backend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/wms-service-backend-tg/50628fbb54428253"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo "[121/121] wms-service-frontend-tg"
if terraform import "module.vpc.aws_lb_target_group.wms_service_frontend_tg" "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/wms-service-frontend-tg/53dbe8eeea635dbe"; then
  IMPORTED=$((IMPORTED + 1))
else
  echo "  WARN: failed or already imported — continuing"
  FAILED=$((FAILED + 1))
fi

echo ""
echo "Done. Imported: $IMPORTED | Skipped/Failed: $FAILED"
echo ""
echo "Next step: terraform plan  (must show 0 to destroy)"
