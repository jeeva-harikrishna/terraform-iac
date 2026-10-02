# iam.tf — managed by Terraform (imported)

# [service-role] resource "aws_iam_role" "Amazon_EventBridge_Invoke_Lambda_427563611" {
#   name               = "Amazon_EventBridge_Invoke_Lambda_427563611"
#   assume_role_policy = "{}"
#   lifecycle { ignore_changes = all }
# }

# [service-role] resource "aws_iam_role" "apprunner_lambdaENV_role_qaokcf7f" {
#   name               = "apprunner-lambdaENV-role-qaokcf7f"
#   assume_role_policy = "{}"
#   lifecycle { ignore_changes = all }
# }

# [service-role] resource "aws_iam_role" "AppRunnerECRAccessRole" {
#   name               = "AppRunnerECRAccessRole"
#   assume_role_policy = "{}"
#   lifecycle { ignore_changes = all }
# }

resource "aws_iam_role" "AppRunnerFrontssomRole" {
  name               = "AppRunnerFrontssomRole"
  assume_role_policy = jsonencode({})
  lifecycle { ignore_changes = all }
}

resource "aws_iam_role" "AppRunnerTicketingSystemRole" {
  name               = "AppRunnerTicketingSystemRole"
  assume_role_policy = jsonencode({})
  lifecycle { ignore_changes = all }
}

resource "aws_iam_role" "APPRUNNER_INLINE_POLICY" {
  name               = "APPRUNNER_INLINE_POLICY"
  assume_role_policy = jsonencode({})
  lifecycle { ignore_changes = all }
}

resource "aws_iam_role" "APP_RUNNER_S3_RDS_READ_ROLE" {
  name               = "APP_RUNNER_S3_RDS_READ_ROLE"
  assume_role_policy = jsonencode({})
  lifecycle { ignore_changes = all }
}

resource "aws_iam_role" "asterdocs_apprunner_us_east_2_lambdaRole" {
  name               = "asterdocs-apprunner-us-east-2-lambdaRole"
  assume_role_policy = jsonencode({})
  lifecycle { ignore_changes = all }
}

resource "aws_iam_role" "asterdocs_apptesting_us_east_2_lambdaRole" {
  name               = "asterdocs-apptesting-us-east-2-lambdaRole"
  assume_role_policy = jsonencode({})
  lifecycle { ignore_changes = all }
}

# [service-role] resource "aws_iam_role" "asterdocs_node_backend_role_td6rqdac" {
#   name               = "asterdocs-node-backend-role-td6rqdac"
#   assume_role_policy = "{}"
#   lifecycle { ignore_changes = all }
# }

# [service-role] resource "aws_iam_role" "asterdocsWebhook_role_x07ctexy" {
#   name               = "asterdocsWebhook-role-x07ctexy"
#   assume_role_policy = "{}"
#   lifecycle { ignore_changes = all }
# }

# [service-role] resource "aws_iam_role" "changeSecurityECS_role_u8srovsu" {
#   name               = "changeSecurityECS-role-u8srovsu"
#   assume_role_policy = "{}"
#   lifecycle { ignore_changes = all }
# }

# [service-role] resource "aws_iam_role" "checkUserPermission_role_hns0j4kn" {
#   name               = "checkUserPermission-role-hns0j4kn"
#   assume_role_policy = "{}"
#   lifecycle { ignore_changes = all }
# }

# [service-role] resource "aws_iam_role" "cleanUpOlderECR_role_0nd2zab6" {
#   name               = "cleanUpOlderECR-role-0nd2zab6"
#   assume_role_policy = "{}"
#   lifecycle { ignore_changes = all }
# }

resource "aws_iam_role" "ClickHouseEC2Role" {
  name               = "ClickHouseEC2Role"
  assume_role_policy = jsonencode({})
  lifecycle { ignore_changes = all }
}

# [service-role] resource "aws_iam_role" "cloudwatch_role_iq7glxo0" {
#   name               = "cloudwatch-role-iq7glxo0"
#   assume_role_policy = "{}"
#   lifecycle { ignore_changes = all }
# }

resource "aws_iam_role" "dms_cloudwatch_logs_role" {
  name               = "dms-cloudwatch-logs-role"
  assume_role_policy = jsonencode({})
  lifecycle { ignore_changes = all }
}

resource "aws_iam_role" "dms_vpc_role" {
  name               = "dms-vpc-role"
  assume_role_policy = jsonencode({})
  lifecycle { ignore_changes = all }
}

# [service-role] resource "aws_iam_role" "DocuSignWebhookHandler_role_wav21tfg" {
#   name               = "DocuSignWebhookHandler-role-wav21tfg"
#   assume_role_policy = "{}"
#   lifecycle { ignore_changes = all }
# }

resource "aws_iam_role" "EC2_CloudWatch_Agent_Role" {
  name               = "EC2-CloudWatch-Agent-Role"
  assume_role_policy = jsonencode({})
  lifecycle { ignore_changes = all }
}

resource "aws_iam_role" "EC2ECRAccessRole" {
  name               = "EC2ECRAccessRole"
  assume_role_policy = jsonencode({})
  lifecycle { ignore_changes = all }
}

resource "aws_iam_role" "ExternalSecretsRole" {
  name               = "ExternalSecretsRole"
  assume_role_policy = jsonencode({})
  lifecycle { ignore_changes = all }
}

resource "aws_iam_role" "ExternalSecretsRole_dev" {
  name               = "ExternalSecretsRole-dev"
  assume_role_policy = jsonencode({})
  lifecycle { ignore_changes = all }
}

# [service-role] resource "aws_iam_role" "FinOpsAgentOperatorRole_03efafe1" {
#   name               = "FinOpsAgentOperatorRole-03efafe1"
#   assume_role_policy = "{}"
#   lifecycle { ignore_changes = all }
# }

# [service-role] resource "aws_iam_role" "FinOpsAgentRole_30511399" {
#   name               = "FinOpsAgentRole-30511399"
#   assume_role_policy = "{}"
#   lifecycle { ignore_changes = all }
# }

# [service-role] resource "aws_iam_role" "generate_esign_aster_role_d6yn8inx" {
#   name               = "generate_esign_aster-role-d6yn8inx"
#   assume_role_policy = "{}"
#   lifecycle { ignore_changes = all }
# }

# [service-role] resource "aws_iam_role" "generate_esign_aster_role_mjkrcogh" {
#   name               = "generate_esign_aster-role-mjkrcogh"
#   assume_role_policy = "{}"
#   lifecycle { ignore_changes = all }
# }

# [service-role] resource "aws_iam_role" "generate_esign_aster_role_oupiwo1u" {
#   name               = "generate_esign_aster-role-oupiwo1u"
#   assume_role_policy = "{}"
#   lifecycle { ignore_changes = all }
# }

# [service-role] resource "aws_iam_role" "getTargetGroups_role_1wnwmu99" {
#   name               = "getTargetGroups-role-1wnwmu99"
#   assume_role_policy = "{}"
#   lifecycle { ignore_changes = all }
# }

# [service-role] resource "aws_iam_role" "getUserPermisison_with_inpersonate_role_3pzoagrl" {
#   name               = "getUserPermisison_with_inpersonate-role-3pzoagrl"
#   assume_role_policy = "{}"
#   lifecycle { ignore_changes = all }
# }

# [service-role] resource "aws_iam_role" "getUserPermissionTest_role_hge9etc5" {
#   name               = "getUserPermissionTest-role-hge9etc5"
#   assume_role_policy = "{}"
#   lifecycle { ignore_changes = all }
# }

# [service-role] resource "aws_iam_role" "get_canva_esign_by_aster_role_9pjlkrt5" {
#   name               = "get_canva_esign_by_aster-role-9pjlkrt5"
#   assume_role_policy = "{}"
#   lifecycle { ignore_changes = all }
# }

# [service-role] resource "aws_iam_role" "get_ecr_image_packages_role_8lvp7yw5" {
#   name               = "get_ecr_image_packages-role-8lvp7yw5"
#   assume_role_policy = "{}"
#   lifecycle { ignore_changes = all }
# }

# [service-role] resource "aws_iam_role" "get_ecr_image_packages_role_ube2apxl" {
#   name               = "get_ecr_image_packages-role-ube2apxl"
#   assume_role_policy = "{}"
#   lifecycle { ignore_changes = all }
# }

resource "aws_iam_role" "gha_devsecops_dev_stage" {
  name               = "gha-devsecops-dev-stage"
  assume_role_policy = jsonencode({})
  lifecycle { ignore_changes = all }
}

resource "aws_iam_role" "GitHub_IAMAccessAnalyzer_frontsite_sso" {
  name               = "GitHub-IAMAccessAnalyzer-frontsite_sso"
  assume_role_policy = jsonencode({})
  lifecycle { ignore_changes = all }
}

resource "aws_iam_role" "GitHub_IAMAccessAnalyzer_Role" {
  name               = "GitHub-IAMAccessAnalyzer-Role"
  assume_role_policy = jsonencode({})
  lifecycle { ignore_changes = all }
}

resource "aws_iam_role" "GitHubRunnerRole" {
  name               = "GitHubRunnerRole"
  assume_role_policy = jsonencode({})
  lifecycle { ignore_changes = all }
}

resource "aws_iam_role" "KyvernoECRRole" {
  name               = "KyvernoECRRole"
  assume_role_policy = jsonencode({})
  lifecycle { ignore_changes = all }
}

resource "aws_iam_role" "lambdalogcreate" {
  name               = "lambdalogcreate"
  assume_role_policy = jsonencode({})
  lifecycle { ignore_changes = all }
}

resource "aws_iam_role" "n8nTaskExecutionRole" {
  name               = "n8nTaskExecutionRole"
  assume_role_policy = jsonencode({})
  lifecycle { ignore_changes = all }
}

resource "aws_iam_role" "n8nTaskRole" {
  name               = "n8nTaskRole"
  assume_role_policy = jsonencode({})
  lifecycle { ignore_changes = all }
}

resource "aws_iam_role" "OffboardCredBrokerExecutionRole" {
  name               = "OffboardCredBrokerExecutionRole"
  assume_role_policy = jsonencode({})
  lifecycle { ignore_changes = all }
}

resource "aws_iam_role" "OffboardS3UploadRole" {
  name               = "OffboardS3UploadRole"
  assume_role_policy = jsonencode({})
  lifecycle { ignore_changes = all }
}

resource "aws_iam_role" "rds_monitoring_role" {
  name               = "rds-monitoring-role"
  assume_role_policy = jsonencode({})
  lifecycle { ignore_changes = all }
}

# [service-role] resource "aws_iam_role" "redeployment_apprunner_role_yf54vysp" {
#   name               = "redeployment-apprunner-role-yf54vysp"
#   assume_role_policy = "{}"
#   lifecycle { ignore_changes = all }
# }

# [service-role] resource "aws_iam_role" "restores3" {
#   name               = "restores3"
#   assume_role_policy = "{}"
#   lifecycle { ignore_changes = all }
# }

# [service-role] resource "aws_iam_role" "retention_taskdefination_ecs_role_fy0rdlxm" {
#   name               = "retention-taskdefination-ecs-role-fy0rdlxm"
#   assume_role_policy = "{}"
#   lifecycle { ignore_changes = all }
# }

resource "aws_iam_role" "secret_manager_read" {
  name               = "secret_manager_read"
  assume_role_policy = jsonencode({})
  lifecycle { ignore_changes = all }
}

resource "aws_iam_role" "secret_manager_read_apprunner" {
  name               = "secret_manager_read_apprunner"
  assume_role_policy = jsonencode({})
  lifecycle { ignore_changes = all }
}

resource "aws_iam_role" "secret_reader_read" {
  name               = "secret_reader_read"
  assume_role_policy = jsonencode({})
  lifecycle { ignore_changes = all }
}

resource "aws_iam_role" "SecurityECSTaskExecutionRole" {
  name               = "SecurityECSTaskExecutionRole"
  assume_role_policy = jsonencode({})
  lifecycle { ignore_changes = all }
}

resource "aws_iam_role" "SecurityECSTaskRole" {
  name               = "SecurityECSTaskRole"
  assume_role_policy = jsonencode({})
  lifecycle { ignore_changes = all }
}

# [service-role] resource "aws_iam_role" "SecurityHubRemediation_role_tsv4owys" {
#   name               = "SecurityHubRemediation-role-tsv4owys"
#   assume_role_policy = "{}"
#   lifecycle { ignore_changes = all }
# }

resource "aws_iam_role" "SecurityHubRemediationRole_Lambda" {
  name               = "SecurityHubRemediationRole-Lambda"
  assume_role_policy = jsonencode({})
  lifecycle { ignore_changes = all }
}

resource "aws_iam_role" "sqlrds" {
  name               = "sqlrds"
  assume_role_policy = jsonencode({})
  lifecycle { ignore_changes = all }
}

resource "aws_iam_role" "terraform_runner_role" {
  name               = "terraform-runner-role"
  assume_role_policy = jsonencode({})
  lifecycle { ignore_changes = all }
}

# [service-role] resource "aws_iam_role" "trigger_lifecycle_ecr_role_eg01aamh" {
#   name               = "trigger_lifecycle_ecr-role-eg01aamh"
#   assume_role_policy = "{}"
#   lifecycle { ignore_changes = all }
# }

resource "aws_iam_role" "WazuhCrossAccountS3Read_Dev" {
  name               = "WazuhCrossAccountS3Read-Dev"
  assume_role_policy = jsonencode({})
  lifecycle { ignore_changes = all }
}

# [service-role] resource "aws_iam_role" "websocket_asterdocs_role_0p4o5yur" {
#   name               = "websocket_asterdocs-role-0p4o5yur"
#   assume_role_policy = "{}"
#   lifecycle { ignore_changes = all }
# }
