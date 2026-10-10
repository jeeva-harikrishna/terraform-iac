resource "aws_ecs_cluster" "staging_cluster" {
  name = "staging-cluster"
}

resource "aws_ecs_cluster_capacity_providers" "staging_cluster" {
  cluster_name       = aws_ecs_cluster.staging_cluster.name
  capacity_providers = ["FARGATE"]
}

resource "aws_ecs_service" "supplier_kpi_backend_v2" {
  name                = "supplier-kpi-backend-v2"
  cluster             = aws_ecs_cluster.staging_cluster.id
  task_definition     = aws_ecs_task_definition.staging_supplier_kpi_backend_v2_r1.arn
  desired_count       = 1
  scheduling_strategy = "REPLICA"
  network_configuration {
    subnets          = ["subnet-073cba83e3cde7daf", "subnet-0eeefbeb3f67a5dfc"]
    security_groups  = ["sg-088b1a7bdd325cef8"]
    assign_public_ip = false
  }
  load_balancer {
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/staging-supplier-kpi-b-85763a-tg/6eacf536dc45252e"
    container_name   = "supplier-kpi-backend-v2"
    container_port   = 8080
  }
  lifecycle {
    ignore_changes = [
      task_definition,
      availability_zone_rebalancing,
      enable_execute_command,
      platform_version,
      iam_role,
      propagate_tags,
      tags,
      tags_all,
    ]
  }
}

resource "aws_ecs_service" "authserver_backend" {
  name                = "authserver-backend"
  cluster             = aws_ecs_cluster.staging_cluster.id
  task_definition     = aws_ecs_task_definition.staging_authserver_backend_r5.arn
  desired_count       = 1
  scheduling_strategy = "REPLICA"
  network_configuration {
    subnets          = ["subnet-073cba83e3cde7daf", "subnet-0eeefbeb3f67a5dfc"]
    security_groups  = ["sg-088b1a7bdd325cef8"]
    assign_public_ip = false
  }
  load_balancer {
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/staging-authserver-backend-tg/da716b7892c35565"
    container_name   = "authserver-backend"
    container_port   = 8080
  }
  lifecycle {
    ignore_changes = [
      task_definition,
      availability_zone_rebalancing,
      enable_execute_command,
      platform_version,
      iam_role,
      propagate_tags,
      tags,
      tags_all,
    ]
  }
}

resource "aws_ecs_service" "asterdocs_frontend" {
  name                = "asterdocs-frontend"
  cluster             = aws_ecs_cluster.staging_cluster.id
  task_definition     = aws_ecs_task_definition.staging_asterdocs_frontend_r4.arn
  desired_count       = 1
  scheduling_strategy = "REPLICA"
  network_configuration {
    subnets          = ["subnet-073cba83e3cde7daf", "subnet-0eeefbeb3f67a5dfc"]
    security_groups  = ["sg-088b1a7bdd325cef8"]
    assign_public_ip = false
  }
  load_balancer {
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/staging-asterdocs-frontend-tg/3231b226f90d0e14"
    container_name   = "asterdocs-frontend"
    container_port   = 8080
  }
  lifecycle {
    ignore_changes = [
      task_definition,
      availability_zone_rebalancing,
      enable_execute_command,
      platform_version,
      iam_role,
      propagate_tags,
      tags,
      tags_all,
    ]
  }
}

resource "aws_ecs_service" "supplier_kpi_frontend" {
  name                = "supplier-kpi-frontend"
  cluster             = aws_ecs_cluster.staging_cluster.id
  task_definition     = aws_ecs_task_definition.staging_supplier_kpi_frontend_r12.arn
  desired_count       = 1
  scheduling_strategy = "REPLICA"
  network_configuration {
    subnets          = ["subnet-073cba83e3cde7daf", "subnet-0eeefbeb3f67a5dfc"]
    security_groups  = ["sg-088b1a7bdd325cef8"]
    assign_public_ip = false
  }
  load_balancer {
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/staging-supplier-kpi-frontend-tg/99c49177588a0212"
    container_name   = "supplier-kpi-frontend"
    container_port   = 8080
  }
  lifecycle {
    ignore_changes = [
      task_definition,
      availability_zone_rebalancing,
      enable_execute_command,
      platform_version,
      iam_role,
      propagate_tags,
      tags,
      tags_all,
    ]
  }
}

resource "aws_ecs_service" "authserver_frontend" {
  name                = "authserver-frontend"
  cluster             = aws_ecs_cluster.staging_cluster.id
  task_definition     = aws_ecs_task_definition.staging_authserver_frontend_r5.arn
  desired_count       = 1
  scheduling_strategy = "REPLICA"
  network_configuration {
    subnets          = ["subnet-073cba83e3cde7daf", "subnet-0eeefbeb3f67a5dfc"]
    security_groups  = ["sg-088b1a7bdd325cef8"]
    assign_public_ip = false
  }
  load_balancer {
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/staging-authserver-frontend-tg/0c4ebd109f79dd5c"
    container_name   = "authserver-frontend"
    container_port   = 8080
  }
  lifecycle {
    ignore_changes = [
      task_definition,
      availability_zone_rebalancing,
      enable_execute_command,
      platform_version,
      iam_role,
      propagate_tags,
      tags,
      tags_all,
    ]
  }
}

resource "aws_ecs_service" "aster_node" {
  name                = "aster-node"
  cluster             = aws_ecs_cluster.staging_cluster.id
  task_definition     = aws_ecs_task_definition.staging_aster_node_r3.arn
  desired_count       = 1
  scheduling_strategy = "REPLICA"
  network_configuration {
    subnets          = ["subnet-073cba83e3cde7daf", "subnet-0eeefbeb3f67a5dfc"]
    security_groups  = ["sg-088b1a7bdd325cef8"]
    assign_public_ip = false
  }
  load_balancer {
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/staging-aster-node-tg/7677833e040ac98b"
    container_name   = "aster-node"
    container_port   = 8080
  }
  lifecycle {
    ignore_changes = [
      task_definition,
      availability_zone_rebalancing,
      enable_execute_command,
      platform_version,
      iam_role,
      propagate_tags,
      tags,
      tags_all,
    ]
  }
}
