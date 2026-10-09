# alb.tf — managed by Terraform (imported)

resource "aws_lb" "security_alb" {
  name               = "security-alb"
  internal           = false
  load_balancer_type = "application"
  subnets    = ["subnet-00aeadbdd62745fc3", "subnet-0da9a2ce0bdf8f0c4", "subnet-0edb5e24493ea9804"]
  lifecycle {
    ignore_changes = all
  }
}

resource "aws_lb" "development_alb" {
  name               = "development-alb"
  internal           = false
  load_balancer_type = "application"
  subnets    = ["subnet-0d1f5a1657a43b81e", "subnet-0e4b966ab7e6a80ad"]
  lifecycle {
    ignore_changes = all
  }
}

resource "aws_lb" "development_alb_2" {
  name               = "development-alb-2"
  internal           = false
  load_balancer_type = "application"
  subnets    = ["subnet-0d1f5a1657a43b81e", "subnet-0e4b966ab7e6a80ad"]
  lifecycle {
    ignore_changes = all
  }
}

resource "aws_lb" "staging_alb" {
  name               = "staging-alb"
  internal           = false
  load_balancer_type = "application"
  subnets    = ["subnet-0d1f5a1657a43b81e", "subnet-0e4b966ab7e6a80ad"]
  lifecycle {
    ignore_changes = all
  }
}

resource "aws_lb_target_group" "ai_chatbot_website_tg" {
  name        = "ai-chatbot-website-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle {
    ignore_changes = all
  }
}

resource "aws_lb_target_group" "all_email_receive_webhook_tg" {
  name        = "all-email-receive-webhook-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle {
    ignore_changes = all
  }
}

resource "aws_lb_target_group" "aster_demo_tg" {
  name        = "aster-demo-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle {
    ignore_changes = all
  }
}

resource "aws_lb_target_group" "aster_landing_tg" {
  name        = "aster-landing-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle {
    ignore_changes = all
  }
}

resource "aws_lb_target_group" "aster_node_tg" {
  name        = "aster-node-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle {
    ignore_changes = all
  }
}

resource "aws_lb_target_group" "asterdocs_frontend_tg" {
  name        = "asterdocs-frontend-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle {
    ignore_changes = all
  }
}

resource "aws_lb_target_group" "audit_management_backend_tg" {
  name        = "audit-management-backend-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle {
    ignore_changes = all
  }
}

resource "aws_lb_target_group" "audit_management_frontend_tg" {
  name        = "audit-management-frontend-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle {
    ignore_changes = all
  }
}

resource "aws_lb_target_group" "audit_trail_frontend_tg" {
  name        = "audit-trail-frontend-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle {
    ignore_changes = all
  }
}

resource "aws_lb_target_group" "authorization_v2_tg" {
  name        = "authorization-v2-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle {
    ignore_changes = all
  }
}

resource "aws_lb_target_group" "authserver_backend_tg" {
  name        = "authserver-backend-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle {
    ignore_changes = all
  }
}

resource "aws_lb_target_group" "authserver_frontend_tg" {
  name        = "authserver-frontend-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle {
    ignore_changes = all
  }
}

resource "aws_lb_target_group" "b2badmin_backend_tg" {
  name        = "b2badmin-backend-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle {
    ignore_changes = all
  }
}

resource "aws_lb_target_group" "b2badmin_frontend_tg" {
  name        = "b2badmin-frontend-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle {
    ignore_changes = all
  }
}

resource "aws_lb_target_group" "biotrace_next_tg" {
  name        = "biotrace-next-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle {
    ignore_changes = all
  }
}

resource "aws_lb_target_group" "buyersflow_backend_tg" {
  name        = "buyersflow-backend-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle {
    ignore_changes = all
  }
}

resource "aws_lb_target_group" "buyersflow_caption_tg" {
  name        = "buyersflow-caption-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle {
    ignore_changes = all
  }
}

resource "aws_lb_target_group" "buyersflow_new" {
  name        = "buyersflow-new"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle {
    ignore_changes = all
  }
}

resource "aws_lb_target_group" "buyersflow_new_tg" {
  name        = "buyersflow-new-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle {
    ignore_changes = all
  }
}

resource "aws_lb_target_group" "buyersflow_website_tg" {
  name        = "buyersflow-website-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle {
    ignore_changes = all
  }
}

resource "aws_lb_target_group" "calculator_v2" {
  name        = "calculator-v2"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle {
    ignore_changes = all
  }
}

resource "aws_lb_target_group" "calculator_v2_tg" {
  name        = "calculator-v2-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle {
    ignore_changes = all
  }
}

resource "aws_lb_target_group" "clickhouse_tg" {
  name        = "clickhouse-tg"
  port        = 8123
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle {
    ignore_changes = all
  }
}

resource "aws_lb_target_group" "clicklens_tg" {
  name        = "clicklens-tg"
  port        = 3000
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle {
    ignore_changes = all
  }
}

resource "aws_lb_target_group" "communication_backend_tg" {
  name        = "communication-backend-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle {
    ignore_changes = all
  }
}

resource "aws_lb_target_group" "communication_frontend_tg" {
  name        = "communication-frontend-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle {
    ignore_changes = all
  }
}

resource "aws_lb_target_group" "company_research_api_backend_tg" {
  name        = "company-research-api-backend-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle {
    ignore_changes = all
  }
}

resource "aws_lb_target_group" "company_research_backend_tg" {
  name        = "company-research-backend-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle {
    ignore_changes = all
  }
}

resource "aws_lb_target_group" "compliance_service_tg" {
  name        = "compliance-service-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle {
    ignore_changes = all
  }
}

resource "aws_lb_target_group" "confluxhr_website_frontend_tg" {
  name        = "confluxhr-website-frontend-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle {
    ignore_changes = all
  }
}

resource "aws_lb_target_group" "customer_map_service_backend_tg" {
  name        = "customer-map-service-backend-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle {
    ignore_changes = all
  }
}

resource "aws_lb_target_group" "customer_map_service_frontend_tg" {
  name        = "customer-map-service-frontend-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle {
    ignore_changes = all
  }
}

resource "aws_lb_target_group" "dbi_chat_area_tg" {
  name        = "dbi-chat-area-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle {
    ignore_changes = all
  }
}

resource "aws_lb_target_group" "dbi_chat_widget_tg" {
  name        = "dbi-chat-widget-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle {
    ignore_changes = all
  }
}

resource "aws_lb_target_group" "dbi_hubspot_backend_tg" {
  name        = "dbi-hubspot-backend-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle {
    ignore_changes = all
  }
}

resource "aws_lb_target_group" "dbi_websocket_tg" {
  name        = "dbi-websocket-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle {
    ignore_changes = all
  }
}

resource "aws_lb_target_group" "drmallad_tg" {
  name        = "drmallad-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle {
    ignore_changes = all
  }
}

resource "aws_lb_target_group" "ecommerce_frontend_next_tg" {
  name        = "ecommerce-frontend-next-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle {
    ignore_changes = all
  }
}

resource "aws_lb_target_group" "entity_service_tg" {
  name        = "entity-service-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle {
    ignore_changes = all
  }
}

resource "aws_lb_target_group" "exit_frontend_tg" {
  name        = "exit-frontend-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle {
    ignore_changes = all
  }
}

resource "aws_lb_target_group" "farm_management_tg" {
  name        = "farm-management-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle {
    ignore_changes = all
  }
}

resource "aws_lb_target_group" "finance_backend_service_tg" {
  name        = "finance-backend-service-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle {
    ignore_changes = all
  }
}

resource "aws_lb_target_group" "finance_frontend_service_tg" {
  name        = "finance-frontend-service-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle {
    ignore_changes = all
  }
}

resource "aws_lb_target_group" "finance_reports_service_tg" {
  name        = "finance-reports-service-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle {
    ignore_changes = all
  }
}

resource "aws_lb_target_group" "findsuppliers_backend_tg" {
  name        = "findsuppliers-backend-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle {
    ignore_changes = all
  }
}

resource "aws_lb_target_group" "findsuppliers_frontend_tg" {
  name        = "findsuppliers-frontend-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle {
    ignore_changes = all
  }
}

resource "aws_lb_target_group" "findsuppliers_website_tg" {
  name        = "findsuppliers-website-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle {
    ignore_changes = all
  }
}

resource "aws_lb_target_group" "gj_ecommerce_backend_tg" {
  name        = "gj-ecommerce-backend-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle {
    ignore_changes = all
  }
}

resource "aws_lb_target_group" "gjca_ecommerce_backend_tg" {
  name        = "gjca-ecommerce-backend-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle {
    ignore_changes = all
  }
}

resource "aws_lb_target_group" "gjca_ecommerce_frontend_tg" {
  name        = "gjca-ecommerce-frontend-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle {
    ignore_changes = all
  }
}

resource "aws_lb_target_group" "hrms_attendance_tg" {
  name        = "hrms-attendance-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle {
    ignore_changes = all
  }
}

resource "aws_lb_target_group" "hrms_backend_tg" {
  name        = "hrms-backend-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle {
    ignore_changes = all
  }
}

resource "aws_lb_target_group" "hrms_careeer_frontend_tg" {
  name        = "hrms-careeer-frontend-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle {
    ignore_changes = all
  }
}

resource "aws_lb_target_group" "hrms_employee_tg" {
  name        = "hrms-employee-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle {
    ignore_changes = all
  }
}

resource "aws_lb_target_group" "hrms_exit_process_frontend_tg" {
  name        = "hrms-exit-process-frontend-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle {
    ignore_changes = all
  }
}

resource "aws_lb_target_group" "hrms_inventory_tg" {
  name        = "hrms-inventory-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle {
    ignore_changes = all
  }
}

resource "aws_lb_target_group" "hrms_payroll_tg" {
  name        = "hrms-payroll-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle {
    ignore_changes = all
  }
}




























resource "aws_lb_target_group" "staging_aster_node_tg" {
  name        = "staging-aster-node-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle {
    ignore_changes = all
  }
}

resource "aws_lb_target_group" "staging_authserver_backend_tg" {
  name        = "staging-authserver-backend-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle {
    ignore_changes = all
  }
}

resource "aws_lb_target_group" "staging_authserver_frontend_tg" {
  name        = "staging-authserver-frontend-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle {
    ignore_changes = all
  }
}





















resource "aws_lb_target_group" "ticketing_frontend_tg" {
  name        = "ticketing-frontend-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle {
    ignore_changes = all
  }
}





resource "aws_lb_target_group" "purchase_service_frontend_tg" {
  name        = "purchase-service-frontend-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle { ignore_changes = all }
}
resource "aws_lb_target_group" "regos_tg" {
  name        = "regos-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle { ignore_changes = all }
}
resource "aws_lb_target_group" "reports_service_tg" {
  name        = "reports-service-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle { ignore_changes = all }
}
resource "aws_lb_target_group" "revenue_incentive_tg" {
  name        = "revenue-incentive-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle { ignore_changes = all }
}
resource "aws_lb_target_group" "sales_clickhouse_tg" {
  name        = "sales-clickhouse-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle { ignore_changes = all }
}
resource "aws_lb_target_group" "sales_dashboard_backend_tg" {
  name        = "sales-dashboard-backend-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle { ignore_changes = all }
}
resource "aws_lb_target_group" "sales_dashboard_frontend_tg" {
  name        = "sales-dashboard-frontend-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle { ignore_changes = all }
}
resource "aws_lb_target_group" "sales_service_backend_tg" {
  name        = "sales-service-backend-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle { ignore_changes = all }
}
resource "aws_lb_target_group" "sales_service_frontend_tg" {
  name        = "sales-service-frontend-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle { ignore_changes = all }
}
resource "aws_lb_target_group" "security_tg" {
  name        = "security-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle { ignore_changes = all }
}
resource "aws_lb_target_group" "sgl_ecommerce_backend_tg" {
  name        = "sgl-ecommerce-backend-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle { ignore_changes = all }
}
resource "aws_lb_target_group" "sgl_ecommerce_frontend_tg" {
  name        = "sgl-ecommerce-frontend-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle { ignore_changes = all }
}
resource "aws_lb_target_group" "simplewebpage" {
  name        = "simplewebpage"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle { ignore_changes = all }
}
resource "aws_lb_target_group" "sla_rule_engine_backend_tg" {
  name        = "sla-rule-engine-backend-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle { ignore_changes = all }
}
resource "aws_lb_target_group" "sla_rule_engine_frontend_tg" {
  name        = "sla-rule-engine-frontend-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle { ignore_changes = all }
}
resource "aws_lb_target_group" "sourcing_backend_service_tg" {
  name        = "sourcing-backend-service-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle { ignore_changes = all }
}
resource "aws_lb_target_group" "sourcing_frontend_service_tg" {
  name        = "sourcing-frontend-service-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle { ignore_changes = all }
}
resource "aws_lb_target_group" "sso_litigation_management_api_tg" {
  name        = "sso-litigation-management-api-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle { ignore_changes = all }
}
resource "aws_lb_target_group" "sso_litigation_management_tg" {
  name        = "sso-litigation-management-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle { ignore_changes = all }
}
resource "aws_lb_target_group" "sso_mis_tg" {
  name        = "sso-mis-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle { ignore_changes = all }
}
resource "aws_lb_target_group" "sso_project_management_tg" {
  name        = "sso-project-management-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle { ignore_changes = all }
}
resource "aws_lb_target_group" "staging_asterdocs_frontend_tg" {
  name        = "staging-asterdocs-frontend-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle { ignore_changes = all }
}
resource "aws_lb_target_group" "staging_supplier_kpi_b_85763a_tg" {
  name        = "staging-supplier-kpi-b-85763a-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle { ignore_changes = all }
}
resource "aws_lb_target_group" "staging_supplier_kpi_frontend_tg" {
  name        = "staging-supplier-kpi-frontend-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle { ignore_changes = all }
}
resource "aws_lb_target_group" "supplier_kpi_backend_dev_tg" {
  name        = "supplier-kpi-backend-dev-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle { ignore_changes = all }
}
resource "aws_lb_target_group" "supplier_kpi_backend_v2_tg" {
  name        = "supplier-kpi-backend-v2-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle { ignore_changes = all }
}
resource "aws_lb_target_group" "supplier_kpi_dev_tg" {
  name        = "supplier-kpi-dev-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle { ignore_changes = all }
}
resource "aws_lb_target_group" "supplier_kpi_frontend_tg" {
  name        = "supplier-kpi-frontend-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle { ignore_changes = all }
}
resource "aws_lb_target_group" "synapsebiolab_tg" {
  name        = "synapsebiolab-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle { ignore_changes = all }
}
resource "aws_lb_target_group" "task_management_tg" {
  name        = "task-management-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle { ignore_changes = all }
}
resource "aws_lb_target_group" "task_service_frontend_tg" {
  name        = "task-service-frontend-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle { ignore_changes = all }
}
resource "aws_lb_target_group" "taskmanagement_website_tg" {
  name        = "taskmanagement-website-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle { ignore_changes = all }
}
resource "aws_lb_target_group" "ticketing_system_backend_tg" {
  name        = "ticketing-system-backend-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle { ignore_changes = all }
}
resource "aws_lb_target_group" "ticketing_system_frontend_tg" {
  name        = "ticketing-system-frontend-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle { ignore_changes = all }
}
resource "aws_lb_target_group" "vmi_service_backend_tg" {
  name        = "vmi-service-backend-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle { ignore_changes = all }
}
resource "aws_lb_target_group" "vmi_service_frontend_tg" {
  name        = "vmi-service-frontend-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle { ignore_changes = all }
}
resource "aws_lb_target_group" "wms_service_backend_tg" {
  name        = "wms-service-backend-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle { ignore_changes = all }
}
resource "aws_lb_target_group" "wms_service_frontend_tg" {
  name        = "wms-service-frontend-tg"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  lifecycle { ignore_changes = all }
}

# ── Missing TGs added 2026-10-05 ──────────────────────────────────────────
resource "aws_lb_target_group" "hrms_recruitment_frontend_tg" {
  name        = "hrms-recruitment-frontend-tg"
  port        = 8080
  protocol    = "HTTP"
  vpc_id      = var.vpc_id
  target_type = "ip"

  health_check {
    enabled             = true
    healthy_threshold   = 2
    interval            = 30
    matcher             = "200"
    path                = "/health"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = 5
    unhealthy_threshold = 3
  }

  stickiness {
    enabled = false
    type    = "lb_cookie"
  }

  deregistration_delay = 30

  tags = {
  }
}

resource "aws_lb_target_group" "hrms_report_tg" {
  name        = "hrms-report-tg"
  port        = 8080
  protocol    = "HTTP"
  vpc_id      = var.vpc_id
  target_type = "ip"

  health_check {
    enabled             = true
    healthy_threshold   = 2
    interval            = 30
    matcher             = "200"
    path                = "/health"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = 5
    unhealthy_threshold = 3
  }

  stickiness {
    enabled = false
    type    = "lb_cookie"
  }

  deregistration_delay = 30

  tags = {
  }
}

resource "aws_lb_target_group" "inventory_service_backend_tg" {
  name        = "inventory-service-backend-tg"
  port        = 8080
  protocol    = "HTTP"
  vpc_id      = var.vpc_id
  target_type = "ip"

  health_check {
    enabled             = true
    healthy_threshold   = 2
    interval            = 30
    matcher             = "200"
    path                = "/health"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = 5
    unhealthy_threshold = 3
  }

  stickiness {
    enabled = false
    type    = "lb_cookie"
  }

  deregistration_delay = 30

  tags = {
  }
}

resource "aws_lb_target_group" "inventory_service_frontend_tg" {
  name        = "inventory-service-frontend-tg"
  port        = 8080
  protocol    = "HTTP"
  vpc_id      = var.vpc_id
  target_type = "ip"

  health_check {
    enabled             = true
    healthy_threshold   = 2
    interval            = 30
    matcher             = "200"
    path                = "/health"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = 5
    unhealthy_threshold = 3
  }

  stickiness {
    enabled = false
    type    = "lb_cookie"
  }

  deregistration_delay = 30

  tags = {
  }
}

resource "aws_lb_target_group" "jeevahealthcare_website_tg" {
  name        = "jeevahealthcare-website-tg"
  port        = 8080
  protocol    = "HTTP"
  vpc_id      = var.vpc_id
  target_type = "ip"

  health_check {
    enabled             = true
    healthy_threshold   = 5
    interval            = 30
    matcher             = "200"
    path                = "/health"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = 5
    unhealthy_threshold = 2
  }

  stickiness {
    enabled = false
    type    = "lb_cookie"
  }

  deregistration_delay = 30

  tags = {
  }
}

resource "aws_lb_target_group" "lead_qualifier_backend_tg" {
  name        = "lead-qualifier-backend-tg"
  port        = 8080
  protocol    = "HTTP"
  vpc_id      = var.vpc_id
  target_type = "ip"

  health_check {
    enabled             = true
    healthy_threshold   = 2
    interval            = 15
    matcher             = "200"
    path                = "/health"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = 5
    unhealthy_threshold = 3
  }

  stickiness {
    enabled = false
    type    = "lb_cookie"
  }

  deregistration_delay = 30

  tags = {
  }
}

resource "aws_lb_target_group" "lead_qualifier_frontend_tg" {
  name        = "lead-qualifier-frontend-tg"
  port        = 8080
  protocol    = "HTTP"
  vpc_id      = var.vpc_id
  target_type = "ip"

  health_check {
    enabled             = true
    healthy_threshold   = 2
    interval            = 15
    matcher             = "200"
    path                = "/health"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = 5
    unhealthy_threshold = 3
  }

  stickiness {
    enabled = false
    type    = "lb_cookie"
  }

  deregistration_delay = 30

  tags = {
  }
}

resource "aws_lb_target_group" "marketing_backend_service_tg" {
  name        = "marketing-backend-service-tg"
  port        = 8080
  protocol    = "HTTP"
  vpc_id      = var.vpc_id
  target_type = "ip"

  health_check {
    enabled             = true
    healthy_threshold   = 2
    interval            = 15
    matcher             = "200"
    path                = "/api/health"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = 5
    unhealthy_threshold = 3
  }

  stickiness {
    enabled = false
    type    = "lb_cookie"
  }

  deregistration_delay = 30

  tags = {
  }
}

resource "aws_lb_target_group" "marketing_frontend_service_tg" {
  name        = "marketing-frontend-service-tg"
  port        = 8080
  protocol    = "HTTP"
  vpc_id      = var.vpc_id
  target_type = "ip"

  health_check {
    enabled             = true
    healthy_threshold   = 2
    interval            = 15
    matcher             = "200"
    path                = "/health"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = 5
    unhealthy_threshold = 3
  }

  stickiness {
    enabled = false
    type    = "lb_cookie"
  }

  deregistration_delay = 30

  tags = {
  }
}

resource "aws_lb_target_group" "master_configuration_backend_tg" {
  name        = "master-configuration-backend-tg"
  port        = 8080
  protocol    = "HTTP"
  vpc_id      = var.vpc_id
  target_type = "ip"

  health_check {
    enabled             = true
    healthy_threshold   = 5
    interval            = 30
    matcher             = "200"
    path                = "/health"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = 5
    unhealthy_threshold = 2
  }

  stickiness {
    enabled = false
    type    = "lb_cookie"
  }

  deregistration_delay = 30

  tags = {
  }
}

resource "aws_lb_target_group" "master_product_service_tg" {
  name        = "master-product-service-tg"
  port        = 8080
  protocol    = "HTTP"
  vpc_id      = var.vpc_id
  target_type = "ip"

  health_check {
    enabled             = true
    healthy_threshold   = 2
    interval            = 30
    matcher             = "200"
    path                = "/health"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = 5
    unhealthy_threshold = 3
  }

  stickiness {
    enabled = false
    type    = "lb_cookie"
  }

  deregistration_delay = 30

  tags = {
  }
}

resource "aws_lb_target_group" "mfg_backend_tg" {
  name        = "mfg-backend-tg"
  port        = 8080
  protocol    = "HTTP"
  vpc_id      = var.vpc_id
  target_type = "ip"

  health_check {
    enabled             = true
    healthy_threshold   = 2
    interval            = 30
    matcher             = "200"
    path                = "/health"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = 5
    unhealthy_threshold = 3
  }

  stickiness {
    enabled = false
    type    = "lb_cookie"
  }

  deregistration_delay = 30

  tags = {
  }
}

resource "aws_lb_target_group" "mfg_frontend_tg" {
  name        = "mfg-frontend-tg"
  port        = 8080
  protocol    = "HTTP"
  vpc_id      = var.vpc_id
  target_type = "ip"

  health_check {
    enabled             = true
    healthy_threshold   = 2
    interval            = 30
    matcher             = "200"
    path                = "/health"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = 5
    unhealthy_threshold = 3
  }

  stickiness {
    enabled = false
    type    = "lb_cookie"
  }

  deregistration_delay = 30

  tags = {
  }
}

resource "aws_lb_target_group" "mfg_salesorder_backend_tg" {
  name        = "mfg-salesorder-backend-tg"
  port        = 8080
  protocol    = "HTTP"
  vpc_id      = var.vpc_id
  target_type = "ip"

  health_check {
    enabled             = true
    healthy_threshold   = 2
    interval            = 30
    matcher             = "200"
    path                = "/api/health"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = 5
    unhealthy_threshold = 3
  }

  stickiness {
    enabled = false
    type    = "lb_cookie"
  }

  deregistration_delay = 30

  tags = {
  }
}

resource "aws_lb_target_group" "mfg_salesorder_frontend_tg" {
  name        = "mfg-salesorder-frontend-tg"
  port        = 8080
  protocol    = "HTTP"
  vpc_id      = var.vpc_id
  target_type = "ip"

  health_check {
    enabled             = true
    healthy_threshold   = 2
    interval            = 30
    matcher             = "200"
    path                = "/health"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = 5
    unhealthy_threshold = 3
  }

  stickiness {
    enabled = false
    type    = "lb_cookie"
  }

  deregistration_delay = 30

  tags = {
  }
}

resource "aws_lb_target_group" "my_trade_guru_backend_tg" {
  name        = "my-trade-guru-backend-tg"
  port        = 8080
  protocol    = "HTTP"
  vpc_id      = var.vpc_id
  target_type = "ip"

  health_check {
    enabled             = true
    healthy_threshold   = 5
    interval            = 30
    matcher             = "200"
    path                = "/health"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = 5
    unhealthy_threshold = 2
  }

  stickiness {
    enabled = false
    type    = "lb_cookie"
  }

  deregistration_delay = 30

  tags = {
  }
}

resource "aws_lb_target_group" "my_trade_guru_frontend_tg" {
  name        = "my-trade-guru-frontend-tg"
  port        = 8080
  protocol    = "HTTP"
  vpc_id      = var.vpc_id
  target_type = "ip"

  health_check {
    enabled             = true
    healthy_threshold   = 5
    interval            = 30
    matcher             = "200"
    path                = "/health"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = 5
    unhealthy_threshold = 2
  }

  stickiness {
    enabled = false
    type    = "lb_cookie"
  }

  deregistration_delay = 30

  tags = {
  }
}

resource "aws_lb_target_group" "n8n_demo_tg" {
  name        = "n8n-demo-tg"
  port        = 8080
  protocol    = "HTTP"
  vpc_id      = var.vpc_id
  target_type = "ip"

  health_check {
    enabled             = true
    healthy_threshold   = 2
    interval            = 30
    matcher             = "200"
    path                = "/healthz"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = 5
    unhealthy_threshold = 3
  }

  stickiness {
    enabled = false
    type    = "lb_cookie"
  }

  deregistration_delay = 30

  tags = {
  }
}

resource "aws_lb_target_group" "n8n_target_group" {
  name        = "n8n-target-group"
  port        = 5678
  protocol    = "HTTP"
  vpc_id      = "vpc-0bb070e4036db1f53"
  target_type = "ip"

  health_check {
    enabled             = true
    healthy_threshold   = 5
    interval            = 30
    matcher             = "200"
    path                = "/"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = 5
    unhealthy_threshold = 2
  }

  stickiness {
    enabled = false
    type    = "lb_cookie"
  }

  deregistration_delay = 30

  tags = {
  }
}

resource "aws_lb_target_group" "nexus_fast_api_tg" {
  name        = "nexus-fast-api-tg"
  port        = 8080
  protocol    = "HTTP"
  vpc_id      = var.vpc_id
  target_type = "ip"

  health_check {
    enabled             = true
    healthy_threshold   = 2
    interval            = 30
    matcher             = "200"
    path                = "/health"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = 5
    unhealthy_threshold = 3
  }

  stickiness {
    enabled = false
    type    = "lb_cookie"
  }

  deregistration_delay = 30

  tags = {
  }
}

resource "aws_lb_target_group" "nexus_landing_next_tg" {
  name        = "nexus-landing-next-tg"
  port        = 8080
  protocol    = "HTTP"
  vpc_id      = var.vpc_id
  target_type = "ip"

  health_check {
    enabled             = true
    healthy_threshold   = 2
    interval            = 30
    matcher             = "200"
    path                = "/health"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = 5
    unhealthy_threshold = 3
  }

  stickiness {
    enabled = false
    type    = "lb_cookie"
  }

  deregistration_delay = 30

  tags = {
  }
}

resource "aws_lb_target_group" "nexus_react_frontend_tg" {
  name        = "nexus-react-frontend-tg"
  port        = 8080
  protocol    = "HTTP"
  vpc_id      = var.vpc_id
  target_type = "ip"

  health_check {
    enabled             = true
    healthy_threshold   = 5
    interval            = 30
    matcher             = "200"
    path                = "/health"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = 5
    unhealthy_threshold = 2
  }

  stickiness {
    enabled = false
    type    = "lb_cookie"
  }

  deregistration_delay = 30

  tags = {
  }
}

resource "aws_lb_target_group" "notification_backend_tg" {
  name        = "notification-backend-tg"
  port        = 8080
  protocol    = "HTTP"
  vpc_id      = var.vpc_id
  target_type = "ip"

  health_check {
    enabled             = true
    healthy_threshold   = 2
    interval            = 30
    matcher             = "200"
    path                = "/health"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = 5
    unhealthy_threshold = 3
  }

  stickiness {
    enabled = false
    type    = "lb_cookie"
  }

  deregistration_delay = 30

  tags = {
  }
}

resource "aws_lb_target_group" "notification_frontend_tg" {
  name        = "notification-frontend-tg"
  port        = 8080
  protocol    = "HTTP"
  vpc_id      = var.vpc_id
  target_type = "ip"

  health_check {
    enabled             = true
    healthy_threshold   = 2
    interval            = 30
    matcher             = "200"
    path                = "/health"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = 5
    unhealthy_threshold = 3
  }

  stickiness {
    enabled = false
    type    = "lb_cookie"
  }

  deregistration_delay = 30

  tags = {
  }
}

resource "aws_lb_target_group" "pricing_engine_tg" {
  name        = "pricing-engine-tg"
  port        = 8080
  protocol    = "HTTP"
  vpc_id      = var.vpc_id
  target_type = "ip"

  health_check {
    enabled             = true
    healthy_threshold   = 5
    interval            = 30
    matcher             = "200"
    path                = "/health"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = 5
    unhealthy_threshold = 2
  }

  stickiness {
    enabled = false
    type    = "lb_cookie"
  }

  deregistration_delay = 30

  tags = {
  }
}

resource "aws_lb_target_group" "purchase_intelligence_tg" {
  name        = "purchase-intelligence-tg"
  port        = 8080
  protocol    = "HTTP"
  vpc_id      = var.vpc_id
  target_type = "ip"

  health_check {
    enabled             = true
    healthy_threshold   = 2
    interval            = 15
    matcher             = "200"
    path                = "/health"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = 5
    unhealthy_threshold = 3
  }

  stickiness {
    enabled = false
    type    = "lb_cookie"
  }

  deregistration_delay = 30

  tags = {
  }
}

resource "aws_lb_target_group" "purchase_service_backend_tg" {
  name        = "purchase-service-backend-tg"
  port        = 8080
  protocol    = "HTTP"
  vpc_id      = var.vpc_id
  target_type = "ip"

  health_check {
    enabled             = true
    healthy_threshold   = 2
    interval            = 15
    matcher             = "200"
    path                = "/health"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = 5
    unhealthy_threshold = 3
  }

  stickiness {
    enabled = false
    type    = "lb_cookie"
  }

  deregistration_delay = 30

  tags = {
  }
}


# ── ALB Listeners ──────────────────────────────────────────────

resource "aws_lb_listener" "security_alb_http" {
  load_balancer_arn = aws_lb.security_alb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type = "redirect"
    redirect {
      protocol    = "HTTPS"
      port        = "443"
      host        = "#{host}"
      path        = "/#{path}"
      query       = "#{query}"
      status_code = "HTTP_301"
    }
  }

  lifecycle { ignore_changes = all }
}

resource "aws_lb_listener" "security_alb_https" {
  load_balancer_arn = aws_lb.security_alb.arn
  port              = 443
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-TLS13-1-2-Res-2021-06"
  certificate_arn   = "arn:aws:acm:us-east-2:842676018479:certificate/df06a723-804c-4a81-b2e5-52e8040480e1"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.security_tg.arn
  }

  lifecycle { ignore_changes = all }
}

resource "aws_lb_listener" "development_alb_http" {
  load_balancer_arn = aws_lb.development_alb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type = "redirect"
    redirect {
      protocol    = "HTTPS"
      port        = "443"
      host        = "#{host}"
      path        = "/#{path}"
      query       = "#{query}"
      status_code = "HTTP_301"
    }
  }

  lifecycle { ignore_changes = all }
}

resource "aws_lb_listener" "development_alb_https" {
  load_balancer_arn = aws_lb.development_alb.arn
  port              = 443
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-TLS13-1-2-Res-PQ-2025-09"
  certificate_arn   = "arn:aws:acm:us-east-2:842676018479:certificate/38e84378-57b9-4e8b-b230-0dd33866ab9d"

  default_action {
    type         = "fixed-response"
    fixed_response {
      message_body = "Not Found"
      status_code  = "404"
      content_type = "text/plain"
    }
  }

  lifecycle { ignore_changes = all }
}

resource "aws_lb_listener" "development_alb_2_http" {
  load_balancer_arn = aws_lb.development_alb_2.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type = "redirect"
    redirect {
      protocol    = "HTTPS"
      port        = "443"
      host        = "#{host}"
      path        = "/#{path}"
      query       = "#{query}"
      status_code = "HTTP_301"
    }
  }

  lifecycle { ignore_changes = all }
}

resource "aws_lb_listener" "development_alb_2_https" {
  load_balancer_arn = aws_lb.development_alb_2.arn
  port              = 443
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-TLS13-1-2-Res-PQ-2025-09"
  certificate_arn   = "arn:aws:acm:us-east-2:842676018479:certificate/38e84378-57b9-4e8b-b230-0dd33866ab9d"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.ticketing_system_backend_tg.arn
  }

  lifecycle { ignore_changes = all }
}

resource "aws_lb_listener" "staging_alb_http" {
  load_balancer_arn = aws_lb.staging_alb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type = "redirect"
    redirect {
      protocol    = "HTTPS"
      port        = "443"
      host        = "#{host}"
      path        = "/#{path}"
      query       = "#{query}"
      status_code = "HTTP_301"
    }
  }

  lifecycle { ignore_changes = all }
}

resource "aws_lb_listener" "staging_alb_https" {
  load_balancer_arn = aws_lb.staging_alb.arn
  port              = 443
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-TLS13-1-2-Res-PQ-2025-09"
  certificate_arn   = "arn:aws:acm:us-east-2:842676018479:certificate/ee42438f-4c73-4cd9-8984-937778a4fd1f"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.staging_supplier_kpi_frontend_tg.arn
  }

  lifecycle { ignore_changes = all }
}
