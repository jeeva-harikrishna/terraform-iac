resource "aws_ecs_cluster" "staging_cluster" {
  name = "staging-cluster"

  configuration {
    execute_command_configuration {
      logging = "DEFAULT"
    }
  }
}

resource "aws_ecs_service" "supplier_kpi_backend_v2" {
  name                          = "supplier-kpi-backend-v2"
  cluster                       = aws_ecs_cluster.staging_cluster.id
  task_definition               = data.aws_ecs_task_definition.staging_supplier_kpi_backend_v2.arn
  desired_count                 = 1
  scheduling_strategy           = "REPLICA"
  platform_version              = "LATEST"
  enable_execute_command        = false
  enable_ecs_managed_tags       = true
  availability_zone_rebalancing = "ENABLED"
  iam_role                      = "/aws-service-role/ecs.amazonaws.com/AWSServiceRoleForECS"

  capacity_provider_strategy {
    capacity_provider = "FARGATE"
    weight            = 1
    base              = 0
  }
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
  deployment_circuit_breaker {
    enable   = true
    rollback = true
  }
}

resource "aws_ecs_service" "findsuppliers_frontend" {
  name                          = "findsuppliers-frontend"
  cluster                       = aws_ecs_cluster.staging_cluster.id
  task_definition               = data.aws_ecs_task_definition.staging_findsuppliers_frontend.arn
  desired_count                 = 1
  scheduling_strategy           = "REPLICA"
  platform_version              = "LATEST"
  enable_execute_command        = false
  enable_ecs_managed_tags       = true
  availability_zone_rebalancing = "ENABLED"
  iam_role                      = "/aws-service-role/ecs.amazonaws.com/AWSServiceRoleForECS"

  capacity_provider_strategy {
    capacity_provider = "FARGATE"
    weight            = 1
    base              = 0
  }
  network_configuration {
    subnets          = ["subnet-073cba83e3cde7daf", "subnet-0eeefbeb3f67a5dfc"]
    security_groups  = ["sg-088b1a7bdd325cef8"]
    assign_public_ip = false
  }
  load_balancer {
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/staging-findsuppliers-8767b4-tg/ce73ca89ebd31685"
    container_name   = "findsuppliers-frontend"
    container_port   = 8080
  }
  deployment_circuit_breaker {
    enable   = true
    rollback = true
  }
}

resource "aws_ecs_service" "authserver_backend" {
  name                          = "authserver-backend"
  cluster                       = aws_ecs_cluster.staging_cluster.id
  task_definition               = data.aws_ecs_task_definition.staging_authserver_backend.arn
  desired_count                 = 1
  scheduling_strategy           = "REPLICA"
  platform_version              = "LATEST"
  enable_execute_command        = true
  enable_ecs_managed_tags       = false
  availability_zone_rebalancing = "ENABLED"
  iam_role                      = "/aws-service-role/ecs.amazonaws.com/AWSServiceRoleForECS"

  capacity_provider_strategy {
    capacity_provider = "FARGATE_SPOT"
    weight            = 1
    base              = 0
  }
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
}

resource "aws_ecs_service" "vmi_service_frontend" {
  name                          = "vmi-service-frontend"
  cluster                       = aws_ecs_cluster.staging_cluster.id
  task_definition               = data.aws_ecs_task_definition.staging_vmi_service_frontend.arn
  desired_count                 = 1
  scheduling_strategy           = "REPLICA"
  platform_version              = "LATEST"
  enable_execute_command        = true
  enable_ecs_managed_tags       = false
  availability_zone_rebalancing = "ENABLED"
  iam_role                      = "/aws-service-role/ecs.amazonaws.com/AWSServiceRoleForECS"

  capacity_provider_strategy {
    capacity_provider = "FARGATE_SPOT"
    weight            = 1
    base              = 0
  }
  network_configuration {
    subnets          = ["subnet-073cba83e3cde7daf", "subnet-0eeefbeb3f67a5dfc"]
    security_groups  = ["sg-088b1a7bdd325cef8"]
    assign_public_ip = false
  }
  load_balancer {
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/staging-vmi-service-frontend-tg/178f5356ffc9bcda"
    container_name   = "vmi-service-frontend"
    container_port   = 8080
  }
}

resource "aws_ecs_service" "findsuppliers_backend" {
  name                          = "findsuppliers-backend"
  cluster                       = aws_ecs_cluster.staging_cluster.id
  task_definition               = data.aws_ecs_task_definition.staging_findsuppliers_backend.arn
  desired_count                 = 1
  scheduling_strategy           = "REPLICA"
  platform_version              = "LATEST"
  enable_execute_command        = false
  enable_ecs_managed_tags       = true
  availability_zone_rebalancing = "ENABLED"
  iam_role                      = "/aws-service-role/ecs.amazonaws.com/AWSServiceRoleForECS"

  capacity_provider_strategy {
    capacity_provider = "FARGATE"
    weight            = 1
    base              = 0
  }
  network_configuration {
    subnets          = ["subnet-073cba83e3cde7daf", "subnet-0eeefbeb3f67a5dfc"]
    security_groups  = ["sg-088b1a7bdd325cef8"]
    assign_public_ip = false
  }
  load_balancer {
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/staging-findsuppliers-backend-tg/4da7102cf8b761e5"
    container_name   = "findsuppliers-backend"
    container_port   = 8080
  }
  deployment_circuit_breaker {
    enable   = true
    rollback = true
  }
}

resource "aws_ecs_service" "asterdocs_frontend" {
  name                          = "asterdocs-frontend"
  cluster                       = aws_ecs_cluster.staging_cluster.id
  task_definition               = data.aws_ecs_task_definition.staging_asterdocs_frontend.arn
  desired_count                 = 1
  scheduling_strategy           = "REPLICA"
  platform_version              = "LATEST"
  enable_execute_command        = false
  enable_ecs_managed_tags       = true
  availability_zone_rebalancing = "ENABLED"
  iam_role                      = "/aws-service-role/ecs.amazonaws.com/AWSServiceRoleForECS"

  capacity_provider_strategy {
    capacity_provider = "FARGATE"
    weight            = 1
    base              = 0
  }
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
  deployment_circuit_breaker {
    enable   = true
    rollback = true
  }
}

resource "aws_ecs_service" "vmi_service_backend" {
  name                          = "vmi-service-backend"
  cluster                       = aws_ecs_cluster.staging_cluster.id
  task_definition               = data.aws_ecs_task_definition.staging_vmi_service_backend.arn
  desired_count                 = 1
  scheduling_strategy           = "REPLICA"
  platform_version              = "LATEST"
  enable_execute_command        = true
  enable_ecs_managed_tags       = false
  availability_zone_rebalancing = "ENABLED"
  iam_role                      = "/aws-service-role/ecs.amazonaws.com/AWSServiceRoleForECS"

  capacity_provider_strategy {
    capacity_provider = "FARGATE_SPOT"
    weight            = 1
    base              = 0
  }
  network_configuration {
    subnets          = ["subnet-073cba83e3cde7daf", "subnet-0eeefbeb3f67a5dfc"]
    security_groups  = ["sg-088b1a7bdd325cef8"]
    assign_public_ip = false
  }
  load_balancer {
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/staging-vmi-service-backend-tg/795ebc1e3d53e804"
    container_name   = "vmi-service-backend"
    container_port   = 8080
  }
}

resource "aws_ecs_service" "supplier_kpi_frontend" {
  name                          = "supplier-kpi-frontend"
  cluster                       = aws_ecs_cluster.staging_cluster.id
  task_definition               = data.aws_ecs_task_definition.staging_supplier_kpi_frontend.arn
  desired_count                 = 1
  scheduling_strategy           = "REPLICA"
  platform_version              = "LATEST"
  enable_execute_command        = false
  enable_ecs_managed_tags       = true
  availability_zone_rebalancing = "ENABLED"
  iam_role                      = "/aws-service-role/ecs.amazonaws.com/AWSServiceRoleForECS"

  capacity_provider_strategy {
    capacity_provider = "FARGATE"
    weight            = 1
    base              = 0
  }
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
  deployment_circuit_breaker {
    enable   = true
    rollback = true
  }
}

resource "aws_ecs_service" "authserver_frontend" {
  name                          = "authserver-frontend"
  cluster                       = aws_ecs_cluster.staging_cluster.id
  task_definition               = data.aws_ecs_task_definition.staging_authserver_frontend.arn
  desired_count                 = 1
  scheduling_strategy           = "REPLICA"
  platform_version              = "LATEST"
  enable_execute_command        = true
  enable_ecs_managed_tags       = false
  availability_zone_rebalancing = "ENABLED"
  iam_role                      = "/aws-service-role/ecs.amazonaws.com/AWSServiceRoleForECS"

  capacity_provider_strategy {
    capacity_provider = "FARGATE_SPOT"
    weight            = 1
    base              = 0
  }
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
}

resource "aws_ecs_service" "aster_node" {
  name                          = "aster-node"
  cluster                       = aws_ecs_cluster.staging_cluster.id
  task_definition               = data.aws_ecs_task_definition.staging_aster_node.arn
  desired_count                 = 1
  scheduling_strategy           = "REPLICA"
  platform_version              = "LATEST"
  enable_execute_command        = true
  enable_ecs_managed_tags       = false
  availability_zone_rebalancing = "ENABLED"
  iam_role                      = "/aws-service-role/ecs.amazonaws.com/AWSServiceRoleForECS"

  capacity_provider_strategy {
    capacity_provider = "FARGATE_SPOT"
    weight            = 1
    base              = 0
  }
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
}
