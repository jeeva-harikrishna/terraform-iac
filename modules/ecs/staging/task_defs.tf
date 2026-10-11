data "aws_ecs_task_definition" "staging_supplier_kpi_backend_v2" {
  task_definition = "staging-supplier-kpi-backend-v2"
}

data "aws_ecs_task_definition" "staging_findsuppliers_frontend" {
  task_definition = "staging-findsuppliers-frontend"
}

data "aws_ecs_task_definition" "staging_authserver_backend" {
  task_definition = "staging-authserver-backend"
}

data "aws_ecs_task_definition" "staging_vmi_service_frontend" {
  task_definition = "staging-vmi-service-frontend"
}

data "aws_ecs_task_definition" "staging_findsuppliers_backend" {
  task_definition = "staging-findsuppliers-backend"
}

data "aws_ecs_task_definition" "staging_asterdocs_frontend" {
  task_definition = "staging-asterdocs-frontend"
}

data "aws_ecs_task_definition" "staging_vmi_service_backend" {
  task_definition = "staging-vmi-service-backend"
}

data "aws_ecs_task_definition" "staging_supplier_kpi_frontend" {
  task_definition = "staging-supplier-kpi-frontend"
}

data "aws_ecs_task_definition" "staging_authserver_frontend" {
  task_definition = "staging-authserver-frontend"
}

data "aws_ecs_task_definition" "staging_aster_node" {
  task_definition = "staging-aster-node"
}
