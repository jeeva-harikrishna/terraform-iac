# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "ClickHouseEC2Role"
resource "aws_iam_instance_profile" "clickhouseec2role" {
  name     = "ClickHouseEC2Role"
  path     = "/"
  role     = "ClickHouseEC2Role"
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "gha-devsecops-dev-stage"
resource "aws_iam_role" "gha_devsecops_dev_stage" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRoleWithWebIdentity"
      Condition = {
        StringEquals = {
          "token.actions.githubusercontent.com:aud" = "sts.amazonaws.com"
        }
        StringLike = {
          "token.actions.githubusercontent.com:sub" = ["repo:Dietary-Business-Intelligence/*", "repo:Dietary-Business-Intelligence@158134747/*"]
        }
      }
      Effect = "Allow"
      Principal = {
        Federated = "arn:aws:iam::842676018479:oidc-provider/token.actions.githubusercontent.com"
      }
    }]
    Version = "2012-10-17"
  })
  description           = "GitHub Actions OIDC role for dev and staging ECR push Created by Braja"
  force_detach_policies = false
  max_session_duration  = 3600
  name                  = "gha-devsecops-dev-stage"
  path                  = "/"
  permissions_boundary  = null
  tags                  = {}
  tags_all              = {}
}

# __generated__ by Terraform from "GitHubRunnerRole"
resource "aws_iam_instance_profile" "githubrunnerrole" {
  name     = "GitHubRunnerRole"
  path     = "/"
  role     = "GitHubRunnerRole"
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "arn:aws:iam::842676018479:policy/secret-reader-for-erp-demo"
resource "aws_iam_policy" "secret_reader_for_erp_demo" {
  description = "secret-reader-for-erp-demo"
  name        = "secret-reader-for-erp-demo"
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:ListSecrets"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "SecretsManagerAccess"
      }, {
      Action   = ["s3:PutObject", "s3:GetObject"]
      Effect   = "Allow"
      Resource = ["arn:aws:s3:::dbi-findsuppliers-dev", "arn:aws:s3:::dbi-findsuppliers-dev/*"]
      Sid      = "S3UploadAccess"
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "EC2-CloudWatch-Agent-Role"
resource "aws_iam_role" "ec2_cloudwatch_agent_role" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "ec2.amazonaws.com"
      }
    }]
    Version = "2012-10-17"
  })
  description           = "Allows EC2 instances to call AWS services on your behalf."
  force_detach_policies = false
  max_session_duration  = 3600
  name                  = "EC2-CloudWatch-Agent-Role"
  path                  = "/"
  permissions_boundary  = null
  tags                  = {}
  tags_all              = {}
}

# __generated__ by Terraform from "Arta_dev_Aws"
resource "aws_iam_user" "arta_dev_aws" {
  force_destroy        = null
  name                 = "Arta_dev_Aws"
  path                 = "/"
  permissions_boundary = null
  tags                 = {}
  tags_all             = {}
}

# __generated__ by Terraform from "n8nTaskExecutionRole"
resource "aws_iam_role" "n8ntaskexecutionrole" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "ecs-tasks.amazonaws.com"
      }
      Sid = ""
    }]
    Version = "2012-10-17"
  })
  description           = "Allows ECS tasks to call AWS services on your behalf."
  force_detach_policies = false
  max_session_duration  = 3600
  name                  = "n8nTaskExecutionRole"
  path                  = "/"
  permissions_boundary  = null
  tags                  = {}
  tags_all              = {}
}

# __generated__ by Terraform from "ClickHouseEC2Role"
resource "aws_iam_role" "clickhouseec2role" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "ec2.amazonaws.com"
      }
    }]
    Version = "2012-10-17"
  })
  description           = "Allows EC2 instances to call AWS services on your behalf-Created Braja"
  force_detach_policies = false
  max_session_duration  = 3600
  name                  = "ClickHouseEC2Role"
  path                  = "/"
  permissions_boundary  = null
  tags                  = {}
  tags_all              = {}
}

# __generated__ by Terraform from "arn:aws:iam::842676018479:policy/SecurityECSTaskS3Policy"
resource "aws_iam_policy" "securityecstasks3policy" {
  description = "S3 access for all ECS tasks  add new buckets here when onboarding new services"
  name        = "SecurityECSTaskS3Policy"
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = ["s3:GetObject", "s3:PutObject", "s3:DeleteObject", "s3:HeadObject"]
      Effect   = "Allow"
      Resource = ["arn:aws:s3:::testgj-developmentdoc/*", "arn:aws:s3:::ticketing-system-media/*", "arn:aws:s3:::dbi-taskmanagement/*", "arn:aws:s3:::dev-nexus-data-downloads/*", "arn:aws:s3:::etl-entity-images/*", "arn:aws:s3:::demohrms/*", "arn:aws:s3:::dbi-findsuppliers-dev/*", "arn:aws:s3:::dbi-sso-demo/*", "arn:aws:s3:::aster-test/*", "arn:aws:s3:::audit-demo-dbi/*"]
      Sid      = "ECSTaskS3ObjectAccess"
      }, {
      Action   = ["s3:ListBucket"]
      Effect   = "Allow"
      Resource = ["arn:aws:s3:::testgj-developmentdoc", "arn:aws:s3:::ticketing-system-media", "arn:aws:s3:::dbi-taskmanagement", "arn:aws:s3:::dev-nexus-data-downloads", "arn:aws:s3:::etl-entity-images", "arn:aws:s3:::demohrms", "arn:aws:s3:::dbi-findsuppliers-dev", "arn:aws:s3:::dbi-sso-demo", "arn:aws:s3:::aster-test", "arn:aws:s3:::audit-demo-dbi"]
      Sid      = "ECSTaskS3BucketList"
      }, {
      Action   = ["kms:Decrypt", "kms:GenerateDataKey", "kms:DescribeKey"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "AllowKMSForS3Objects"
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "arn:aws:iam::842676018479:policy/AppRunnerFullAccessWithoutDelete"
resource "aws_iam_policy" "apprunnerfullaccesswithoutdelete" {
  description = "Created By Braja"
  name        = "AppRunnerFullAccessWithoutDelete"
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = ["apprunner:ListServices", "apprunner:ListOperations", "apprunner:ListConnections", "apprunner:ListAutoScalingConfigurations", "apprunner:ListVpcConnectors", "apprunner:ListObservabilityConfigurations", "apprunner:ListVpcIngressConnections", "apprunner:ListTagsForResource", "apprunner:DescribeService", "apprunner:DescribeAutoScalingConfiguration", "apprunner:DescribeCustomDomains", "apprunner:DescribeVpcConnector", "apprunner:DescribeObservabilityConfiguration", "apprunner:DescribeVpcIngressConnection", "apprunner:CreateService", "apprunner:CreateConnection", "apprunner:CreateAutoScalingConfiguration", "apprunner:CreateVpcConnector", "apprunner:CreateObservabilityConfiguration", "apprunner:CreateVpcIngressConnection", "apprunner:UpdateService", "apprunner:UpdateVpcIngressConnection", "apprunner:PauseService", "apprunner:ResumeService", "apprunner:StartDeployment", "apprunner:AssociateCustomDomain", "apprunner:DisassociateCustomDomain", "apprunner:AssociateWebAcl", "apprunner:DisassociateWebAcl", "apprunner:TagResource", "apprunner:UntagResource"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "AppRunnerFullAccessWithoutDelete"
      }, {
      Action   = ["apprunner:DeleteService", "apprunner:DeleteConnection", "apprunner:DeleteAutoScalingConfiguration", "apprunner:DeleteVpcConnector", "apprunner:DeleteObservabilityConfiguration", "apprunner:DeleteVpcIngressConnection"]
      Effect   = "Deny"
      Resource = "*"
      Sid      = "DenyAppRunnerDeleteActions"
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "arn:aws:iam::842676018479:policy/n8n-secrets-readonly"
resource "aws_iam_policy" "n8n_secrets_readonly" {
  description = "Created by Braja For Accessing AWS secretes"
  name        = "n8n-secrets-readonly"
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = ["secretsmanager:GetSecretValue"]
      Effect   = "Allow"
      Resource = ["arn:aws:secretsmanager:us-east-2:842676018479:secret:n8n-all-secret-lJgqWC*"]
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "arn:aws:iam::842676018479:policy/secretManagerReadonlyAccess"
resource "aws_iam_policy" "secretmanagerreadonlyaccess" {
  description = null
  name        = "secretManagerReadonlyAccess"
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = ["secretsmanager:GetRandomPassword", "secretsmanager:GetResourcePolicy", "secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret", "secretsmanager:ListSecretVersionIds"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "VisualEditor0"
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "arn:aws:iam::842676018479:policy/secret_reader_secret_key"
resource "aws_iam_policy" "secret_reader_secret_key" {
  description = "Created By Braja For Access Apprunner Secret manger value"
  name        = "secret_reader_secret_key"
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = ["secretsmanager:GetSecretValue", "kms:Decrypt*"]
      Effect   = "Allow"
      Resource = ["arn:aws:kms:us-east-2:842676018479:key/ACCESS_KEY", "arn:aws:kms:us-east-2:842676018479:key/SECRET_KEY", "arn:aws:kms:us-east-2:842676018479:key/SECRET_REGION", "arn:aws:kms:us-east-2:842676018479:key/value", "arn:aws:secretsmanager:us-east-2:842676018479:secret:zyler-demo-db-awwnY5", "arn:aws:kms:us-east-2:842676018479:key/host", "arn:aws:kms:us-east-2:842676018479:key/username", "arn:aws:kms:us-east-2:842676018479:key/port", "arn:aws:kms:us-east-2:842676018479:key/password"]
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "arn:aws:iam::842676018479:policy/jhcares3access"
resource "aws_iam_policy" "jhcares3access" {
  description = null
  name        = "jhcares3access"
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = ["s3:ListAllMyBuckets"]
      Effect   = "Allow"
      Resource = "*"
      }, {
      Action   = ["s3:GetObject", "s3:PutObject", "s3:ListBucket"]
      Effect   = "Allow"
      Resource = ["arn:aws:s3:::jhcare", "arn:aws:s3:::jhcare/*"]
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "arn:aws:iam::842676018479:policy/apprunner_inline_attach_policy"
resource "aws_iam_policy" "apprunner_inline_attach_policy" {
  description = "To attach secret read policy to the apprunner"
  name        = "apprunner_inline_attach_policy"
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = ["secretsmanager:GetSecretValue", "kms:Decrypt*"]
      Effect   = "Allow"
      Resource = ["arn:aws:secretsmanager:us-east-2:842676018479:secret:DEV_RDS_CREDENTIALS-OqPugZ", "arn:aws:kms:us-east-2:842676018479:key/username", "arn:aws:kms:us-east-2:842676018479:key/host", "arn:aws:kms:us-east-2:842676018479:key/password", "arn:aws:kms:us-east-2:842676018479:key/port", "arn:aws:secretsmanager:us-east-2:842676018479:secret:firebase-service-account-findsupplier-YCBsFX"]
      }, {
      Action   = ["secretsmanager:GetSecretValue", "kms:Decrypt*"]
      Effect   = "Allow"
      Resource = ["arn:aws:secretsmanager:us-east-2:842676018479:secret:demo_secret_key-vIgfGl", "arn:aws:kms:us-east-2:842676018479:key/access_key", "arn:aws:kms:us-east-2:842676018479:key/secret_key", "arn:aws:kms:us-east-2:842676018479:key/region"]
      }, {
      Action   = ["secretsmanager:GetSecretValue", "kms:Decrypt*"]
      Effect   = "Allow"
      Resource = ["arn:aws:secretsmanager:us-east-2:842676018479:secret:development/asterdocs/env-7F7qc9", "arn:aws:kms:us-east-2:842676018479:key/ACCESS_KEY", "arn:aws:kms:us-east-2:842676018479:key/ASTEREMAILID", "arn:aws:kms:us-east-2:842676018479:key/ASTER_COMPANY_CERTIFICATE_ATTACHMENTS_FOLDER_AWS", "arn:aws:kms:us-east-2:842676018479:key/ASTER_COMPANY_LOGO", "arn:aws:kms:us-east-2:842676018479:key/ASTER_COMPANY_LOGO_FOLDER", "arn:aws:kms:us-east-2:842676018479:key/ASTER_EXISTING_USER_PERMISSION", "arn:aws:kms:us-east-2:842676018479:key/ASTER_FACILITY_CERTIFICATE_ATTACHMENTS_FOLDER_AWS", "arn:aws:kms:us-east-2:842676018479:key/ASTER_FORM_CERTIFICATE_ATTACHMENTS_FOLDER_AWS", "arn:aws:kms:us-east-2:842676018479:key/ASTER_FORM_CERTIFICATE_ATTACHMENTS_TEMP_FOLDER_AWS", "arn:aws:kms:us-east-2:842676018479:key/ASTER_NEW_USER_PERMISSION", "arn:aws:kms:us-east-2:842676018479:key/ASTER_PDF_HEADER", "arn:aws:kms:us-east-2:842676018479:key/ASTER_PDF_STAMP", "arn:aws:kms:us-east-2:842676018479:key/ASTER_PDF_WATERMARK", "arn:aws:kms:us-east-2:842676018479:key/ASTER_PRODUCT_CERTIFICATE_ATTACHMENTS_FOLDER_AWS", "arn:aws:kms:us-east-2:842676018479:key/ASTER_REFERENCE", "arn:aws:kms:us-east-2:842676018479:key/ASTER_REFERENCE_TEMP", "arn:aws:kms:us-east-2:842676018479:key/ASTER_SENDEMAIl_STATUS", "arn:aws:kms:us-east-2:842676018479:key/ASTER_VERIFICATION_DOCUMENTS_FOLDER_AWS", "arn:aws:kms:us-east-2:842676018479:key/AUTHSERVER", "arn:aws:kms:us-east-2:842676018479:key/AWS_REGION_NAME", "arn:aws:kms:us-east-2:842676018479:key/AWS_UPLOAD_ENV", "arn:aws:kms:us-east-2:842676018479:key/BUCKET_NAME", "arn:aws:kms:us-east-2:842676018479:key/CLICKHOUSE_DB_HOST", "arn:aws:kms:us-east-2:842676018479:key/CLICKHOUSE_DB_PASS", "arn:aws:kms:us-east-2:842676018479:key/CLICKHOUSE_DB_PORT", "arn:aws:kms:us-east-2:842676018479:key/CLICKHOUSE_DB_USER", "arn:aws:kms:us-east-2:842676018479:key/CLICKHOUSE_MYSQL_DB", "arn:aws:kms:us-east-2:842676018479:key/COA_COUNT_API", "arn:aws:kms:us-east-2:842676018479:key/COA_UNAPPROVE_API", "arn:aws:kms:us-east-2:842676018479:key/COUNTRY_API", "arn:aws:kms:us-east-2:842676018479:key/DB_HOST", "arn:aws:kms:us-east-2:842676018479:key/DB_PASS", "arn:aws:kms:us-east-2:842676018479:key/DB_PORT", "arn:aws:kms:us-east-2:842676018479:key/DB_USER", "arn:aws:kms:us-east-2:842676018479:key/GLOBAL_API", "arn:aws:kms:us-east-2:842676018479:key/KPIDATABASE", "arn:aws:kms:us-east-2:842676018479:key/MYSQL_DB", "arn:aws:kms:us-east-2:842676018479:key/NDA_API", "arn:aws:kms:us-east-2:842676018479:key/REGION", "arn:aws:kms:us-east-2:842676018479:key/S3_SECRET", "arn:aws:kms:us-east-2:842676018479:key/SECRET_KEY", "arn:aws:kms:us-east-2:842676018479:key/WORLD_DB_HOST", "arn:aws:kms:us-east-2:842676018479:key/WORLD_DB_PASS", "arn:aws:kms:us-east-2:842676018479:key/WORLD_DB_PORT", "arn:aws:kms:us-east-2:842676018479:key/WORLD_DB_USER", "arn:aws:kms:us-east-2:842676018479:key/WORLD_MYSQL_DB", "arn:aws:kms:us-east-2:842676018479:key/X_API_KEY", "arn:aws:kms:us-east-2:842676018479:key/ENTITY_URL"]
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "arn:aws:iam::842676018479:policy/TicketingSystemSSMParameterAccess"
resource "aws_iam_policy" "ticketingsystemssmparameteraccess" {
  description = "Allows access to ticketing system SSM parameters"
  name        = "TicketingSystemSSMParameterAccess"
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = ["ssm:GetParameter", "ssm:GetParameters"]
      Effect   = "Allow"
      Resource = ["arn:aws:ssm:us-east-2:842676018479:parameter/ticketing-system/*"]
      }, {
      Action = ["kms:Decrypt"]
      Condition = {
        StringEquals = {
          "kms:ViaService" = "ssm.us-east-2.amazonaws.com"
        }
      }
      Effect   = "Allow"
      Resource = ["arn:aws:kms:us-east-2:842676018479:key/*"]
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "It_Admin"
resource "aws_iam_user" "it_admin" {
  force_destroy        = null
  name                 = "It_Admin"
  path                 = "/"
  permissions_boundary = null
  tags = {
    AKIA4IM3HTUXQCU4ISP7 = "Created BY Kartik"
    AKIA4IM3HTUXYGBKNTAX = "Created For Upload Data to s3"
  }
  tags_all = {
    AKIA4IM3HTUXQCU4ISP7 = "Created BY Kartik"
    AKIA4IM3HTUXYGBKNTAX = "Created For Upload Data to s3"
  }
}

# __generated__ by Terraform from "arn:aws:iam::842676018479:policy/AWS-User-Service-Access-Role"
resource "aws_iam_policy" "aws_user_service_access_role" {
  description = "Created By Braja"
  name        = "AWS-User-Service-Access-Role"
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = ["apprunner:*"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "AppRunnerAccess"
      }, {
      Action   = ["apprunner:Delete*"]
      Effect   = "Deny"
      Resource = "*"
      Sid      = "DenyDelete"
      }, {
      Action = "iam:PassRole"
      Condition = {
        StringEquals = {
          "iam:PassedToService" = "apprunner.amazonaws.com"
        }
      }
      Effect   = "Allow"
      Resource = "arn:aws:iam::842676018479:role/service-role/AppRunnerFrontsomRole"
      Sid      = "PassRole"
      }, {
      Action   = ["ecr:GetAuthorizationToken", "ecr:BatchCheckLayerAvailability", "ecr:GetDownloadUrlForLayer", "ecr:BatchGetImage"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "ECR"
      }, {
      Action   = ["logs:*"]
      Effect   = "Allow"
      Resource = "arn:aws:logs:*:842676018479:log-group:/aws/apprunner/*"
      Sid      = "Logs"
      }, {
      Action   = ["route53:GetHostedZone", "route53:ListHostedZones", "route53:ListResourceRecordSets", "route53:GetAccountLimit"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "Route53Access"
      }, {
      Action = ["iam:CreateServiceLinkedRole", "iam:GetRole"]
      Condition = {
        StringLike = {
          "iam:AWSServiceName" = "apprunner.amazonaws.com"
        }
      }
      Effect   = "Allow"
      Resource = "*"
      Sid      = "ServiceLinkedRole"
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "arn:aws:iam::842676018479:policy/CloudWatchLogsReadWritePolicy"
resource "aws_iam_policy" "cloudwatchlogsreadwritepolicy" {
  description = "CloudWatch Logs read write access without delete"
  name        = "CloudWatchLogsReadWritePolicy"
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = ["logs:DescribeLogGroups", "logs:DescribeLogStreams", "logs:DescribeMetricFilters", "logs:DescribeQueries", "logs:DescribeQueryDefinitions", "logs:DescribeSubscriptionFilters", "logs:DescribeDestinations", "logs:DescribeExportTasks", "logs:GetLogEvents", "logs:GetLogGroupFields", "logs:GetLogRecord", "logs:GetQueryResults", "logs:FilterLogEvents", "logs:StartQuery", "logs:StopQuery", "logs:TestMetricFilter", "logs:ListTagsLogGroup", "logs:ListTagsForResource"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "CloudWatchLogsReadAccess"
      }, {
      Action   = ["logs:CreateLogGroup", "logs:CreateLogStream", "logs:PutLogEvents", "logs:PutMetricFilter", "logs:PutRetentionPolicy", "logs:PutSubscriptionFilter", "logs:PutQueryDefinition", "logs:TagLogGroup", "logs:TagResource", "logs:UntagLogGroup", "logs:UntagResource", "logs:UpdateLogDelivery"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "CloudWatchLogsWriteAccess"
      }, {
      Action   = ["logs:StartLiveTail", "logs:StopLiveTail", "logs:CreateLogDelivery", "logs:GetLogDelivery", "logs:ListLogDeliveries", "logs:DescribeLogGroups"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "CloudWatchInsightsAccess"
      }, {
      Action   = ["cloudwatch:GetMetricData", "cloudwatch:GetMetricStatistics", "cloudwatch:ListMetrics", "cloudwatch:PutMetricData", "cloudwatch:GetMetricWidgetImage", "cloudwatch:ListDashboards", "cloudwatch:GetDashboard", "cloudwatch:PutDashboard"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "CloudWatchMetricsAccess"
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "arn:aws:iam::842676018479:policy/Admin-Resources-Policy"
resource "aws_iam_policy" "admin_resources_policy" {
  description = null
  name        = "Admin-Resources-Policy"
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = ["ec2:*", "rds:*", "s3:*"]
      Effect   = "Allow"
      Resource = "*"
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "arn:aws:iam::842676018479:policy/asterdocs_serverless_deploy_ploicy"
resource "aws_iam_policy" "asterdocs_serverless_deploy_ploicy" {
  description = null
  name        = "asterdocs_serverless_deploy_ploicy"
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = ["lambda:CreateFunction", "lambda:TagResource", "cloudformation:DescribeChangeSetHooks", "iam:CreateRole", "s3:CreateBucket", "lambda:GetFunctionConfiguration", "cloudformation:DescribeStackResource", "iam:AttachRolePolicy", "cloudformation:CreateChangeSet", "iam:PutRolePolicy", "cloudformation:DescribeStackEvents", "iam:DetachRolePolicy", "cloudformation:UpdateStack", "cloudformation:BatchDescribeTypeConfigurations", "lambda:DeleteFunction", "cloudformation:DescribeChangeSet", "apigateway:GET", "s3:DeleteObject", "cloudformation:ExecuteChangeSet", "cloudformation:ListStackResources", "iam:GetRole", "lambda:ListFunctions", "cloudformation:DescribeStackInstance", "cloudformation:DescribeStackResources", "iam:DeleteRole", "cloudformation:DescribeStacks", "cloudformation:GetGeneratedTemplate", "lambda:UpdateFunctionCode", "s3:PutObject", "s3:GetObject", "cloudformation:DescribeStackResourceDrifts", "cloudformation:GetStackPolicy", "cloudformation:GetTemplate", "cloudformation:DeleteStack", "cloudformation:DescribeGeneratedTemplate", "lambda:PublishVersion", "apigateway:POST", "cloudformation:ValidateTemplate", "cloudformation:DetectStackSetDrift", "cloudformation:DescribeStackDriftDetectionStatus", "cloudformation:DetectStackDrift", "cloudformation:DescribeOrganizationsAccess", "lambda:ListVersionsByFunction", "iam:TagRole", "cloudformation:DescribeStackRefactor", "s3:ListBucket", "lambda:UntagResource", "cloudformation:DeleteChangeSet", "cloudformation:DetectStackResourceDrift", "cloudformation:EstimateTemplateCost", "apigateway:DELETE", "iam:PassRole", "cloudformation:DescribeStackSetOperation", "apigateway:PATCH", "cloudformation:DescribeAccountLimits", "cloudformation:DescribeType", "apigateway:PUT", "lambda:GetFunction", "lambda:UpdateFunctionConfiguration", "cloudformation:DescribePublisher", "cloudformation:DescribeTypeRegistration", "cloudformation:GetTemplateSummary", "cloudformation:DescribeStackSet", "cloudformation:CreateStack", "cloudformation:DescribeResourceScan", "sts:GetCallerIdentity"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "VisualEditor0"
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "arn:aws:iam::842676018479:policy/s3_application_policy"
resource "aws_iam_policy" "s3_application_policy" {
  description = null
  name        = "s3_application_policy"
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = ["s3:CreateAccessPoint", "s3:ListAccessPointsForObjectLambda", "s3:GetAccessPoint", "s3:CreateAccessGrantsLocation", "s3:ListCallerAccessGrants", "s3:DeleteObjectVersion", "s3:ListBucketVersions", "s3:GetAccessGrant", "s3:CreateBucket", "s3:ListBucket", "s3:ListStorageLensGroups", "s3:ListTagsForResource", "s3:GetObjectAcl", "s3:AssociateAccessGrantsIdentityCenter", "s3:ListAccessGrants", "s3:ListAccessGrantsInstances", "s3:GetObjectVersionAcl", "s3:GetObjectTagging", "s3:DeleteObject", "s3:ListBucketMultipartUploads", "s3:GetObjectRetention", "s3:ListAccessPoints", "s3:ListJobs", "s3:GetObjectAttributes", "s3:InitiateReplication", "s3:ListMultiRegionAccessPoints", "s3:PutBucketCORS", "s3:GetObjectLegalHold", "s3:CreateAccessGrantsInstance", "s3:ListAccessGrantsLocations", "s3:ListMultipartUploadParts", "s3:ListStorageLensConfigurations", "s3:PutObject", "s3:GetObject", "s3:GetMultiRegionAccessPointRoutes", "s3:GetObjectTorrent", "s3:ListAllMyBuckets", "s3:DescribeJob", "s3:PutObjectRetention", "s3:CreateAccessPointForObjectLambda", "s3:GetBucketCORS", "s3:CreateAccessGrant", "s3:CreateJob", "s3:GetBucketLocation", "s3:GetObjectVersion"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "VisualEditor0"
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "arn:aws:iam::842676018479:policy/AmazonEKS_EBS_CSI_Driver_Policy"
resource "aws_iam_policy" "amazoneks_ebs_csi_driver_policy" {
  description = "Created by Braja"
  name        = "AmazonEKS_EBS_CSI_Driver_Policy"
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = ["ec2:CreateSnapshot", "ec2:AttachVolume", "ec2:DetachVolume", "ec2:ModifyVolume", "ec2:DescribeAvailabilityZones", "ec2:DescribeInstances", "ec2:DescribeSnapshots", "ec2:DescribeTags", "ec2:DescribeVolumes", "ec2:DescribeVolumesModifications"]
      Effect   = "Allow"
      Resource = "*"
      }, {
      Action = ["ec2:CreateTags"]
      Condition = {
        StringEquals = {
          "ec2:CreateAction" = ["CreateVolume", "CreateSnapshot"]
        }
      }
      Effect   = "Allow"
      Resource = ["arn:aws:ec2:*:*:volume/*", "arn:aws:ec2:*:*:snapshot/*"]
      }, {
      Action   = ["ec2:DeleteTags"]
      Effect   = "Allow"
      Resource = ["arn:aws:ec2:*:*:volume/*", "arn:aws:ec2:*:*:snapshot/*"]
      }, {
      Action = ["ec2:CreateVolume"]
      Condition = {
        StringLike = {
          "aws:RequestTag/ebs.csi.aws.com/cluster" = "true"
        }
      }
      Effect   = "Allow"
      Resource = "*"
      }, {
      Action = ["ec2:CreateVolume"]
      Condition = {
        StringLike = {
          "aws:RequestTag/CSIVolumeName" = "*"
        }
      }
      Effect   = "Allow"
      Resource = "*"
      }, {
      Action = ["ec2:DeleteVolume"]
      Condition = {
        StringLike = {
          "ec2:ResourceTag/ebs.csi.aws.com/cluster" = "true"
        }
      }
      Effect   = "Allow"
      Resource = "*"
      }, {
      Action = ["ec2:DeleteVolume"]
      Condition = {
        StringLike = {
          "ec2:ResourceTag/CSIVolumeName" = "*"
        }
      }
      Effect   = "Allow"
      Resource = "*"
      }, {
      Action = ["ec2:DeleteVolume"]
      Condition = {
        StringLike = {
          "ec2:ResourceTag/kubernetes.io/created-for/pvc/name" = "*"
        }
      }
      Effect   = "Allow"
      Resource = "*"
      }, {
      Action = ["ec2:DeleteSnapshot"]
      Condition = {
        StringLike = {
          "ec2:ResourceTag/CSIVolumeSnapshotName" = "*"
        }
      }
      Effect   = "Allow"
      Resource = "*"
      }, {
      Action = ["ec2:DeleteSnapshot"]
      Condition = {
        StringLike = {
          "ec2:ResourceTag/ebs.csi.aws.com/cluster" = "true"
        }
      }
      Effect   = "Allow"
      Resource = "*"
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "arn:aws:iam::842676018479:policy/KyvernoECRReadPolicy"
resource "aws_iam_policy" "kyvernoecrreadpolicy" {
  description = "Created By Braja For eks Kyverno access ecr"
  name        = "KyvernoECRReadPolicy"
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = ["ecr:GetAuthorizationToken", "ecr:BatchGetImage", "ecr:GetDownloadUrlForLayer", "ecr:DescribeImages"]
      Effect   = "Allow"
      Resource = "*"
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "arn:aws:iam::842676018479:policy/AppRunner-Logs-ReadOnly"
resource "aws_iam_policy" "apprunner_logs_readonly" {
  description = "Created By Kartik"
  name        = "AppRunner-Logs-ReadOnly"
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = ["logs:DescribeLogGroups", "logs:DescribeLogStreams", "logs:GetLogEvents", "logs:FilterLogEvents", "logs:StartQuery", "logs:StopQuery", "logs:GetQueryResults", "logs:GetLogRecord"]
      Effect   = "Allow"
      Resource = ["arn:aws:logs:*:*:log-group:/aws/apprunner/*", "arn:aws:logs:*:*:log-group:/aws/apprunner/*:log-stream:*"]
      Sid      = "ReadAppRunnerLogs"
      }, {
      Action   = "logs:DescribeLogGroups"
      Effect   = "Allow"
      Resource = "*"
      Sid      = "ListAllLogGroups"
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "arn:aws:iam::842676018479:policy/AppRunnerDeploymentPolicy"
resource "aws_iam_policy" "apprunnerdeploymentpolicy" {
  description = "Created by Braja Policy for App Runner deployment via SSO"
  name        = "AppRunnerDeploymentPolicy"
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = ["apprunner:AssociateCustomDomain", "apprunner:CreateAutoScalingConfiguration", "apprunner:CreateConnection", "apprunner:CreateObservabilityConfiguration", "apprunner:CreateService", "apprunner:CreateVpcConnector", "apprunner:CreateVpcIngressConnection", "apprunner:DescribeAutoScalingConfiguration", "apprunner:DescribeCustomDomains", "apprunner:DescribeObservabilityConfiguration", "apprunner:DescribeOperation", "apprunner:DescribeService", "apprunner:DescribeVpcConnector", "apprunner:DescribeVpcIngressConnection", "apprunner:DisassociateCustomDomain", "apprunner:ListAutoScalingConfigurations", "apprunner:ListConnections", "apprunner:ListObservabilityConfigurations", "apprunner:ListOperations", "apprunner:ListServices", "apprunner:ListServicesForAutoScalingConfiguration", "apprunner:ListTagsForResource", "apprunner:ListVpcConnectors", "apprunner:ListVpcIngressConnections", "apprunner:PauseService", "apprunner:ResumeService", "apprunner:StartDeployment", "apprunner:TagResource", "apprunner:UntagResource", "apprunner:UpdateService", "apprunner:UpdateVpcIngressConnection"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "AppRunnerAccess"
      }, {
      Action   = ["iam:PassRole", "iam:CreateServiceLinkedRole"]
      Effect   = "Allow"
      Resource = ["arn:aws:iam::*:role/AppRunner*", "arn:aws:iam::*:role/service-role/AppRunner*", "arn:aws:iam::*:role/aws-service-role/apprunner.amazonaws.com/*", "arn:aws:iam::*:role/secret_reader_read", "arn:aws:iam::*:role/instant_role_secret_reader", "arn:aws:iam::*:role/secret_*", "arn:aws:iam::*:role/instant_role_*", "arn:aws:iam::*:role/*APPRUNNER*", "arn:aws:iam::*:role/*AppRunner*", "arn:aws:iam::*:role/*apprunner*"]
      Sid      = "IAMPassRole"
      }, {
      Action   = ["ecr:GetAuthorizationToken", "ecr:BatchCheckLayerAvailability", "ecr:GetDownloadUrlForLayer", "ecr:BatchGetImage", "ecr:DescribeImages", "ecr:ListImages", "ecr:DescribeRepositories", "ecr:ListTagsForResource"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "ECRAccess"
      }, {
      Action   = ["logs:CreateLogGroup", "logs:CreateLogStream", "logs:PutLogEvents", "logs:DescribeLogStreams", "logs:DescribeLogGroups", "logs:TagLogGroup", "logs:GetLogEvents", "logs:GetLogGroupFields", "logs:GetLogRecord", "logs:GetQueryResults", "logs:FilterLogEvents", "logs:StartQuery", "logs:StopQuery", "logs:TestMetricFilter", "logs:PutRetentionPolicy", "logs:PutMetricFilter", "logs:ListTagsLogGroup"]
      Effect   = "Allow"
      Resource = ["arn:aws:logs:*:*:log-group:/aws/apprunner/*", "arn:aws:logs:*:*:log-group:/aws/apprunner/*:log-stream:*", "arn:aws:logs:*:*:log-group::log-stream:*"]
      Sid      = "CloudWatchLogs"
      }, {
      Action   = ["cloudwatch:PutMetricData", "cloudwatch:GetMetricData", "cloudwatch:GetMetricStatistics", "cloudwatch:ListMetrics"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "CloudWatchMetrics"
      }, {
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret", "secretsmanager:ListSecrets", "ssm:GetParameter", "ssm:GetParameters", "ssm:GetParametersByPath", "ssm:DescribeParameters", "ssm:GetParameterHistory"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "SecretsAndParameters"
      }, {
      Action = ["kms:Decrypt", "kms:DescribeKey", "kms:GenerateDataKey"]
      Condition = {
        StringLike = {
          "kms:ViaService" = ["secretsmanager.*.amazonaws.com", "ssm.*.amazonaws.com"]
        }
      }
      Effect   = "Allow"
      Resource = "*"
      Sid      = "KMSDecryption"
      }, {
      Action   = ["codebuild:BatchGetBuilds", "codebuild:StartBuild", "codebuild:StopBuild", "codebuild:RetryBuild"]
      Effect   = "Allow"
      Resource = "arn:aws:codebuild:*:*:project/apprunner-*"
      Sid      = "CodeBuildForSourceBuilds"
      }, {
      Action   = ["codestar-connections:ListConnections", "codestar-connections:UseConnection"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "ConnectionsForGitHub"
      }, {
      Action   = ["wafv2:AssociateWebACL", "wafv2:DisassociateWebACL", "wafv2:GetWebACL", "wafv2:GetWebACLForResource", "wafv2:ListWebACLs", "wafv2:ListResourcesForWebACL"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "WAFIntegration"
      }, {
      Action   = ["xray:PutTraceSegments", "xray:PutTelemetryRecords"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "XRayTracing"
      }, {
      Action   = ["servicequotas:GetServiceQuota", "servicequotas:ListServiceQuotas"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "ServiceQuotas"
      }, {
      Action   = ["tag:GetResources", "tag:TagResources", "tag:UntagResources", "tag:GetTagKeys", "tag:GetTagValues"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "TaggingAccess"
      }, {
      Action   = ["events:PutRule", "events:PutTargets", "events:DescribeRule", "events:ListRules", "events:ListTargetsByRule"]
      Effect   = "Allow"
      Resource = "arn:aws:events:*:*:rule/apprunner-*"
      Sid      = "EventBridgeForNotifications"
      }, {
      Action   = ["sns:CreateTopic", "sns:Subscribe", "sns:Publish"]
      Effect   = "Allow"
      Resource = "arn:aws:sns:*:*:apprunner-*"
      Sid      = "SNSForNotifications"
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "arn:aws:iam::842676018479:policy/API-Gateway-Create-And-Read-Access"
resource "aws_iam_policy" "api_gateway_create_and_read_access" {
  description = "Created By braja"
  name        = "API-Gateway-Create-And-Read-Access"
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = ["apigateway:GET", "apigateway:POST"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "APIGatewayCreateRead"
      }, {
      Action   = ["apigateway:PUT", "apigateway:PATCH", "apigateway:DELETE"]
      Effect   = "Deny"
      Resource = "*"
      }, {
      Action   = ["logs:CreateLogGroup", "logs:CreateLogStream", "logs:DescribeLogStreams", "logs:DescribeLogGroups", "logs:GetLogEvents", "logs:FilterLogEvents"]
      Effect   = "Allow"
      Resource = ["arn:aws:logs:*:*:log-group:API-Gateway-*", "arn:aws:logs:*:*:log-group:/aws/apigateway/*"]
      Sid      = "CloudWatchLogsCreateRead"
      }, {
      Action   = ["cloudwatch:GetMetricStatistics", "cloudwatch:GetMetricData", "cloudwatch:ListMetrics", "cloudwatch:DescribeAlarms"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "CloudWatchMetricsRead"
      }, {
      Action   = ["lambda:InvokeFunction", "lambda:GetFunction", "lambda:GetFunctionConfiguration", "lambda:ListFunctions", "lambda:GetPolicy"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "LambdaIntegrationRead"
      }, {
      Action   = ["s3:GetObject", "s3:ListBucket", "s3:GetBucketLocation"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "S3IntegrationRead"
      }, {
      Action   = ["ec2:DescribeNetworkInterfaces"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "EC2NetworkInterfaceRead"
      }, {
      Action   = ["ec2:DescribeVpcs", "ec2:DescribeSubnets", "ec2:DescribeSecurityGroups", "ec2:DescribeVpcEndpoints"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "VPCEndpoint"
      }, {
      Action   = ["acm:ListCertificates", "acm:DescribeCertificate", "acm:GetCertificate"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "CertificateManager"
      }, {
      Action   = ["route53:GetHostedZone", "route53:ListHostedZones", "route53:GetChange"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "Route53Read"
      }, {
      Action   = ["cloudformation:DescribeStacks", "cloudformation:DescribeStackResources", "cloudformation:DescribeStackEvents"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "CloudFormationIntegration"
      }, {
      Action   = ["xray:GetTraceGraph", "xray:GetTraceSummaries"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "XRayRead"
      }, {
      Action   = ["wafv2:GetWebACL", "wafv2:GetWebACLForResource", "wafv2:ListWebACLs"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "WAFRead"
      }, {
      Action   = ["cognito-identity:GetIdentityPoolRoles", "cognito-identity:ListIdentityPools", "cognito-idp:ListUserPools", "cognito-idp:DescribeUserPool", "cognito-idp:DescribeUserPoolClient"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "CognitoIntegration"
      }, {
      Action   = ["servicequotas:GetServiceQuota", "servicequotas:ListServiceQuotas"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "ServiceQuotas"
      }, {
      Action   = ["tag:GetResources", "tag:GetTagKeys", "tag:GetTagValues"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "TaggingRead"
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "arn:aws:iam::842676018479:policy/developer-sm-policy"
resource "aws_iam_policy" "developer_sm_policy" {
  description = "Created By Arta"
  name        = "developer-sm-policy"
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret", "secretsmanager:RestoreSecret", "secretsmanager:PutSecretValue", "secretsmanager:UpdateSecretVersionStage", "secretsmanager:RotateSecret", "secretsmanager:UpdateSecret"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "VisualEditor0"
      }, {
      Action   = "secretsmanager:ListSecrets"
      Effect   = "Allow"
      Resource = "*"
      Sid      = "VisualEditor1"
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "arn:aws:iam::842676018479:policy/CustomECRAppRunnerAccess"
resource "aws_iam_policy" "customecrapprunneraccess" {
  description = "Created by Baraja For ECR and Appruner minimal access"
  name        = "CustomECRAppRunnerAccess"
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = ["ecr:GetAuthorizationToken", "ecr:BatchCheckLayerAvailability", "ecr:GetDownloadUrlForLayer", "ecr:BatchGetImage", "ecr:InitiateLayerUpload", "ecr:UploadLayerPart", "ecr:CompleteLayerUpload", "ecr:PutImage"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "ECRFullAccess"
      }, {
      Action   = ["apprunner:ListServices", "apprunner:DescribeService", "apprunner:StartDeployment"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "AppRunnerAccess"
      }, {
      Action = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Condition = {
        StringEquals = {
          "aws:RequestedRegion" = "us-east-2"
        }
      }
      Effect   = "Allow"
      Resource = "arn:aws:secretsmanager:us-east-2:842676018479:secret:*"
      Sid      = "SecretsManagerAccess"
      }, {
      Action   = ["s3:PutObject"]
      Effect   = "Allow"
      Resource = "arn:aws:s3:::gj-security-audit-logs/*"
      Sid      = "S3AuditLogs"
      }, {
      Action   = ["sts:GetCallerIdentity"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "STSAccess"
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "AppRunnerFrontssomRole"
resource "aws_iam_role" "apprunnerfrontssomrole" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "tasks.apprunner.amazonaws.com"
      }
    }]
    Version = "2012-10-17"
  })
  description           = "Created By Braja for Role for App Runner to access SSM parameters, S3, and RDS"
  force_detach_policies = false
  max_session_duration  = 3600
  name                  = "AppRunnerFrontssomRole"
  path                  = "/"
  permissions_boundary  = null
  tags                  = {}
  tags_all              = {}
}

# __generated__ by Terraform from "GitHub-IAMAccessAnalyzer-Role"
resource "aws_iam_role" "github_iamaccessanalyzer_role" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRoleWithWebIdentity"
      Condition = {
        StringEquals = {
          "token.actions.githubusercontent.com:aud" = "sts.amazonaws.com"
        }
        StringLike = {
          "token.actions.githubusercontent.com:sub" = ["repo:Brajadbi360/ticketing-system:*", "repo:Dietary-Business-Intelligence/*"]
        }
      }
      Effect = "Allow"
      Principal = {
        Federated = "arn:aws:iam::842676018479:oidc-provider/token.actions.githubusercontent.com"
      }
    }]
    Version = "2012-10-17"
  })
  description           = "Role for GitHub Actions to use IAM Access Analyzer. Created by Braja Using there Account for testing purpose."
  force_detach_policies = false
  max_session_duration  = 3600
  name                  = "GitHub-IAMAccessAnalyzer-Role"
  path                  = "/"
  permissions_boundary  = null
  tags                  = {}
  tags_all              = {}
}

# __generated__ by Terraform from "dms-cloudwatch-logs-role"
resource "aws_iam_role" "dms_cloudwatch_logs_role" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "dms.amazonaws.com"
      }
      Sid = ""
    }]
    Version = "2012-10-17"
  })
  description           = "Allows Database Migration Service to call AWS services on your behalf."
  force_detach_policies = false
  max_session_duration  = 3600
  name                  = "dms-cloudwatch-logs-role"
  path                  = "/"
  permissions_boundary  = null
  tags                  = {}
  tags_all              = {}
}

# __generated__ by Terraform from "arn:aws:iam::842676018479:policy/EKSReadOnlyAccess"
resource "aws_iam_policy" "eksreadonlyaccess" {
  description = "Created by braja"
  name        = "EKSReadOnlyAccess"
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = ["eks:DescribeCluster", "eks:ListClusters"]
      Effect   = "Allow"
      Resource = "*"
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "arn:aws:iam::842676018479:policy/EKSAdminAccessPolicy"
resource "aws_iam_policy" "eksadminaccesspolicy" {
  description = "Created by Braja For EKS CICD Access"
  name        = "EKSAdminAccessPolicy"
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = ["eks:*"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "EKSFullAccess"
      }, {
      Action   = ["ec2:DescribeInstances", "ec2:DescribeSubnets", "ec2:DescribeSecurityGroups", "ec2:DescribeRouteTables", "ec2:DescribeVpcs"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "EC2ReadAccessForEKS"
      }, {
      Action = "iam:PassRole"
      Condition = {
        StringEquals = {
          "iam:PassedToService" = "eks.amazonaws.com"
        }
      }
      Effect   = "Allow"
      Resource = "arn:aws:iam::842676018479:role/*"
      Sid      = "AllowPassRoleToEKS"
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "ecr_dev"
resource "aws_iam_user" "ecr_dev" {
  force_destroy        = null
  name                 = "ecr_dev"
  path                 = "/"
  permissions_boundary = null
  tags = {
    AKIA4IM3HTUX7CJTRRH3 = "created by Hari"
  }
  tags_all = {
    AKIA4IM3HTUX7CJTRRH3 = "created by Hari"
  }
}

# __generated__ by Terraform from "sqlrds"
resource "aws_iam_role" "sqlrds" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "rds.amazonaws.com"
      }
    }]
    Version = "2012-10-17"
  })
  description           = null
  force_detach_policies = false
  max_session_duration  = 3600
  name                  = "sqlrds"
  path                  = "/"
  permissions_boundary  = null
  tags                  = {}
  tags_all              = {}
}

# __generated__ by Terraform from "AppRunnerTicketingSystemRole"
resource "aws_iam_role" "apprunnerticketingsystemrole" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "tasks.apprunner.amazonaws.com"
      }
    }]
    Version = "2012-10-17"
  })
  description           = "Role for App Runner to access SSM parameters, S3, and RDS"
  force_detach_policies = false
  max_session_duration  = 3600
  name                  = "AppRunnerTicketingSystemRole"
  path                  = "/"
  permissions_boundary  = null
  tags                  = {}
  tags_all              = {}
}

# __generated__ by Terraform from "arn:aws:iam::842676018479:policy/Ecs-And-Monitoring-policy"
resource "aws_iam_policy" "ecs_and_monitoring_policy" {
  description = "Created By Braja For access ECS"
  name        = "Ecs-And-Monitoring-policy"
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = ["ecs:DescribeTaskDefinition", "ecs:RegisterTaskDefinition", "ecs:UpdateService", "ecs:DescribeServices", "ecs:ListTasks", "ecs:DescribeTasks"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "ECSAccess"
      }, {
      Action   = ["elasticloadbalancing:DescribeLoadBalancers", "elasticloadbalancing:DescribeTargetGroups", "elasticloadbalancing:DescribeTargetHealth"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "ELBAccess"
      }, {
      Action   = ["logs:CreateLogGroup", "logs:CreateLogStream", "logs:PutLogEvents", "logs:DescribeLogGroups", "logs:DescribeLogStreams", "cloudwatch:PutDashboard", "cloudwatch:GetDashboard"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "CloudWatchAccess"
      }, {
      Action   = ["iam:PassRole"]
      Effect   = "Allow"
      Resource = ["arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole", "arn:aws:iam::842676018479:role/SecurityECSTaskRole"]
      Sid      = "IAMPassRole"
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "arn:aws:iam::842676018479:policy/DevOps-Senior-Policy"
resource "aws_iam_policy" "devops_senior_policy" {
  description = "Created By Kartik, Senior DevOps Engineer - dev account full read and write, read-only IAM"
  name        = "DevOps-Senior-Policy"
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = ["ecs:*"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "ECSFullAccess"
      }, {
      Action   = ["ecr:*"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "ECRFullAccess"
      }, {
      Action   = ["s3:*"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "S3FullAccess"
      }, {
      Action   = ["ec2:*"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "EC2FullAccess"
      }, {
      Action   = ["elasticloadbalancing:*"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "ELBFullAccess"
      }, {
      Action   = ["autoscaling:*"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "AutoScalingFullAccess"
      }, {
      Action   = ["acm:*"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "ACMFullAccess"
      }, {
      Action   = ["cloudformation:CreateStack", "cloudformation:UpdateStack", "cloudformation:DeleteStack", "cloudformation:DescribeStacks", "cloudformation:DescribeStackEvents", "cloudformation:DescribeStackResources", "cloudformation:GetTemplate", "cloudformation:ListStacks", "cloudformation:ListStackResources", "cloudformation:ValidateTemplate", "cloudformation:GetStackPolicy", "cloudformation:SetStackPolicy", "cloudformation:CancelUpdateStack", "cloudformation:ContinueUpdateRollback"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "CloudFormationFullAccess"
      }, {
      Action   = ["cloudwatch:*", "logs:*", "logs:CreateLogGroup", "logs:PutRetentionPolicy", "xray:*", "events:*"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "CloudWatchFullAccess"
      }, {
      Action   = ["cloudtrail:*"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "CloudTrailFullAccess"
      }, {
      Action   = ["apprunner:*"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "AppRunnerFullAccess"
      }, {
      Action   = ["secretsmanager:*"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "SecretsManagerFullAccess"
      }, {
      Action   = ["ec2:*Vpc*", "ec2:*Subnet*", "ec2:*SecurityGroup*", "ec2:*RouteTable*", "ec2:*InternetGateway*", "ec2:*NatGateway*", "ec2:*NetworkAcl*", "ec2:*VpcEndpoint*", "ec2:DescribeVpcs", "ec2:DescribeSubnets", "ec2:DescribeAvailabilityZones"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "VPCFullAccess"
      }, {
      Action   = ["route53:*", "route53domains:*", "route53resolver:*"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "Route53FullAccess"
      }, {
      Action   = ["ce:GetCostAndUsage", "ce:GetCostForecast", "ce:GetDimensionValues", "budgets:ViewBudget", "billing:GetBillingData", "aws-portal:ViewBilling"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "BillingReadOnly"
      }, {
      Action   = ["iam:Get*", "iam:List*", "iam:PassRole", "iam:CreateServiceLinkedRole", "iam:GenerateCredentialReport", "iam:GenerateServiceLastAccessedDetails", "sso:Describe*", "sso:Get*", "sso:List*", "identitystore:Describe*", "identitystore:List*"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "IAMReadOnly"
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "GitHub-IAMAccessAnalyzer-frontsite_sso"
resource "aws_iam_role" "github_iamaccessanalyzer_frontsite_sso" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRoleWithWebIdentity"
      Condition = {
        StringEquals = {
          "token.actions.githubusercontent.com:aud" = "sts.amazonaws.com"
        }
        StringLike = {
          "token.actions.githubusercontent.com:sub" = "repo:Dietary-Business-Intelligence/*"
        }
      }
      Effect = "Allow"
      Principal = {
        Federated = "arn:aws:iam::630024803888:oidc-provider/token.actions.githubusercontent.com"
      }
    }]
    Version = "2012-10-17"
  })
  description           = "created by Braja"
  force_detach_policies = false
  max_session_duration  = 3600
  name                  = "GitHub-IAMAccessAnalyzer-frontsite_sso"
  path                  = "/"
  permissions_boundary  = null
  tags                  = {}
  tags_all              = {}
}

# __generated__ by Terraform from "arn:aws:iam::842676018479:policy/Dev-Lead-Policy"
resource "aws_iam_policy" "dev_lead_policy" {
  description = "Created By Kartik,Dev-Lead-Policy grants elevated permissions for lead developers. Allows updating existing ECS services, tasks, and task definitions. Supports full push and pull access to existing ECR repositories. Permits S3 object upload and download only. Enables start, stop, and reboot of existing EC2 instances. Provides read-only access to CloudWatch metrics and logs, and CloudTrail events. Allows updating, pausing, and redeploying existing App Runner services. Grants full read and write access to Secrets Manager including secret creation and updates. No infrastructure creation or deletion is permitted."
  name        = "Dev-Lead-Policy"
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = ["ecs:Describe*", "ecs:List*", "ecs:Get*", "ecs:UpdateService", "ecs:UpdateCluster", "ecs:UpdateTaskSet", "ecs:RegisterTaskDefinition", "ecs:DeregisterTaskDefinition", "ecs:StartTask", "ecs:StopTask", "ecs:RunTask"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "ECSUpdateExisting"
      }, {
      Action   = ["ecr:GetAuthorizationToken", "ecr:BatchCheckLayerAvailability", "ecr:GetDownloadUrlForLayer", "ecr:BatchGetImage", "ecr:DescribeRepositories", "ecr:ListImages", "ecr:DescribeImages", "ecr:GetRepositoryPolicy", "ecr:InitiateLayerUpload", "ecr:UploadLayerPart", "ecr:CompleteLayerUpload", "ecr:PutImage"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "ECRPushPullExisting"
      }, {
      Action   = ["s3:GetObject", "s3:PutObject"]
      Effect   = "Allow"
      Resource = "arn:aws:s3:::*/*"
      Sid      = "S3ObjectUploadDownload"
      }, {
      Action   = ["ec2:Describe*", "ec2:Get*", "ec2:List*", "ec2:StartInstances", "ec2:StopInstances", "ec2:RebootInstances"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "EC2StartStopReboot"
      }, {
      Action   = ["cloudwatch:Describe*", "cloudwatch:Get*", "cloudwatch:List*", "logs:Describe*", "logs:Get*", "logs:List*", "logs:FilterLogEvents", "logs:StartQuery", "logs:StopQuery", "logs:GetQueryResults"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "CloudWatchReadOnly"
      }, {
      Action   = ["cloudtrail:Describe*", "cloudtrail:Get*", "cloudtrail:List*", "cloudtrail:LookupEvents"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "CloudTrailReadOnly"
      }, {
      Action   = ["apprunner:DescribeService", "apprunner:ListServices", "apprunner:UpdateService", "apprunner:StartDeployment", "apprunner:PauseService", "apprunner:ResumeService"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "AppRunnerUpdateExisting"
      }, {
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret", "secretsmanager:ListSecrets", "secretsmanager:ListSecretVersionIds", "secretsmanager:CreateSecret", "secretsmanager:UpdateSecret", "secretsmanager:PutSecretValue", "secretsmanager:TagResource", "secretsmanager:UntagResource"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "SecretsManagerReadWrite"
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "secret_manager_read_apprunner"
resource "aws_iam_role" "secret_manager_read_apprunner" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "lambda.amazonaws.com"
      }
    }]
    Version = "2012-10-17"
  })
  description           = "Allows Lambda functions to call AWS services on your behalf."
  force_detach_policies = false
  max_session_duration  = 3600
  name                  = "secret_manager_read_apprunner"
  path                  = "/"
  permissions_boundary  = null
  tags                  = {}
  tags_all              = {}
}

# __generated__ by Terraform from "asterdocs-apptesting-us-east-2-lambdaRole"
resource "aws_iam_role" "asterdocs_apptesting_us_east_2_lambdarole" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "lambda.amazonaws.com"
      }
    }]
    Version = "2012-10-17"
  })
  description           = null
  force_detach_policies = false
  max_session_duration  = 3600
  name                  = "asterdocs-apptesting-us-east-2-lambdaRole"
  path                  = "/"
  permissions_boundary  = null
  tags = {
    STAGE = "apptesting"
  }
  tags_all = {
    STAGE = "apptesting"
  }
}

# __generated__ by Terraform from "arn:aws:iam::842676018479:policy/Dev-Junior-Policy"
resource "aws_iam_policy" "dev_junior_policy" {
  description = "Created By Kartik,Dev-Junior-Policy grants read-only access to ECS, ECR, EC2, CloudWatch, CloudTrail, and Secrets Manager. Allows S3 object upload and download only. Permits updating and redeploying existing App Runner services. No resource creation or deletion is allowed."
  name        = "Dev-Junior-Policy"
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = ["ecs:Describe*", "ecs:List*", "ecs:Get*"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "ECSReadOnly"
      }, {
      Action   = ["ecr:GetAuthorizationToken", "ecr:BatchCheckLayerAvailability", "ecr:GetDownloadUrlForLayer", "ecr:BatchGetImage", "ecr:DescribeRepositories", "ecr:ListImages", "ecr:DescribeImages", "ecr:GetRepositoryPolicy"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "ECRReadOnly"
      }, {
      Action   = ["s3:GetObject", "s3:PutObject"]
      Effect   = "Allow"
      Resource = "arn:aws:s3:::*/*"
      Sid      = "S3ObjectUploadDownload"
      }, {
      Action   = ["ec2:Describe*", "ec2:Get*", "ec2:List*"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "EC2ReadOnly"
      }, {
      Action   = ["cloudwatch:Describe*", "cloudwatch:Get*", "cloudwatch:List*", "logs:Describe*", "logs:Get*", "logs:List*", "logs:FilterLogEvents", "logs:StartQuery", "logs:StopQuery", "logs:GetQueryResults"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "CloudWatchReadOnly"
      }, {
      Action   = ["cloudtrail:Describe*", "cloudtrail:Get*", "cloudtrail:List*", "cloudtrail:LookupEvents"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "CloudTrailReadOnly"
      }, {
      Action   = ["apprunner:UpdateService", "apprunner:StartDeployment", "apprunner:DescribeService", "apprunner:ListServices"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "AppRunnerUpdateExisting"
      }, {
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret", "secretsmanager:ListSecrets", "secretsmanager:ListSecretVersionIds"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "SecretsManagerReadOnly"
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "arn:aws:iam::842676018479:policy/frontsite_sso_RDS_Access"
resource "aws_iam_policy" "frontsite_sso_rds_access" {
  description = "Creaded By Braja"
  name        = "frontsite_sso_RDS_Access"
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = ["rds-data:ExecuteStatement", "rds-data:BatchExecuteStatement", "rds-data:BeginTransaction", "rds-data:CommitTransaction", "rds-data:RollbackTransaction"]
      Effect   = "Allow"
      Resource = ["arn:aws:rds:us-east-2:842676018479:db:zylerprelive"]
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "arn:aws:iam::842676018479:policy/cloudwatch_read_attach"
resource "aws_iam_policy" "cloudwatch_read_attach" {
  description = null
  name        = "cloudwatch_read_attach"
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = ["logs:GetDataProtectionPolicy", "logs:GetLogRecord", "logs:DescribeSubscriptionFilters", "logs:StartQuery", "logs:DescribeMetricFilters", "logs:ListAggregateLogGroupSummaries", "logs:GetTransformer", "logs:GetDeliveryDestination", "logs:ListLogDeliveries", "cloudwatch:ListServices", "cloudwatch:GetService", "logs:DescribeImportTasks", "cloudwatch:DescribeAlarmsForMetric", "cloudwatch:ListDashboards", "cloudwatch:ListTagsForResource", "logs:GetLogEvents", "cloudwatch:ListEntitiesForMetric", "logs:FilterLogEvents", "logs:DescribeDestinations", "cloudwatch:GenerateQueryResultsSummary", "logs:GetLookupTable", "cloudwatch:DescribeInsightRules", "logs:GetScheduledQueryHistory", "logs:GetDelivery", "cloudwatch:GetDashboard", "logs:DescribeImportTaskBatches", "cloudwatch:GetInsightRuleReport", "logs:GetIntegration", "logs:Unmask", "logs:StopQuery", "logs:DescribeDeliverySources", "cloudwatch:GetMetricStatistics", "cloudwatch:GetTopologyDiscoveryStatus", "logs:ListTagsForResource", "cloudwatch:GetAlarmMuteRule", "logs:DescribeExportTasks", "logs:GetDeliverySource", "logs:GetQueryResults", "logs:ListLogGroupsForQuery", "logs:GetLogFields", "cloudwatch:DescribeAlarms", "cloudwatch:GetMetricStream", "logs:DescribeDeliveries", "logs:ListEntitiesForLogGroup", "logs:ListLogGroups", "logs:ListSourcesForS3TableIntegration", "logs:ListAnomalies", "logs:ListTagsLogGroup", "cloudwatch:GenerateQuery", "cloudwatch:GetMetricData", "logs:DescribeLogStreams", "logs:DescribeIndexPolicies", "logs:GetLogDelivery", "cloudwatch:GetTopologyMap", "cloudwatch:ListMetrics", "cloudwatch:GetServiceData", "cloudwatch:DescribeAnomalyDetectors", "cloudwatch:DescribeAlarmHistory", "logs:StartLiveTail", "logs:StopLiveTail", "logs:DescribeQueryDefinitions", "logs:DescribeResourcePolicies", "cloudwatch:GetMetricWidgetImage", "logs:DescribeQueries", "cloudwatch:BatchGetServiceLevelIndicatorReport", "cloudwatch:BatchGetServiceLevelObjectiveBudgetReport", "logs:DescribeLogGroups", "logs:ListLogGroupsForEntity", "logs:ListLogAnomalyDetectors", "logs:DescribeLookupTables", "logs:ListIntegrations", "logs:DescribeAccountPolicies", "logs:GetDeliveryDestinationPolicy", "logs:TestMetricFilter", "logs:GetLogAnomalyDetector", "cloudwatch:ListManagedInsightRules", "logs:DescribeFieldIndexes", "logs:DescribeDeliveryDestinations", "cloudwatch:ListServiceLevelObjectives", "cloudwatch:GetOTelEnrichment", "cloudwatch:ListAlarmMuteRules", "logs:DescribeConfigurationTemplates", "logs:TestTransformer", "cloudwatch:ListMetricStreams", "cloudwatch:GetServiceLevelObjective", "logs:ListScheduledQueries", "logs:GetScheduledQuery", "logs:GetLogGroupFields"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "VisualEditor0"
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "arn:aws:iam::842676018479:policy/AppRunnerReadAccess"
resource "aws_iam_policy" "apprunnerreadaccess" {
  description = "Created by Braja"
  name        = "AppRunnerReadAccess"
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = ["apprunner:DescribeAutoScalingConfiguration", "apprunner:DescribeCustomDomains", "apprunner:DescribeObservabilityConfiguration", "apprunner:DescribeOperation", "apprunner:DescribeService", "apprunner:DescribeVpcConnector", "apprunner:DescribeVpcIngressConnection", "apprunner:ListAutoScalingConfigurations", "apprunner:ListConnections", "apprunner:ListObservabilityConfigurations", "apprunner:ListOperations", "apprunner:ListServices", "apprunner:ListServicesForAutoScalingConfiguration", "apprunner:ListTagsForResource", "apprunner:ListVpcConnectors", "apprunner:ListVpcIngressConnections"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "AppRunnerReadAccess"
      }, {
      Action   = ["ecr:DescribeImages", "ecr:ListImages", "ecr:DescribeRepositories", "ecr:ListTagsForResource"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "ECRReadAccess"
      }, {
      Action   = ["logs:DescribeLogStreams", "logs:DescribeLogGroups", "logs:GetLogEvents", "logs:GetLogGroupFields", "logs:GetLogRecord", "logs:GetQueryResults", "logs:FilterLogEvents", "logs:StartQuery", "logs:StopQuery", "logs:TestMetricFilter", "logs:ListTagsLogGroup"]
      Effect   = "Allow"
      Resource = ["arn:aws:logs:*:*:log-group:/aws/apprunner/*", "arn:aws:logs:*:*:log-group:/aws/apprunner/*:log-stream:*"]
      Sid      = "CloudWatchLogsRead"
      }, {
      Action   = ["cloudwatch:GetMetricData", "cloudwatch:GetMetricStatistics", "cloudwatch:ListMetrics"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "CloudWatchMetricsRead"
      }, {
      Action   = ["secretsmanager:DescribeSecret", "secretsmanager:ListSecrets", "ssm:DescribeParameters"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "SecretsRead"
      }, {
      Action   = ["codestar-connections:ListConnections"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "ConnectionsRead"
      }, {
      Action   = ["wafv2:GetWebACL", "wafv2:GetWebACLForResource", "wafv2:ListWebACLs", "wafv2:ListResourcesForWebACL"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "WAFRead"
      }, {
      Action   = ["servicequotas:GetServiceQuota", "servicequotas:ListServiceQuotas"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "ServiceQuotasRead"
      }, {
      Action   = ["tag:GetResources", "tag:GetTagKeys", "tag:GetTagValues"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "TaggingRead"
      }, {
      Action   = ["events:DescribeRule", "events:ListRules", "events:ListTargetsByRule"]
      Effect   = "Allow"
      Resource = "arn:aws:events:*:*:rule/apprunner-*"
      Sid      = "EventBridgeRead"
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "terraform-runner-role"
resource "aws_iam_role" "terraform_runner_role" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Condition = {
        StringEquals = {
          "sts:ExternalId" = "terraform-runner-dbi360"
        }
      }
      Effect = "Allow"
      Principal = {
        AWS = "arn:aws:iam::842676018479:root"
      }
      Sid = "AllowIAMUsersToAssume"
    }]
    Version = "2012-10-17"
  })
  description           = "Dedicated IAM role for Terraform IaC operations"
  force_detach_policies = false
  max_session_duration  = 3600
  name                  = "terraform-runner-role"
  path                  = "/"
  permissions_boundary  = null
  tags = {
    ManagedBy = "Manual"
    Purpose   = "TerraformRunner"
  }
  tags_all = {
    ManagedBy = "Manual"
    Purpose   = "TerraformRunner"
  }
}

# __generated__ by Terraform from "arn:aws:iam::842676018479:policy/IAMAccessAnalyzerCICD"
resource "aws_iam_policy" "iamaccessanalyzercicd" {
  description = "This Is created for Braja Git account also. once testing done implement this in organization."
  name        = "IAMAccessAnalyzerCICD"
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = ["access-analyzer:ListAnalyzers", "access-analyzer:ListFindings", "access-analyzer:GetFinding", "access-analyzer:ValidatePolicy", "iam:GetPolicy", "iam:GetPolicyVersion", "iam:GetRole", "iam:ListRoles", "iam:ListRolePolicies", "iam:GetRolePolicy", "iam:ListAttachedRolePolicies", "iam:SimulatePrincipalPolicy"]
      Effect   = "Allow"
      Resource = "*"
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "aster_reader"
resource "aws_iam_user" "aster_reader" {
  force_destroy        = null
  name                 = "aster_reader"
  path                 = "/"
  permissions_boundary = null
  tags                 = {}
  tags_all             = {}
}

# __generated__ by Terraform from "secret-reader-aster"
resource "aws_iam_user" "secret_reader_aster" {
  force_destroy        = null
  name                 = "secret-reader-aster"
  path                 = "/"
  permissions_boundary = null
  tags = {
    AKIA4IM3HTUXVQCNSJXM = "aster secret reader"
  }
  tags_all = {
    AKIA4IM3HTUXVQCNSJXM = "aster secret reader"
  }
}

# __generated__ by Terraform from "S3-Security-User"
resource "aws_iam_user" "s3_security_user" {
  force_destroy        = null
  name                 = "S3-Security-User"
  path                 = "/"
  permissions_boundary = null
  tags                 = {}
  tags_all             = {}
}

# __generated__ by Terraform from "arn:aws:iam::842676018479:policy/ExternalSecretsPolicy"
resource "aws_iam_policy" "externalsecretspolicy" {
  description = "Created By Braja for EKS access"
  name        = "ExternalSecretsPolicy"
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Effect   = "Allow"
      Resource = "arn:aws:secretsmanager:us-east-2:842676018479:secret:*"
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "secret_manager_read"
resource "aws_iam_role" "secret_manager_read" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "lambda.amazonaws.com"
      }
    }]
    Version = "2012-10-17"
  })
  description           = "Allows Lambda functions to call AWS services on your behalf."
  force_detach_policies = false
  max_session_duration  = 3600
  name                  = "secret_manager_read"
  path                  = "/"
  permissions_boundary  = null
  tags                  = {}
  tags_all              = {}
}

# __generated__ by Terraform from "n8n-secrets-access"
resource "aws_iam_user" "n8n_secrets_access" {
  force_destroy        = null
  name                 = "n8n-secrets-access"
  path                 = "/"
  permissions_boundary = null
  tags = {
    AKIA4IM3HTUX3MFOFUVR = "n8n Secrets Manager access"
  }
  tags_all = {
    AKIA4IM3HTUX3MFOFUVR = "n8n Secrets Manager access"
  }
}

# __generated__ by Terraform from "arn:aws:iam::842676018479:policy/secret-reader-policy-aster"
resource "aws_iam_policy" "secret_reader_policy_aster" {
  description = null
  name        = "secret-reader-policy-aster"
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Effect   = "Allow"
      Resource = "arn:aws:secretsmanager:us-east-2:842676018479:secret:aster/s3-PBIJEW"
      Sid      = "VisualEditor0"
      }, {
      Action   = "secretsmanager:ListSecrets"
      Effect   = "Allow"
      Resource = "*"
      Sid      = "VisualEditor1"
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "arn:aws:iam::842676018479:policy/Route53-ReadWrite"
resource "aws_iam_policy" "route53_readwrite" {
  description = "Created By Braja For Route53-ReadWrite"
  name        = "Route53-ReadWrite"
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = ["route53:Get*", "route53:List*", "route53:TestDNSAnswer", "route53:Change*", "route53:Update*", "route53:Associate*", "route53:Enable*"]
      Effect   = "Allow"
      Resource = "*"
      }, {
      Action   = ["route53:Delete*", "route53:CreateHostedZone"]
      Effect   = "Deny"
      Resource = "*"
      }, {
      Action   = ["logs:DescribeLogGroups", "logs:DescribeLogStreams", "logs:GetLogEvents", "logs:PutLogEvents"]
      Effect   = "Allow"
      Resource = "*"
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "arn:aws:iam::842676018479:policy/Lambda-ReadWrite"
resource "aws_iam_policy" "lambda_readwrite" {
  description = "Created By Braja For Lambda-ReadWrite"
  name        = "Lambda-ReadWrite"
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = ["lambda:GetFunction", "lambda:GetFunctionConfiguration", "lambda:GetFunctionCodeSigningConfig", "lambda:GetFunctionConcurrency", "lambda:GetFunctionEventInvokeConfig", "lambda:GetFunctionUrlConfig", "lambda:GetAlias", "lambda:GetAccountSettings", "lambda:GetCodeSigningConfig", "lambda:GetEventSourceMapping", "lambda:GetLayerVersion", "lambda:GetLayerVersionPolicy", "lambda:GetPolicy", "lambda:GetProvisionedConcurrencyConfig", "lambda:ListFunctions", "lambda:ListAliases", "lambda:ListCodeSigningConfigs", "lambda:ListEventSourceMappings", "lambda:ListFunctionEventInvokeConfigs", "lambda:ListFunctionUrlConfigs", "lambda:ListFunctionsByCodeSigningConfig", "lambda:ListLayers", "lambda:ListLayerVersions", "lambda:ListProvisionedConcurrencyConfigs", "lambda:ListTags", "lambda:ListVersionsByFunction", "lambda:UpdateFunctionCode", "lambda:UpdateFunctionConfiguration", "lambda:UpdateFunctionEventInvokeConfig", "lambda:UpdateFunctionUrlConfig", "lambda:UpdateAlias", "lambda:UpdateCodeSigningConfig", "lambda:UpdateEventSourceMapping", "lambda:PublishVersion", "lambda:PutFunctionCodeSigningConfig", "lambda:PutFunctionConcurrency", "lambda:PutFunctionEventInvokeConfig", "lambda:PutProvisionedConcurrencyConfig", "lambda:InvokeFunction", "lambda:InvokeAsync", "lambda:TagResource", "lambda:UntagResource"]
      Effect   = "Allow"
      Resource = "*"
      }, {
      Action   = ["lambda:CreateFunction", "lambda:CreateAlias", "lambda:CreateCodeSigningConfig", "lambda:CreateEventSourceMapping", "lambda:CreateFunctionUrlConfig", "lambda:DeleteFunction", "lambda:DeleteAlias", "lambda:DeleteCodeSigningConfig", "lambda:DeleteEventSourceMapping", "lambda:DeleteFunctionCodeSigningConfig", "lambda:DeleteFunctionConcurrency", "lambda:DeleteFunctionEventInvokeConfig", "lambda:DeleteFunctionUrlConfig", "lambda:DeleteLayerVersion", "lambda:DeleteProvisionedConcurrencyConfig", "lambda:PublishLayerVersion", "lambda:AddPermission", "lambda:RemovePermission", "lambda:AddLayerVersionPermission", "lambda:RemoveLayerVersionPermission"]
      Effect   = "Deny"
      Resource = "*"
      }, {
      Action = ["iam:PassRole"]
      Condition = {
        StringEquals = {
          "iam:PassedToService" = "lambda.amazonaws.com"
        }
      }
      Effect   = "Allow"
      Resource = "arn:aws:iam::*:role/*"
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "arn:aws:iam::842676018479:policy/binayak-dev-policy"
resource "aws_iam_policy" "binayak_dev_policy" {
  description = "Created By Arta"
  name        = "binayak-dev-policy"
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = ["ecs:UpdateCluster", "s3:GetBucketTagging", "secretsmanager:DescribeSecret", "s3:DeleteObjectVersion", "secretsmanager:PutSecretValue", "s3:RestoreObject", "s3:ListBucket", "s3:GetBucketPolicy", "ecs:UpdateService", "s3:GetObjectAcl", "secretsmanager:GetSecretValue", "secretsmanager:RestoreSecret", "ecs:DescribeServices", "s3:DeleteObject", "s3:GetBucketPolicyStatus", "s3:GetBucketVersioning", "s3:PutBucketCORS", "ecs:DescribeClusters", "secretsmanager:UpdateSecret", "s3:PutObject", "s3:GetObject", "s3:PutObjectRetention", "s3:PutBucketLogging", "s3:GetBucketCORS", "secretsmanager:UpdateSecretVersionStage", "s3:GetObjectVersion"]
      Effect   = "Allow"
      Resource = ["arn:aws:ecs:us-east-2:842676018479:cluster/development-cluster", "arn:aws:ecs:us-east-2:842676018479:service/development-cluster/authserver-backend", "arn:aws:ecs:us-east-2:842676018479:service/development-cluster/authserver-frontend", "arn:aws:ecs:us-east-2:842676018479:service/development-cluster/findsuppliers-backend", "arn:aws:ecs:us-east-2:842676018479:service/development-cluster/findsuppliers-frontend", "arn:aws:ecs:us-east-2:842676018479:service/development-cluster/findsuppliers-website", "arn:aws:ecs:us-east-2:842676018479:service/development-cluster/hrms-attendance", "arn:aws:ecs:us-east-2:842676018479:service/development-cluster/hrms-backend", "arn:aws:ecs:us-east-2:842676018479:service/development-cluster/hrms-careeer-frontend", "arn:aws:ecs:us-east-2:842676018479:service/development-cluster/hrms-employee", "arn:aws:ecs:us-east-2:842676018479:service/development-cluster/hrms-inventory", "arn:aws:ecs:us-east-2:842676018479:service/development-cluster/hrms-payroll", "arn:aws:ecs:us-east-2:842676018479:service/development-cluster/hrms-recruitment-frontend", "arn:aws:ecs:us-east-2:842676018479:service/development-cluster/hrms-report", "arn:aws:ecs:us-east-2:842676018479:service/development-cluster/communication-backend", "arn:aws:ecs:us-east-2:842676018479:service/development-cluster/communication-frontend", "arn:aws:s3:::dbi-findsuppliers", "arn:aws:s3:::dbi-findsuppliers-dev", "arn:aws:s3:::dbi-sso-demo", "arn:aws:s3:::demohrms", "arn:aws:s3:::testgj-developmentdoc", "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config-13NrGm", "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-frontend/config-QFxicn", "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-website/config-I7It1r", "arn:aws:secretsmanager:us-east-2:842676018479:secret:firebase-service-account-findsupplier-YCBsFX", "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-hex-key/config-BGrEHQ", "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config-U92Dih", "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config-C8mWqO", "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/communication-backend/config-VJZQ6o", "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/communication-frontend/config-8OVVQ9", "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-payroll/config-jbOCSR", "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-attendance/config-lenf0Y", "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-report/config-X2jlFH", "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-employee/config-ToAT04", "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-recruitment-frontend/config-DgyIkC", "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-inventory/config-57YoPY", "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-careeer-frontend/config-oLZXQo", "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-backend/config-ajGFNd", "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-frontend/*", "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-backend/*"]
      Sid      = "VisualEditor0"
      }, {
      Action   = ["ecs:ListServices", "ecs:ListTaskDefinitions", "secretsmanager:ListSecrets", "ecs:ListClusters"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "VisualEditor1"
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "arn:aws:iam::842676018479:policy/S3MediaBucketdbicentralAccess"
resource "aws_iam_policy" "s3mediabucketdbicentralaccess" {
  description = "Created by Braja"
  name        = "S3MediaBucketdbicentralAccess"
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = ["s3:PutObject", "s3:GetObject", "s3:ListBucket"]
      Effect   = "Allow"
      Resource = ["arn:aws:s3:::dbi-central-object-vault-media", "arn:aws:s3:::dbi-central-object-vault-media/*"]
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "arn:aws:iam::842676018479:policy/AllowPassRoleToAppRunner"
resource "aws_iam_policy" "allowpassrolettoapprunner" {
  description = "Created By Braja pass the access Role"
  name        = "AllowPassRoleToAppRunner"
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action = "iam:PassRole"
      Condition = {
        StringEquals = {
          "iam:PassedToService" = ["apprunner.amazonaws.com", "tasks.apprunner.amazonaws.com"]
        }
      }
      Effect   = "Allow"
      Resource = "arn:aws:iam::842676018479:role/APPRUNNER_INLINE_POLICY"
      Sid      = "PassRoleToAppRunner"
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "arn:aws:iam::842676018479:policy/sqlrds"
resource "aws_iam_policy" "sqlrds" {
  description = null
  name        = "sqlrds"
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = ["s3:ListBucket", "s3:GetBucketLocation"]
      Effect   = "Allow"
      Resource = ["arn:aws:s3:::asterdocs-test"]
      }, {
      Action   = ["s3:GetObject", "s3:PutObject", "s3:ListMultipartUploadParts", "s3:AbortMultipartUpload"]
      Effect   = "Allow"
      Resource = ["arn:aws:s3:::asterdocs-test/*"]
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "arn:aws:iam::842676018479:policy/EC2-ReadOnly-Policy"
resource "aws_iam_policy" "ec2_readonly_policy" {
  description = "Created By Braja For EC2 Read Only Access"
  name        = "EC2-ReadOnly-Policy"
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = ["ec2:DescribeInstances", "ec2:DescribeInstanceStatus", "ec2:DescribeInstanceAttribute", "ec2:DescribeImages", "ec2:DescribeSnapshots", "ec2:DescribeVolumes", "ec2:DescribeVolumeStatus", "ec2:DescribeVolumeAttribute", "ec2:DescribeSecurityGroups", "ec2:DescribeKeyPairs", "ec2:DescribeAvailabilityZones", "ec2:DescribeSubnets", "ec2:DescribeVpcs", "ec2:DescribeRegions", "ec2:DescribeInstanceTypes", "ec2:DescribeTags", "ec2:DescribeNetworkInterfaces", "ec2:DescribeAddresses", "ec2:DescribeAccountAttributes", "ec2:DescribeInternetGateways", "ec2:DescribeRouteTables", "ec2:DescribeNetworkAcls", "ec2:DescribePlacementGroups", "ec2:DescribeReservedInstances", "ec2:DescribeSpotInstanceRequests", "ec2:DescribeSpotPriceHistory", "ec2:GetConsoleOutput", "ec2:GetConsoleScreenshot", "ec2:GetPasswordData"]
      Effect   = "Allow"
      Resource = "*"
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "secret_reader_read"
resource "aws_iam_role" "secret_reader_read" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "tasks.apprunner.amazonaws.com"
      }
    }]
    Version = "2012-10-17"
  })
  description           = "Created by Braja For Apprunner Secreate Manager Access"
  force_detach_policies = false
  max_session_duration  = 3600
  name                  = "secret_reader_read"
  path                  = "/"
  permissions_boundary  = null
  tags                  = {}
  tags_all              = {}
}

# __generated__ by Terraform from "APPRUNNER_INLINE_POLICY"
resource "aws_iam_role" "apprunner_inline_policy" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "tasks.apprunner.amazonaws.com"
      }
    }]
    Version = "2012-10-17"
  })
  description           = "INLINE POLICY TO READ SECRETS FROM APPRUNNER"
  force_detach_policies = false
  max_session_duration  = 3600
  name                  = "APPRUNNER_INLINE_POLICY"
  path                  = "/"
  permissions_boundary  = null
  tags                  = {}
  tags_all              = {}
}

# __generated__ by Terraform from "lambdalogcreate"
resource "aws_iam_role" "lambdalogcreate" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "lambda.amazonaws.com"
      }
    }]
    Version = "2012-10-17"
  })
  description           = "Allows Lambda functions to call AWS services on your behalf."
  force_detach_policies = false
  max_session_duration  = 3600
  name                  = "lambdalogcreate"
  path                  = "/"
  permissions_boundary  = null
  tags                  = {}
  tags_all              = {}
}

# __generated__ by Terraform from "secret-reader-erp-demo"
resource "aws_iam_user" "secret_reader_erp_demo" {
  force_destroy        = null
  name                 = "secret-reader-erp-demo"
  path                 = "/"
  permissions_boundary = null
  tags = {
    AKIA4IM3HTUXUPWLTZOM = "for all the erp products secret get"
    AKIA4IM3HTUXWRDOKZ5A = "secret-reader-for-erp-demo"
  }
  tags_all = {
    AKIA4IM3HTUXUPWLTZOM = "for all the erp products secret get"
    AKIA4IM3HTUXWRDOKZ5A = "secret-reader-for-erp-demo"
  }
}

# __generated__ by Terraform from "arn:aws:iam::842676018479:policy/GitHubRunnerPolicy"
resource "aws_iam_policy" "githubrunnerpolicy" {
  description = "Created by Braja for Git runer"
  name        = "GitHubRunnerPolicy"
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = ["apprunner:*", "ecr:GetAuthorizationToken", "ecr:BatchCheckLayerAvailability", "ecr:GetDownloadUrlForLayer", "ecr:BatchGetImage", "ecr:PutImage", "ecr:InitiateLayerUpload", "ecr:UploadLayerPart", "ecr:CompleteLayerUpload", "logs:CreateLogGroup", "logs:CreateLogStream", "logs:PutLogEvents"]
      Effect   = "Allow"
      Resource = "*"
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "OffboardCredBrokerExecutionRole"
resource "aws_iam_role" "offboardcredbrokerexecutionrole" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "lambda.amazonaws.com"
      }
    }]
    Version = "2012-10-17"
  })
  description           = "Allows Lambda functions to call AWS services on your behalf."
  force_detach_policies = false
  max_session_duration  = 3600
  name                  = "OffboardCredBrokerExecutionRole"
  path                  = "/"
  permissions_boundary  = null
  tags                  = {}
  tags_all              = {}
}

# __generated__ by Terraform from "arn:aws:iam::842676018479:policy/hrms-rekognition-policy"
resource "aws_iam_policy" "hrms_rekognition_policy" {
  description = "rekognition policy for hrms to UMA"
  name        = "hrms-rekognition-policy"
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = ["rekognition:DescribeCollection", "rekognition:IndexFaces", "rekognition:SearchFacesByImage", "rekognition:DeleteFaces"]
      Effect   = "Allow"
      Resource = "arn:aws:rekognition:ap-south-1:842676018479:collection/hrms-attendance-company-*"
      Sid      = "VisualEditor0"
      }, {
      Action   = "rekognition:CreateCollection"
      Effect   = "Allow"
      Resource = "*"
      Sid      = "VisualEditor1"
      }, {
      Action   = ["rekognition:DetectFaces"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "AttendanceRekognitionDetectFaces"
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "arn:aws:iam::842676018479:policy/ECR-FullAccess"
resource "aws_iam_policy" "ecr_fullaccess" {
  description = "Created BY Kartik"
  name        = "ECR-FullAccess"
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = ["ecr:*", "ecr-public:*"]
      Effect   = "Allow"
      Resource = ["arn:aws:ecr:*:123456789012:repository/*", "arn:aws:ecr:*:123456789012:registry/*", "arn:aws:ecr-public::123456789012:repository/*"]
      Sid      = "ECRFullAccessAccountScoped"
      }, {
      Action   = ["ecr:GetAuthorizationToken", "ecr:DescribeRepositories", "ecr:ListImages", "ecr:BatchCheckLayerAvailability", "ecr:BatchGetImage", "ecr:GetRepositoryPolicy", "ecr:ListTagsForResource", "ecr-public:DescribeRegistries"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "AllowGetAuthTokenAndDescribe"
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "arn:aws:iam::842676018479:policy/EKS-EC2-Service-Role-Donot-Assign-Anyone"
resource "aws_iam_policy" "eks_ec2_service_role_donot_assign_anyone" {
  description = "Created by Braja For Secure Terneling"
  name        = "EKS-EC2-Service-Role-Donot-Assign-Anyone"
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = ["eks:*", "autoscaling:DescribeAutoScalingGroups", "autoscaling:UpdateAutoScalingGroup", "ec2:DescribeAccountAttributes", "ec2:DescribeAddresses", "ec2:DescribeInternetGateways", "ec2:DescribeSecurityGroups", "ec2:DescribeSubnets", "ec2:DescribeVpcs", "ec2:DescribeNetworkInterfaces", "ec2:DescribeRouteTables", "ec2:DescribeDhcpOptions", "ec2:CreateNetworkInterface", "ec2:CreateNetworkInterfacePermission", "ec2:DeleteNetworkInterface", "ec2:ModifyNetworkInterfaceAttribute", "ec2:AssignPrivateIpAddresses", "ec2:UnassignPrivateIpAddresses", "ec2:CreateTags", "ec2:DeleteTags", "iam:ListAttachedRolePolicies", "iam:ListRoles"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "EKSClusterPermissions"
      }, {
      Action = "iam:CreateServiceLinkedRole"
      Condition = {
        StringEquals = {
          "iam:AWSServiceName" = ["eks.amazonaws.com", "eks-nodegroup.amazonaws.com", "elasticloadbalancing.amazonaws.com"]
        }
      }
      Effect   = "Allow"
      Resource = ["arn:aws:iam::*:role/aws-service-role/eks.amazonaws.com/AWSServiceRoleForAmazonEKS", "arn:aws:iam::*:role/aws-service-role/eks-nodegroup.amazonaws.com/AWSServiceRoleForAmazonEKSNodegroup", "arn:aws:iam::*:role/aws-service-role/elasticloadbalancing.amazonaws.com/AWSServiceRoleForElasticLoadBalancing"]
      Sid      = "CreateServiceLinkedRoleForEKS"
      }, {
      Action   = ["ec2:RunInstances", "ec2:TerminateInstances", "ec2:StopInstances", "ec2:StartInstances", "ec2:RebootInstances", "ec2:DescribeInstances", "ec2:DescribeInstanceStatus", "ec2:DescribeInstanceTypes", "ec2:DescribeInstanceAttribute", "ec2:ModifyInstanceAttribute"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "EC2InstanceManagement"
      }, {
      Action   = ["ec2:CreateVolume", "ec2:DeleteVolume", "ec2:AttachVolume", "ec2:DetachVolume", "ec2:DescribeVolumes", "ec2:DescribeVolumeStatus", "ec2:ModifyVolume", "ec2:ModifyVolumeAttribute"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "EC2VolumeManagement"
      }, {
      Action   = ["ec2:AuthorizeSecurityGroupIngress", "ec2:AuthorizeSecurityGroupEgress", "ec2:RevokeSecurityGroupIngress", "ec2:RevokeSecurityGroupEgress", "ec2:CreateSecurityGroup", "ec2:DeleteSecurityGroup", "ec2:ModifySecurityGroupRules", "ec2:AllocateAddress", "ec2:ReleaseAddress", "ec2:AssociateAddress", "ec2:DisassociateAddress"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "EC2NetworkingForNodeGroups"
      }, {
      Action   = ["ec2:CreateImage", "ec2:DeregisterImage", "ec2:DescribeImages", "ec2:DescribeImageAttribute", "ec2:CreateSnapshot", "ec2:DeleteSnapshot", "ec2:DescribeSnapshots", "ec2:DescribeSnapshotAttribute", "ec2:CopyImage", "ec2:CopySnapshot"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "EC2AMIAndSnapshot"
      }, {
      Action   = ["autoscaling:CreateAutoScalingGroup", "autoscaling:DeleteAutoScalingGroup", "autoscaling:DescribeAutoScalingGroups", "autoscaling:DescribeAutoScalingInstances", "autoscaling:DescribeLaunchConfigurations", "autoscaling:DescribeScalingActivities", "autoscaling:CreateLaunchConfiguration", "autoscaling:DeleteLaunchConfiguration", "autoscaling:UpdateAutoScalingGroup", "autoscaling:AttachInstances", "autoscaling:DetachInstances", "autoscaling:SetDesiredCapacity", "autoscaling:TerminateInstanceInAutoScalingGroup", "autoscaling:CreateOrUpdateTags", "autoscaling:DeleteTags"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "AutoScalingForNodeGroups"
      }, {
      Action   = ["elasticloadbalancing:*"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "LoadBalancerSupport"
      }, {
      Action = ["iam:PassRole", "iam:GetRole", "iam:ListRolePolicies", "iam:GetRolePolicy", "iam:ListInstanceProfilesForRole"]
      Condition = {
        StringEquals = {
          "iam:PassedToService" = ["ec2.amazonaws.com", "eks.amazonaws.com", "autoscaling.amazonaws.com"]
        }
      }
      Effect   = "Allow"
      Resource = "*"
      Sid      = "IAMPassRoleForNodeGroups"
      }, {
      Action   = ["logs:CreateLogGroup", "logs:CreateLogStream", "logs:PutLogEvents", "logs:DescribeLogGroups", "logs:DescribeLogStreams"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "CloudWatchLogsSupport"
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "arn:aws:iam::842676018479:policy/TicketingSystemRDSAccess"
resource "aws_iam_policy" "ticketingsystemrdsaccess" {
  description = "Created by Braja Allows data access to ticketing system RDS database"
  name        = "TicketingSystemRDSAccess"
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = ["rds-data:ExecuteStatement", "rds-data:BatchExecuteStatement", "rds-data:BeginTransaction", "rds-data:CommitTransaction", "rds-data:RollbackTransaction"]
      Effect   = "Allow"
      Resource = ["arn:aws:rds:us-east-2:842676018479:cluster:ticketing-system"]
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "arn:aws:iam::842676018479:policy/DevOps-Junior-Policy"
resource "aws_iam_policy" "devops_junior_policy" {
  description = "Created By Kartik, Junior DevOps Engineer-dev account restricted access"
  name        = "DevOps-Junior-Policy"
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = ["ecs:Describe*", "ecs:List*", "ecs:Get*", "ecs:UpdateService", "ecs:UpdateCluster", "ecs:UpdateTaskSet", "ecs:RegisterTaskDefinition", "ecs:DeregisterTaskDefinition", "ecs:StartTask", "ecs:StopTask", "ecs:RunTask"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "ECSUpdateExisting"
      }, {
      Action   = ["ecr:GetAuthorizationToken", "ecr:BatchCheckLayerAvailability", "ecr:GetDownloadUrlForLayer", "ecr:BatchGetImage", "ecr:DescribeRepositories", "ecr:ListImages", "ecr:DescribeImages", "ecr:GetRepositoryPolicy", "ecr:InitiateLayerUpload", "ecr:UploadLayerPart", "ecr:CompleteLayerUpload", "ecr:PutImage"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "ECRPushPullExisting"
      }, {
      Action   = ["s3:GetObject", "s3:PutObject", "s3:DeleteObject", "s3:ListBucket", "s3:GetBucketLocation", "s3:GetBucketVersioning", "s3:ListAllMyBuckets"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "S3ReadWrite"
      }, {
      Action   = ["ec2:Describe*", "ec2:Get*", "ec2:List*", "ec2:StartInstances", "ec2:StopInstances", "ec2:RebootInstances"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "EC2StartStopReboot"
      }, {
      Action   = ["cloudwatch:Describe*", "cloudwatch:Get*", "cloudwatch:List*", "logs:Describe*", "logs:Get*", "logs:List*", "logs:FilterLogEvents", "logs:StartQuery", "logs:StopQuery", "logs:GetQueryResults"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "CloudWatchReadOnly"
      }, {
      Action   = ["cloudtrail:Describe*", "cloudtrail:Get*", "cloudtrail:List*", "cloudtrail:LookupEvents"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "CloudTrailReadOnly"
      }, {
      Action   = ["apprunner:DescribeService", "apprunner:ListServices", "apprunner:UpdateService", "apprunner:StartDeployment", "apprunner:PauseService", "apprunner:ResumeService"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "AppRunnerUpdateExisting"
      }, {
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret", "secretsmanager:ListSecrets", "secretsmanager:ListSecretVersionIds"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "SecretsManagerReadOnly"
      }, {
      Action   = ["ec2:DescribeVpcs", "ec2:DescribeSubnets", "ec2:DescribeSecurityGroups", "ec2:DescribeRouteTables", "ec2:DescribeInternetGateways", "ec2:DescribeNatGateways", "ec2:DescribeVpcPeeringConnections", "ec2:DescribeNetworkAcls", "ec2:DescribeNetworkInterfaces", "ec2:DescribeVpnGateways"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "VPCReadOnly"
      }, {
      Action   = ["route53:Get*", "route53:List*", "route53:TestDNSAnswer"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "Route53ReadOnly"
      }, {
      Action   = ["aws-portal:ViewBilling", "aws-portal:ViewUsage", "ce:GetCostAndUsage", "ce:GetCostForecast", "ce:GetDimensionValues", "ce:ListCostAllocationTags", "budgets:ViewBudget", "cur:DescribeReportDefinitions"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "BillingReadOnly"
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "sanvi_dev_aws"
resource "aws_iam_user" "sanvi_dev_aws" {
  force_destroy        = null
  name                 = "sanvi_dev_aws"
  path                 = "/"
  permissions_boundary = null
  tags                 = {}
  tags_all             = {}
}

# __generated__ by Terraform from "akhilesh_test"
resource "aws_iam_user" "akhilesh_test" {
  force_destroy        = null
  name                 = "akhilesh_test"
  path                 = "/"
  permissions_boundary = null
  tags                 = {}
  tags_all             = {}
}

# __generated__ by Terraform from "arn:aws:iam::842676018479:policy/terraform-runner-policy"
resource "aws_iam_policy" "terraform_runner_policy" {
  description = "Permissions for Terraform to manage all dbi360 resources"
  name        = "terraform-runner-policy"
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = ["s3:GetObject", "s3:PutObject", "s3:DeleteObject", "s3:ListBucket", "s3:GetBucketVersioning", "s3:GetEncryptionConfiguration"]
      Effect   = "Allow"
      Resource = ["arn:aws:s3:::dbi360-devtest-terraform-state", "arn:aws:s3:::dbi360-devtest-terraform-state/*"]
      Sid      = "TerraformStateBackend"
      }, {
      Action   = ["dynamodb:GetItem", "dynamodb:PutItem", "dynamodb:DeleteItem", "dynamodb:DescribeTable"]
      Effect   = "Allow"
      Resource = "arn:aws:dynamodb:us-east-2:842676018479:table/dbi360-devtest-terraform-locks"
      Sid      = "TerraformStateLocking"
      }, {
      Action   = ["rds:*", "dynamodb:*", "sns:*", "sqs:*", "kms:*", "ssm:GetParameter*", "ssm:DescribeParameters"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "MissingServicesForTerraform"
      }, {
      Action   = ["iam:CreateRole", "iam:DeleteRole", "iam:AttachRolePolicy", "iam:DetachRolePolicy", "iam:PutRolePolicy", "iam:DeleteRolePolicy", "iam:CreatePolicy", "iam:DeletePolicy", "iam:CreatePolicyVersion", "iam:DeletePolicyVersion", "iam:TagRole", "iam:UntagRole", "iam:UpdateRole", "iam:UpdateAssumeRolePolicy"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "IAMWriteForTerraformManagedRoles"
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "arn:aws:iam::842676018479:policy/ecs-access-policy"
resource "aws_iam_policy" "ecs_access_policy" {
  description = null
  name        = "ecs-access-policy"
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = ["ecs:DescribeServices", "ecs:DescribeClusters", "ecs:DescribeTaskDefinition", "ecs:RegisterTaskDefinition", "ecs:UpdateService", "ecs:ListServices"]
      Effect   = "Allow"
      Resource = "*"
      }, {
      Action   = ["elasticloadbalancing:DescribeLoadBalancers", "elasticloadbalancing:DescribeTargetGroups", "elasticloadbalancing:DescribeTargetHealth"]
      Effect   = "Allow"
      Resource = "*"
      }, {
      Action   = ["cloudwatch:PutDashboard", "cloudwatch:GetDashboard", "cloudwatch:ListDashboards"]
      Effect   = "Allow"
      Resource = "*"
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "Security-Scan"
resource "aws_iam_user" "security_scan" {
  force_destroy        = null
  name                 = "Security-Scan"
  path                 = "/"
  permissions_boundary = null
  tags = {
    AKIA4IM3HTUX5ZGTM5VS = "Braja"
    AKIA4IM3HTUXTHWAL7QZ = "Created for Testing And Devlopment- Braja -EKS"
    AKIA4IM3HTUXZAEBIZKQ = "Creted for security scan- Braja"
  }
  tags_all = {
    AKIA4IM3HTUX5ZGTM5VS = "Braja"
    AKIA4IM3HTUXTHWAL7QZ = "Created for Testing And Devlopment- Braja -EKS"
    AKIA4IM3HTUXZAEBIZKQ = "Creted for security scan- Braja"
  }
}

# __generated__ by Terraform from "arn:aws:iam::842676018479:policy/Security-san-monitoring-policy"
resource "aws_iam_policy" "security_san_monitoring_policy" {
  description = "Created By Braja For access the logs fron DSC Dashboard"
  name        = "Security-san-monitoring-policy"
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = ["sts:GetCallerIdentity", "sts:GetAccessKeyInfo", "sts:DecodeAuthorizationMessage"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "STSGetCallerIdentity"
      }, {
      Action   = ["ec2:Describe*", "ec2:Get*", "ec2:List*", "ec2:Search*"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "EC2FullReadAccess"
      }, {
      Action   = ["rds:Describe*", "rds:List*", "rds:Download*", "pi:Describe*", "pi:Get*", "pi:List*"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "RDSFullReadAccess"
      }, {
      Action   = ["s3:Get*", "s3:List*", "s3:Describe*"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "S3FullReadAccess"
      }, {
      Action   = ["cloudwatch:Describe*", "cloudwatch:Get*", "cloudwatch:List*", "logs:Describe*", "logs:Get*", "logs:List*", "logs:Filter*", "logs:Test*", "logs:StartQuery", "logs:StopQuery", "logs:CreateExportTask"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "CloudWatchFullReadAccess"
      }, {
      Action   = ["cloudtrail:Describe*", "cloudtrail:Get*", "cloudtrail:List*", "cloudtrail:LookupEvents"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "CloudTrailFullReadAccess"
      }, {
      Action   = ["lambda:Get*", "lambda:List*"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "LambdaFullReadAccess"
      }, {
      Action   = ["apprunner:Describe*", "apprunner:List*", "ecs:Describe*", "ecs:List*", "ecr:Describe*", "ecr:List*", "ecr:Get*", "ecr:BatchGet*"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "ApplicationServicesReadAccess"
      }, {
      Action   = ["elasticloadbalancing:Describe*", "route53:Get*", "route53:List*", "cloudfront:Get*", "cloudfront:List*", "apigateway:GET"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "NetworkingReadAccess"
      }, {
      Action   = ["iam:Get*", "iam:List*", "iam:Generate*", "kms:Describe*", "kms:Get*", "kms:List*", "secretsmanager:Describe*", "secretsmanager:List*", "ssm:Describe*", "ssm:Get*", "ssm:List*"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "SecurityAndComplianceReadAccess"
      }, {
      Action   = ["xray:Get*", "xray:BatchGet*", "health:DescribeEvents", "health:DescribeEventDetails", "health:DescribeAffectedEntities", "health:DescribeEventTypes", "health:DescribeEntityAggregates", "support:*", "trustedadvisor:Describe*"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "MonitoringAndObservabilityReadAccess"
      }, {
      Action   = ["dynamodb:Describe*", "dynamodb:List*", "dynamodb:Get*", "dynamodb:Query", "dynamodb:Scan", "elasticache:Describe*", "elasticache:List*", "redshift:Describe*", "redshift:List*"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "DatabaseServicesReadAccess"
      }, {
      Action   = ["elasticfilesystem:Describe*", "elasticfilesystem:List*", "fsx:Describe*", "fsx:List*", "backup:Describe*", "backup:Get*", "backup:List*"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "StorageServicesReadAccess"
      }, {
      Action   = ["autoscaling:Describe*", "application-autoscaling:Describe*", "resource-groups:Get*", "resource-groups:List*", "resource-groups:Search*", "tag:Get*", "tag:Describe*", "config:Describe*", "config:Get*", "config:List*"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "AutoScalingAndResourceManagement"
      }, {
      Action   = ["organizations:Describe*", "organizations:List*", "ce:Get*", "ce:List*", "ce:Describe*", "budgets:Describe*", "budgets:View*"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "AccountAndBillingReadAccess"
      }, {
      Action   = ["batch:Describe*", "batch:List*", "eks:Describe*", "eks:List*", "lightsail:Get*", "lightsail:Is*"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "AdditionalComputeServices"
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "arn:aws:iam::842676018479:policy/DevOps-Lead-Policy"
resource "aws_iam_policy" "devops_lead_policy" {
  description = "Created By Kartik, DevOps Lead full access including IAM, SSO and Identity Store dev account"
  name        = "DevOps-Lead-Policy"
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = ["ecs:*"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "ECSFullAccess"
      }, {
      Action   = ["ecr:*"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "ECRFullAccess"
      }, {
      Action   = ["s3:*"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "S3FullAccess"
      }, {
      Action   = ["ec2:*"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "EC2FullAccess"
      }, {
      Action   = ["cloudwatch:*", "logs:*", "xray:*", "events:*"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "CloudWatchFullAccess"
      }, {
      Action   = ["cloudtrail:*"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "CloudTrailFullAccess"
      }, {
      Action   = ["apprunner:*"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "AppRunnerFullAccess"
      }, {
      Action   = ["secretsmanager:*"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "SecretsManagerFullAccess"
      }, {
      Action   = ["ec2:*Vpc*", "ec2:*Subnet*", "ec2:*SecurityGroup*", "ec2:*RouteTable*", "ec2:*InternetGateway*", "ec2:*NatGateway*", "ec2:*NetworkAcl*", "ec2:*VpcEndpoint*", "ec2:DescribeAvailabilityZones"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "VPCFullAccess"
      }, {
      Action   = ["route53:*", "route53domains:*", "route53resolver:*"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "Route53FullAccess"
      }, {
      Action   = ["ce:GetCostAndUsage", "ce:GetCostForecast", "ce:GetDimensionValues", "budgets:ViewBudget", "billing:GetBillingData", "aws-portal:ViewBilling"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "BillingReadOnly"
      }, {
      Action   = ["iam:*"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "IAMFullAccess"
      }, {
      Action   = ["sso:*", "sso-directory:*"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "IAMIdentityCenterFullAccess"
      }, {
      Action   = ["identitystore:*"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "IdentityStoreFullAccess"
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "n8nTaskRole"
resource "aws_iam_role" "n8ntaskrole" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "ecs-tasks.amazonaws.com"
      }
      Sid = ""
    }]
    Version = "2012-10-17"
  })
  description           = "Task role for N8N ECS tasks"
  force_detach_policies = false
  max_session_duration  = 3600
  name                  = "n8nTaskRole"
  path                  = "/"
  permissions_boundary  = null
  tags                  = {}
  tags_all              = {}
}

# __generated__ by Terraform from "SecurityHubRemediationRole-Lambda"
resource "aws_iam_role" "securityhubremediationrole_lambda" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "lambda.amazonaws.com"
      }
    }]
    Version = "2012-10-17"
  })
  description           = "Allows Lambda functions to call AWS services on your behalf."
  force_detach_policies = false
  max_session_duration  = 3600
  name                  = "SecurityHubRemediationRole-Lambda"
  path                  = "/"
  permissions_boundary  = null
  tags                  = {}
  tags_all              = {}
}

# __generated__ by Terraform from "ExternalSecretsRole"
resource "aws_iam_role" "externalsecretsrole" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRoleWithWebIdentity"
      Condition = {
        StringEquals = {
          "oidc.eks.us-east-2.amazonaws.com/id/9D6D6D2C6DA9E5AC4AB1CA2894AD3A77:aud" = "sts.amazonaws.com"
          "oidc.eks.us-east-2.amazonaws.com/id/9D6D6D2C6DA9E5AC4AB1CA2894AD3A77:sub" = "system:serviceaccount:dev:external-secrets"
        }
      }
      Effect = "Allow"
      Principal = {
        Federated = "arn:aws:iam::842676018479:oidc-provider/oidc.eks.us-east-2.amazonaws.com/id/9D6D6D2C6DA9E5AC4AB1CA2894AD3A77"
      }
    }]
    Version = "2012-10-17"
  })
  description           = "IAM role for External Secrets Operator on EKS"
  force_detach_policies = false
  max_session_duration  = 3600
  name                  = "ExternalSecretsRole"
  path                  = "/"
  permissions_boundary  = null
  tags                  = {}
  tags_all              = {}
}

# __generated__ by Terraform from "asterdocs-apprunner-us-east-2-lambdaRole"
resource "aws_iam_role" "asterdocs_apprunner_us_east_2_lambdarole" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "lambda.amazonaws.com"
      }
    }]
    Version = "2012-10-17"
  })
  description           = null
  force_detach_policies = false
  max_session_duration  = 3600
  name                  = "asterdocs-apprunner-us-east-2-lambdaRole"
  path                  = "/"
  permissions_boundary  = null
  tags = {
    STAGE = "apprunner"
  }
  tags_all = {
    STAGE = "apprunner"
  }
}

# __generated__ by Terraform from "SecurityECSTaskExecutionRole"
resource "aws_iam_role" "securityecstaskexecutionrole" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "ecs-tasks.amazonaws.com"
      }
      Sid = ""
    }]
    Version = "2012-10-17"
  })
  description           = "Allows ECS tasks to call AWS services on your behalf."
  force_detach_policies = false
  max_session_duration  = 3600
  name                  = "SecurityECSTaskExecutionRole"
  path                  = "/"
  permissions_boundary  = null
  tags                  = {}
  tags_all              = {}
}

# __generated__ by Terraform from "arn:aws:iam::842676018479:policy/SecurityECSTaskPolicy"
resource "aws_iam_policy" "securityecstaskpolicy" {
  description = "Custom policy for Security ECS Task Role"
  name        = "SecurityECSTaskPolicy"
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = ["s3:GetObject", "s3:PutObject", "s3:DeleteObject"]
      Effect   = "Allow"
      Resource = "arn:aws:s3:::dietary-business-intelligence-security-packages-20250809/*"
      }, {
      Action   = ["s3:ListBucket"]
      Effect   = "Allow"
      Resource = "arn:aws:s3:::dietary-business-intelligence-security-packages-20250809"
      }, {
      Action   = ["logs:CreateLogGroup", "logs:CreateLogStream", "logs:PutLogEvents"]
      Effect   = "Allow"
      Resource = "*"
      }, {
      Action   = ["secretsmanager:GetSecretValue"]
      Effect   = "Allow"
      Resource = "arn:aws:secretsmanager:us-east-2:842676018479:secret:production/app-secrets-E5ndEI"
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "KyvernoECRRole"
resource "aws_iam_role" "kyvernoecrrole" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRoleWithWebIdentity"
      Condition = {
        StringEquals = {
          "oidc.eks.us-east-2.amazonaws.com/id/E89A3AB92AB23FD395B757C9758A1AEC:sub" = "system:serviceaccount:kyverno:kyverno-admission-controller"
        }
      }
      Effect = "Allow"
      Principal = {
        Federated = "arn:aws:iam::842676018479:oidc-provider/oidc.eks.us-east-2.amazonaws.com/id/E89A3AB92AB23FD395B757C9758A1AEC"
      }
    }]
    Version = "2012-10-17"
  })
  description           = "Created by Braja for KyvernoECR access"
  force_detach_policies = false
  max_session_duration  = 3600
  name                  = "KyvernoECRRole"
  path                  = "/"
  permissions_boundary  = null
  tags                  = {}
  tags_all              = {}
}

# __generated__ by Terraform from "AWS_InspectorEvents_Invoke_Assessment_Template"
resource "aws_iam_role" "aws_inspectorevents_invoke_assessment_template" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "events.amazonaws.com"
      }
    }]
    Version = "2008-10-17"
  })
  description           = "Role for scheduled Inspector assessment from Cloudwatch Events"
  force_detach_policies = false
  max_session_duration  = 3600
  name                  = "AWS_InspectorEvents_Invoke_Assessment_Template"
  path                  = "/"
  permissions_boundary  = null
  tags                  = {}
  tags_all              = {}
}

# __generated__ by Terraform from "arn:aws:iam::842676018479:policy/frontsite_sso_SSM_Parameteraccess"
resource "aws_iam_policy" "frontsite_sso_ssm_parameteraccess" {
  description = "Credetd by Braja"
  name        = "frontsite_sso_SSM_Parameteraccess"
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Effect   = "Allow"
      Resource = ["arn:aws:secretsmanager:us-east-2:842676018479:secret:*-backend-secrets*", "arn:aws:secretsmanager:us-east-2:842676018479:secret:*-frontend-secrets*", "arn:aws:secretsmanager:us-east-2:842676018479:secret:*-shared-secrets*", "arn:aws:secretsmanager:us-east-2:842676018479:secret:dbi360-all-secret-*", "arn:aws:secretsmanager:us-east-2:842676018479:secret:n8n/database/credentials-AEpEki-*", "arn:aws:secretsmanager:us-east-2:842676018479:secret:firebase-service-account-pG17R4", "arn:aws:secretsmanager:us-east-2:842676018479:secret:DEV_RDS_CREDENTIALS-OqPugZ", "arn:aws:secretsmanager:us-east-2:842676018479:secret:demo_secret_key-vIgfGl", "arn:aws:secretsmanager:us-east-2:842676018479:secret:firebase-service-account-HRMS-mT0pWu", "arn:aws:secretsmanager:us-east-2:842676018479:secret:gjca-ecommerce-backend-secrets-CmBAgY"]
      }, {
      Action = ["kms:Decrypt"]
      Condition = {
        StringEquals = {
          "kms:ViaService" = "secretsmanager.us-east-2.amazonaws.com"
        }
      }
      Effect   = "Allow"
      Resource = ["arn:aws:kms:us-east-2:842676018479:key/*"]
      }, {
      Action   = ["ec2:CreateNetworkInterface", "ec2:DescribeNetworkInterfaces", "ec2:DeleteNetworkInterface", "ec2:AssignPrivateIpAddresses", "ec2:UnassignPrivateIpAddresses"]
      Effect   = "Allow"
      Resource = "*"
      }, {
      Action   = ["s3:GetObject", "s3:PutObject", "s3:DeleteObject", "s3:ListBucket"]
      Effect   = "Allow"
      Resource = "*"
      }, {
      Action   = ["rds:DescribeDBInstances", "rds:DescribeDBClusters", "rds-db:connect"]
      Effect   = "Allow"
      Resource = "*"
      }, {
      Action   = ["logs:CreateLogGroup", "logs:CreateLogStream", "logs:PutLogEvents", "logs:DescribeLogGroups", "logs:DescribeLogStreams"]
      Effect   = "Allow"
      Resource = "*"
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "OffboardS3UploadRole"
resource "aws_iam_role" "offboards3uploadrole" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action    = ["sts:AssumeRole", "sts:TagSession"]
      Condition = {}
      Effect    = "Allow"
      Principal = {
        AWS = "arn:aws:iam::842676018479:role/OffboardCredBrokerExecutionRole"
      }
    }]
    Version = "2012-10-17"
  })
  description           = "Created For Upload Exit employees  Data to S3"
  force_detach_policies = false
  max_session_duration  = 3600
  name                  = "OffboardS3UploadRole"
  path                  = "/"
  permissions_boundary  = null
  tags                  = {}
  tags_all              = {}
}

# __generated__ by Terraform from "Braja-Secure-Env"
resource "aws_iam_user" "braja_secure_env" {
  force_destroy        = null
  name                 = "Braja-Secure-Env"
  path                 = "/"
  permissions_boundary = null
  tags = {
    AKIA4IM3HTUX4VVEDKWS = "Create for ECS"
    AKIA4IM3HTUXXSF6RZ2S = "Created by Braja For Test Devops - new CICD"
  }
  tags_all = {
    AKIA4IM3HTUX4VVEDKWS = "Create for ECS"
    AKIA4IM3HTUXXSF6RZ2S = "Created by Braja For Test Devops - new CICD"
  }
}

# __generated__ by Terraform from "arn:aws:iam::842676018479:policy/S3-Create-Delete-Update-Policy"
resource "aws_iam_policy" "s3_create_delete_update_policy" {
  description = "Created By Braja For S3-Create-Delete-Update-Policy"
  name        = "S3-Create-Delete-Update-Policy"
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = ["s3:GetObject", "s3:GetObjectAcl", "s3:GetObjectLegalHold", "s3:GetObjectRetention", "s3:GetObjectTagging", "s3:GetObjectVersion", "s3:GetObjectVersionAcl", "s3:GetObjectVersionTagging", "s3:ListBucket", "s3:ListBucketVersions", "s3:ListBucketMultipartUploads", "s3:ListMultipartUploadParts", "s3:GetBucketAcl", "s3:GetBucketCORS", "s3:GetBucketLocation", "s3:GetBucketLogging", "s3:GetBucketNotification", "s3:GetBucketPolicy", "s3:GetBucketPolicyStatus", "s3:GetBucketPublicAccessBlock", "s3:GetBucketRequestPayment", "s3:GetBucketTagging", "s3:GetBucketVersioning", "s3:GetBucketWebsite", "s3:GetReplicationConfiguration", "s3:GetAccelerateConfiguration", "s3:GetLifecycleConfiguration", "s3:ListAllMyBuckets", "s3:PutObject", "s3:PutObjectAcl", "s3:PutObjectLegalHold", "s3:PutObjectRetention", "s3:PutObjectTagging", "s3:PutObjectVersionAcl", "s3:PutObjectVersionTagging", "s3:PutBucketAcl", "s3:PutBucketCORS", "s3:PutBucketLogging", "s3:PutBucketNotification", "s3:PutBucketPolicy", "s3:PutBucketPublicAccessBlock", "s3:PutBucketRequestPayment", "s3:PutBucketTagging", "s3:PutBucketVersioning", "s3:PutBucketWebsite", "s3:PutReplicationConfiguration", "s3:PutAccelerateConfiguration", "s3:PutLifecycleConfiguration", "s3:CreateBucket", "s3:DeleteObject", "s3:DeleteObjectVersion", "s3:DeleteObjectTagging", "s3:DeleteObjectVersionTagging", "s3:DeleteBucket", "s3:DeleteBucketPolicy", "s3:DeleteBucketWebsite", "s3:AbortMultipartUpload", "s3:RestoreObject"]
      Effect   = "Allow"
      Resource = "*"
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "arn:aws:iam::842676018479:policy/S3ReadWriteRDSReadOnlyPolicy"
resource "aws_iam_policy" "s3readwriterdsreadonlypolicy" {
  description = "Created By Braja for S3 Read Write and RDS Read Only Policy"
  name        = "S3ReadWriteRDSReadOnlyPolicy"
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = ["s3:ListAllMyBuckets", "s3:GetBucketLocation"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "S3ListBuckets"
      }, {
      Action   = ["cloudfront:GetDistribution", "cloudfront:GetDistributionConfig", "cloudfront:ListDistributions", "cloudfront:ListDistributionsByWebACLId", "cloudfront:ListDistributionsByRealtimeLogConfig", "cloudfront:ListDistributionsByCachePolicyId", "cloudfront:ListDistributionsByOriginRequestPolicyId", "cloudfront:ListDistributionsByResponseHeadersPolicyId", "cloudfront:GetStreamingDistribution", "cloudfront:GetStreamingDistributionConfig", "cloudfront:ListStreamingDistributions", "cloudfront:GetInvalidation", "cloudfront:ListInvalidations", "cloudfront:GetOriginAccessControl", "cloudfront:GetOriginAccessControlConfig", "cloudfront:ListOriginAccessControls", "cloudfront:GetPublicKey", "cloudfront:GetPublicKeyConfig", "cloudfront:ListPublicKeys", "cloudfront:GetFieldLevelEncryption", "cloudfront:GetFieldLevelEncryptionConfig", "cloudfront:GetFieldLevelEncryptionProfile", "cloudfront:GetFieldLevelEncryptionProfileConfig", "cloudfront:ListFieldLevelEncryptionConfigs", "cloudfront:ListFieldLevelEncryptionProfiles", "cloudfront:GetCachePolicy", "cloudfront:ListCachePolicies", "cloudfront:GetOriginRequestPolicy", "cloudfront:ListOriginRequestPolicies", "cloudfront:GetResponseHeadersPolicy", "cloudfront:ListResponseHeadersPolicies", "cloudfront:GetFunction", "cloudfront:ListFunctions", "cloudfront:DescribeFunction", "cloudfront:GetRealtimeLogConfig", "cloudfront:ListRealtimeLogConfigs", "cloudfront:ListTagsForResource", "cloudfront:GetMonitoringSubscription", "cloudfront:CreateInvalidation"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "CloudFrontReadAccess"
      }, {
      Action   = ["logs:DescribeLogGroups", "logs:DescribeLogStreams", "logs:GetLogEvents", "logs:FilterLogEvents"]
      Effect   = "Allow"
      Resource = "arn:aws:logs:*:*:log-group:/aws/cloudfront/*"
      Sid      = "CloudFrontLogsAccess"
      }, {
      Action   = ["kms:Decrypt", "kms:DescribeKey", "kms:GenerateDataKey"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "KMSAccessForS3Objects"
      }, {
      Action   = ["s3:ListBucket", "s3:GetBucketAcl", "s3:GetBucketCORS", "s3:GetBucketVersioning", "s3:GetBucketPolicy", "s3:GetBucketPolicyStatus", "s3:GetBucketTagging", "s3:GetBucketLogging", "s3:GetBucketNotification", "s3:GetBucketLocation", "s3:GetLifecycleConfiguration", "s3:GetReplicationConfiguration", "s3:GetEncryptionConfiguration", "s3:GetBucketObjectLockConfiguration", "s3:ListBucketVersions", "s3:ListBucketMultipartUploads", "s3:PutBucketTagging", "s3:PutBucketVersioning", "s3:PutBucketCORS", "s3:PutBucketPolicy", "s3:PutBucketNotification", "s3:PutLifecycleConfiguration", "s3:PutReplicationConfiguration", "s3:PutEncryptionConfiguration"]
      Effect   = "Allow"
      Resource = "arn:aws:s3:::*"
      Sid      = "S3BucketReadWriteAccess"
      }, {
      Action   = ["s3:GetObject", "s3:GetObjectAcl", "s3:GetObjectVersion", "s3:GetObjectVersionAcl", "s3:GetObjectTagging", "s3:GetObjectVersionTagging", "s3:GetObjectRetention", "s3:GetObjectLegalHold", "s3:GetObjectAttributes", "s3:PutObject", "s3:PutObjectAcl", "s3:PutObjectTagging", "s3:PutObjectVersionTagging", "s3:PutObjectRetention", "s3:PutObjectLegalHold", "s3:RestoreObject", "s3:AbortMultipartUpload", "s3:ListMultipartUploadParts"]
      Effect   = "Allow"
      Resource = "arn:aws:s3:::*/*"
      Sid      = "S3ObjectReadWriteAccess"
      }, {
      Action   = ["rds:DescribeDBInstances", "rds:DescribeDBClusters", "rds:DescribeDBClusterSnapshots", "rds:DescribeDBSnapshots", "rds:DescribeDBSecurityGroups", "rds:DescribeDBSubnetGroups", "rds:DescribeDBClusterParameterGroups", "rds:DescribeDBClusterParameters", "rds:DescribeDBParameterGroups", "rds:DescribeDBParameters", "rds:DescribeDBEngineVersions", "rds:DescribeEventCategories", "rds:DescribeEventSubscriptions", "rds:DescribeEvents", "rds:DescribeExportTasks", "rds:DescribeOptionGroups", "rds:DescribeOptionGroupOptions", "rds:DescribeOrderableDBInstanceOptions", "rds:DescribePendingMaintenanceActions", "rds:DescribeReservedDBInstances", "rds:DescribeReservedDBInstancesOfferings", "rds:DescribeValidDBInstanceModifications", "rds:DescribeDBProxies", "rds:DescribeDBProxyTargets", "rds:DescribeDBProxyTargetGroups", "rds:DescribeDBClusterEndpoints", "rds:DescribeDBClusterBacktracks", "rds:ListTagsForResource", "rds:DownloadDBLogFilePortion", "rds:DescribeDBLogFiles"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "RDSReadOnlyAccess"
      }, {
      Action   = ["pi:DescribeDimensionKeys", "pi:GetResourceMetrics", "pi:ListAvailableResourceDimensions", "pi:ListAvailableResourceMetrics"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "RDSPerformanceInsights"
      }, {
      Action = ["cloudwatch:GetMetricData", "cloudwatch:GetMetricStatistics", "cloudwatch:ListMetrics"]
      Condition = {
        StringEquals = {
          "cloudwatch:namespace" = "AWS/RDS"
        }
      }
      Effect   = "Allow"
      Resource = "*"
      Sid      = "CloudWatchForRDS"
      }, {
      Action   = ["ec2:DescribeAccountAttributes", "ec2:DescribeAvailabilityZones", "ec2:DescribeSecurityGroups", "ec2:DescribeSubnets", "ec2:DescribeVpcs"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "EC2ReadForRDS"
      }, {
      Action   = ["logs:DescribeLogStreams", "logs:GetLogEvents", "logs:FilterLogEvents"]
      Effect   = "Allow"
      Resource = "arn:aws:logs:*:*:log-group:/aws/rds/*"
      Sid      = "CloudWatchLogsForRDS"
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "arn:aws:iam::842676018479:policy/S3MediaBucketAccess"
resource "aws_iam_policy" "s3mediabucketaccess" {
  description = "It is created by Braja For testnig. it alredy add the main ymal with security scan"
  name        = "S3MediaBucketAccess"
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = ["s3:PutObject", "s3:GetObject", "s3:ListBucket"]
      Effect   = "Allow"
      Resource = ["arn:aws:s3:::ticketing-system-media", "arn:aws:s3:::ticketing-system-media/*"]
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "dms-vpc-role"
resource "aws_iam_role" "dms_vpc_role" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "dms.amazonaws.com"
      }
      Sid = ""
    }]
    Version = "2012-10-17"
  })
  description           = "Allows Database Migration Service to call AWS services on your behalf."
  force_detach_policies = false
  max_session_duration  = 3600
  name                  = "dms-vpc-role"
  path                  = "/"
  permissions_boundary  = null
  tags                  = {}
  tags_all              = {}
}

# __generated__ by Terraform from "S3-user"
resource "aws_iam_user" "s3_user" {
  force_destroy        = null
  name                 = "S3-user"
  path                 = "/"
  permissions_boundary = null
  tags = {
    AKIA4IM3HTUXYGE4U6HH = "s3-erp-demo-reader"
  }
  tags_all = {
    AKIA4IM3HTUXYGE4U6HH = "s3-erp-demo-reader"
  }
}

# __generated__ by Terraform from "arn:aws:iam::842676018479:policy/SECRET_MANAGER_ReadWriteOnlyPolicy"
resource "aws_iam_policy" "secret_manager_readwriteonlypolicy" {
  description = "Created for ecs developer to add edit secrets by Arta"
  name        = "SECRET_MANAGER_ReadWriteOnlyPolicy"
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = ["secretsmanager:GetRandomPassword", "secretsmanager:GetResourcePolicy", "secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret", "secretsmanager:RestoreSecret", "secretsmanager:PutSecretValue", "secretsmanager:ListSecretVersionIds", "secretsmanager:ListSecrets", "secretsmanager:UpdateSecret"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "VisualEditor0"
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "arn:aws:iam::842676018479:policy/EC2workflowGitHubActionsReadSecrets"
resource "aws_iam_policy" "ec2workflowgithubactionsreadsecrets" {
  description = "Creted By braja For Debendra project widget and Socket"
  name        = "EC2workflowGitHubActionsReadSecrets"
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
      Effect   = "Allow"
      Resource = ["arn:aws:secretsmanager:us-east-2:842676018479:secret:dbi-chat-widget*", "arn:aws:secretsmanager:us-east-2:842676018479:secret:dbi-websocket*"]
      Sid      = "AllowReadSpecificSecrets"
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "Binayak_dev_aws"
resource "aws_iam_user" "binayak_dev_aws" {
  force_destroy        = null
  name                 = "Binayak_dev_aws"
  path                 = "/"
  permissions_boundary = null
  tags                 = {}
  tags_all             = {}
}

# __generated__ by Terraform from "arn:aws:iam::842676018479:policy/AWSLoadBalancerControllerIAMPolicy"
resource "aws_iam_policy" "awsloadbalancercontrolleriampolicy" {
  description = "IAM policy for AWS Load Balancer Controller on EKS-Created by Braja For EKS loadbalance"
  name        = "AWSLoadBalancerControllerIAMPolicy"
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action = ["iam:CreateServiceLinkedRole"]
      Condition = {
        StringEquals = {
          "iam:AWSServiceName" = "elasticloadbalancing.amazonaws.com"
        }
      }
      Effect   = "Allow"
      Resource = "*"
      }, {
      Action   = ["ec2:DescribeAccountAttributes", "ec2:DescribeAddresses", "ec2:DescribeAvailabilityZones", "ec2:DescribeInternetGateways", "ec2:DescribeVpcs", "ec2:DescribeVpcPeeringConnections", "ec2:DescribeSubnets", "ec2:DescribeSecurityGroups", "ec2:DescribeInstances", "ec2:DescribeNetworkInterfaces", "ec2:DescribeTags", "ec2:GetCoipPoolUsage", "ec2:DescribeCoipPools", "ec2:GetSecurityGroupsForVpc", "ec2:DescribeIpamPools", "ec2:DescribeRouteTables", "elasticloadbalancing:DescribeLoadBalancers", "elasticloadbalancing:DescribeLoadBalancerAttributes", "elasticloadbalancing:DescribeListeners", "elasticloadbalancing:DescribeListenerCertificates", "elasticloadbalancing:DescribeSSLPolicies", "elasticloadbalancing:DescribeRules", "elasticloadbalancing:DescribeTargetGroups", "elasticloadbalancing:DescribeTargetGroupAttributes", "elasticloadbalancing:DescribeTargetHealth", "elasticloadbalancing:DescribeTags", "elasticloadbalancing:DescribeTrustStores", "elasticloadbalancing:DescribeListenerAttributes", "elasticloadbalancing:DescribeCapacityReservation"]
      Effect   = "Allow"
      Resource = "*"
      }, {
      Action   = ["cognito-idp:DescribeUserPoolClient", "acm:ListCertificates", "acm:DescribeCertificate", "iam:ListServerCertificates", "iam:GetServerCertificate", "waf-regional:GetWebACL", "waf-regional:GetWebACLForResource", "waf-regional:AssociateWebACL", "waf-regional:DisassociateWebACL", "wafv2:GetWebACL", "wafv2:GetWebACLForResource", "wafv2:AssociateWebACL", "wafv2:DisassociateWebACL", "shield:GetSubscriptionState", "shield:DescribeProtection", "shield:CreateProtection", "shield:DeleteProtection"]
      Effect   = "Allow"
      Resource = "*"
      }, {
      Action   = ["ec2:AuthorizeSecurityGroupIngress", "ec2:RevokeSecurityGroupIngress"]
      Effect   = "Allow"
      Resource = "*"
      }, {
      Action   = ["ec2:CreateSecurityGroup"]
      Effect   = "Allow"
      Resource = "*"
      }, {
      Action = ["ec2:CreateTags"]
      Condition = {
        Null = {
          "aws:RequestTag/elbv2.k8s.aws/cluster" = "false"
        }
        StringEquals = {
          "ec2:CreateAction" = "CreateSecurityGroup"
        }
      }
      Effect   = "Allow"
      Resource = "arn:aws:ec2:*:*:security-group/*"
      }, {
      Action = ["ec2:CreateTags", "ec2:DeleteTags"]
      Condition = {
        Null = {
          "aws:RequestTag/elbv2.k8s.aws/cluster"  = "true"
          "aws:ResourceTag/elbv2.k8s.aws/cluster" = "false"
        }
      }
      Effect   = "Allow"
      Resource = "arn:aws:ec2:*:*:security-group/*"
      }, {
      Action = ["ec2:AuthorizeSecurityGroupIngress", "ec2:RevokeSecurityGroupIngress", "ec2:DeleteSecurityGroup"]
      Condition = {
        Null = {
          "aws:ResourceTag/elbv2.k8s.aws/cluster" = "false"
        }
      }
      Effect   = "Allow"
      Resource = "*"
      }, {
      Action = ["elasticloadbalancing:CreateLoadBalancer", "elasticloadbalancing:CreateTargetGroup"]
      Condition = {
        Null = {
          "aws:RequestTag/elbv2.k8s.aws/cluster" = "false"
        }
      }
      Effect   = "Allow"
      Resource = "*"
      }, {
      Action   = ["elasticloadbalancing:CreateListener", "elasticloadbalancing:DeleteListener", "elasticloadbalancing:CreateRule", "elasticloadbalancing:DeleteRule"]
      Effect   = "Allow"
      Resource = "*"
      }, {
      Action = ["elasticloadbalancing:AddTags", "elasticloadbalancing:RemoveTags"]
      Condition = {
        Null = {
          "aws:RequestTag/elbv2.k8s.aws/cluster"  = "true"
          "aws:ResourceTag/elbv2.k8s.aws/cluster" = "false"
        }
      }
      Effect   = "Allow"
      Resource = ["arn:aws:elasticloadbalancing:*:*:targetgroup/*/*", "arn:aws:elasticloadbalancing:*:*:loadbalancer/net/*/*", "arn:aws:elasticloadbalancing:*:*:loadbalancer/app/*/*"]
      }, {
      Action   = ["elasticloadbalancing:AddTags", "elasticloadbalancing:RemoveTags"]
      Effect   = "Allow"
      Resource = ["arn:aws:elasticloadbalancing:*:*:listener/net/*/*/*", "arn:aws:elasticloadbalancing:*:*:listener/app/*/*/*", "arn:aws:elasticloadbalancing:*:*:listener-rule/net/*/*/*", "arn:aws:elasticloadbalancing:*:*:listener-rule/app/*/*/*"]
      }, {
      Action = ["elasticloadbalancing:ModifyLoadBalancerAttributes", "elasticloadbalancing:SetIpAddressType", "elasticloadbalancing:SetSecurityGroups", "elasticloadbalancing:SetSubnets", "elasticloadbalancing:DeleteLoadBalancer", "elasticloadbalancing:ModifyTargetGroup", "elasticloadbalancing:ModifyTargetGroupAttributes", "elasticloadbalancing:DeleteTargetGroup", "elasticloadbalancing:ModifyListenerAttributes", "elasticloadbalancing:ModifyCapacityReservation", "elasticloadbalancing:ModifyIpPools"]
      Condition = {
        Null = {
          "aws:ResourceTag/elbv2.k8s.aws/cluster" = "false"
        }
      }
      Effect   = "Allow"
      Resource = "*"
      }, {
      Action = ["elasticloadbalancing:AddTags"]
      Condition = {
        Null = {
          "aws:RequestTag/elbv2.k8s.aws/cluster" = "false"
        }
        StringEquals = {
          "elasticloadbalancing:CreateAction" = ["CreateTargetGroup", "CreateLoadBalancer"]
        }
      }
      Effect   = "Allow"
      Resource = ["arn:aws:elasticloadbalancing:*:*:targetgroup/*/*", "arn:aws:elasticloadbalancing:*:*:loadbalancer/net/*/*", "arn:aws:elasticloadbalancing:*:*:loadbalancer/app/*/*"]
      }, {
      Action   = ["elasticloadbalancing:RegisterTargets", "elasticloadbalancing:DeregisterTargets"]
      Effect   = "Allow"
      Resource = "arn:aws:elasticloadbalancing:*:*:targetgroup/*/*"
      }, {
      Action   = ["elasticloadbalancing:SetWebAcl", "elasticloadbalancing:ModifyListener", "elasticloadbalancing:AddListenerCertificates", "elasticloadbalancing:RemoveListenerCertificates", "elasticloadbalancing:ModifyRule", "elasticloadbalancing:SetRulePriorities"]
      Effect   = "Allow"
      Resource = "*"
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "arn:aws:iam::842676018479:policy/apprunner_log_watch"
resource "aws_iam_policy" "apprunner_log_watch" {
  description = "watch apprunner log"
  name        = "apprunner_log_watch"
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = ["logs:GetDataProtectionPolicy", "logs:GetLogRecord", "logs:DescribeSubscriptionFilters", "logs:StartQuery", "logs:DescribeMetricFilters", "logs:GetTransformer", "logs:GetDeliveryDestination", "logs:ListLogDeliveries", "cloudwatch:ListServices", "cloudwatch:GetService", "cloudwatch:DescribeAlarmsForMetric", "cloudwatch:ListDashboards", "cloudwatch:ListTagsForResource", "logs:GetLogEvents", "cloudwatch:ListEntitiesForMetric", "logs:FilterLogEvents", "logs:DescribeDestinations", "cloudwatch:DescribeInsightRules", "logs:GetDelivery", "cloudwatch:GetDashboard", "cloudwatch:GetInsightRuleReport", "logs:Unmask", "logs:GetIntegration", "logs:DescribeDeliverySources", "logs:StopQuery", "cloudwatch:GetMetricStatistics", "cloudwatch:GetTopologyDiscoveryStatus", "logs:ListTagsForResource", "logs:DescribeExportTasks", "logs:GetDeliverySource", "logs:GetQueryResults", "logs:ListLogGroupsForQuery", "cloudwatch:DescribeAlarms", "cloudwatch:GetMetricStream", "logs:DescribeDeliveries", "logs:ListEntitiesForLogGroup", "logs:ListAnomalies", "logs:ListTagsLogGroup", "cloudwatch:GenerateQuery", "cloudwatch:GetMetricData", "logs:DescribeLogStreams", "logs:DescribeIndexPolicies", "logs:GetLogDelivery", "cloudwatch:GetTopologyMap", "cloudwatch:ListMetrics", "cloudwatch:GetServiceData", "cloudwatch:DescribeAnomalyDetectors", "cloudwatch:DescribeAlarmHistory", "logs:StartLiveTail", "logs:StopLiveTail", "logs:DescribeQueryDefinitions", "logs:DescribeResourcePolicies", "cloudwatch:GetMetricWidgetImage", "logs:DescribeQueries", "cloudwatch:BatchGetServiceLevelIndicatorReport", "cloudwatch:BatchGetServiceLevelObjectiveBudgetReport", "logs:DescribeLogGroups", "logs:ListLogGroupsForEntity", "logs:ListLogAnomalyDetectors", "logs:ListIntegrations", "logs:DescribeAccountPolicies", "logs:GetDeliveryDestinationPolicy", "logs:TestMetricFilter", "logs:GetLogAnomalyDetector", "cloudwatch:ListManagedInsightRules", "logs:DescribeFieldIndexes", "logs:DescribeDeliveryDestinations", "cloudwatch:ListServiceLevelObjectives", "logs:DescribeConfigurationTemplates", "logs:TestTransformer", "cloudwatch:ListMetricStreams", "cloudwatch:GetServiceLevelObjective", "logs:GetLogGroupFields"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "VisualEditor0"
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "GitHubRunnerRole"
resource "aws_iam_role" "githubrunnerrole" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "ec2.amazonaws.com"
      }
    }]
    Version = "2012-10-17"
  })
  description           = "Created by braja Allows EC2 instances to call AWS services on your behalf."
  force_detach_policies = false
  max_session_duration  = 3600
  name                  = "GitHubRunnerRole"
  path                  = "/"
  permissions_boundary  = null
  tags                  = {}
  tags_all              = {}
}

# __generated__ by Terraform from "arn:aws:iam::842676018479:policy/ecr_package_read"
resource "aws_iam_policy" "ecr_package_read" {
  description = "To read all the packages and versions"
  name        = "ecr_package_read"
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = ["ecr:GetDownloadUrlForLayer", "ecr:BatchGetImage", "ecr:DescribeImages"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "VisualEditor0"
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "amazon-sp-api-user"
resource "aws_iam_user" "amazon_sp_api_user" {
  force_destroy        = null
  name                 = "amazon-sp-api-user"
  path                 = "/"
  permissions_boundary = null
  tags                 = {}
  tags_all             = {}
}

# __generated__ by Terraform from "arn:aws:iam::842676018479:policy/ClickHouseS3AccessPolicy"
resource "aws_iam_policy" "clickhouses3accesspolicy" {
  description = "Created By Braja"
  name        = "ClickHouseS3AccessPolicy"
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = ["s3:GetObject", "s3:PutObject", "s3:DeleteObject", "s3:ListBucket", "s3:GetBucketLocation", "s3:ListMultipartUploadParts", "s3:AbortMultipartUpload"]
      Effect   = "Allow"
      Resource = ["arn:aws:s3:::clickhouse-test-dbi360", "arn:aws:s3:::clickhouse-test-dbi360/*"]
      Sid      = "Statement1"
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "EC2-CloudWatch-Agent-Role"
resource "aws_iam_instance_profile" "ec2_cloudwatch_agent_role" {
  name     = "EC2-CloudWatch-Agent-Role"
  path     = "/"
  role     = "EC2-CloudWatch-Agent-Role"
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "arn:aws:iam::842676018479:policy/N8NSecretsManagerPolicy"
resource "aws_iam_policy" "n8nsecretsmanagerpolicy" {
  description = "Allows N8N to read secrets from Secrets Manager- created by Braja"
  name        = "N8NSecretsManagerPolicy"
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = ["secretsmanager:GetSecretValue"]
      Effect   = "Allow"
      Resource = "arn:aws:secretsmanager:*:*:secret:n8n/*"
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "s3-aster"
resource "aws_iam_user" "s3_aster" {
  force_destroy        = null
  name                 = "s3-aster"
  path                 = "/"
  permissions_boundary = null
  tags                 = {}
  tags_all             = {}
}

# __generated__ by Terraform from "nextgen_s3"
resource "aws_iam_user" "nextgen_s3" {
  force_destroy        = null
  name                 = "nextgen_s3"
  path                 = "/"
  permissions_boundary = null
  tags                 = {}
  tags_all             = {}
}

# __generated__ by Terraform from "ExternalSecretsRole-dev"
resource "aws_iam_role" "externalsecretsrole_dev" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRoleWithWebIdentity"
      Condition = {
        StringEquals = {
          "oidc.eks.us-east-2.amazonaws.com/id/E89A3AB92AB23FD395B757C9758A1AEC:aud" = "sts.amazonaws.com"
          "oidc.eks.us-east-2.amazonaws.com/id/E89A3AB92AB23FD395B757C9758A1AEC:sub" = "system:serviceaccount:external-secrets:external-secrets"
        }
      }
      Effect = "Allow"
      Principal = {
        Federated = "arn:aws:iam::842676018479:oidc-provider/oidc.eks.us-east-2.amazonaws.com/id/E89A3AB92AB23FD395B757C9758A1AEC"
      }
    }]
    Version = "2012-10-17"
  })
  description           = "Create By Braja For Access Secure secreate manager"
  force_detach_policies = false
  max_session_duration  = 3600
  name                  = "ExternalSecretsRole-dev"
  path                  = "/"
  permissions_boundary  = null
  tags                  = {}
  tags_all              = {}
}

# __generated__ by Terraform from "rds-monitoring-role"
resource "aws_iam_role" "rds_monitoring_role" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "monitoring.rds.amazonaws.com"
      }
      Sid = ""
    }]
    Version = "2012-10-17"
  })
  description           = null
  force_detach_policies = false
  max_session_duration  = 3600
  name                  = "rds-monitoring-role"
  path                  = "/"
  permissions_boundary  = null
  tags                  = {}
  tags_all              = {}
}

# __generated__ by Terraform from "EC2ECRAccessRole"
resource "aws_iam_instance_profile" "ec2ecraccessrole" {
  name     = "EC2ECRAccessRole"
  path     = "/"
  role     = "EC2ECRAccessRole"
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "EC2ECRAccessRole"
resource "aws_iam_role" "ec2ecraccessrole" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "ec2.amazonaws.com"
      }
    }]
    Version = "2012-10-17"
  })
  description           = "Allows EC2 instances to call AWS services on your behalf- Created by Braja for widget-chat-and-socket-debendra"
  force_detach_policies = false
  max_session_duration  = 3600
  name                  = "EC2ECRAccessRole"
  path                  = "/"
  permissions_boundary  = null
  tags                  = {}
  tags_all              = {}
}

# __generated__ by Terraform from "SecurityECSTaskRole"
resource "aws_iam_role" "securityecstaskrole" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "ecs-tasks.amazonaws.com"
      }
      Sid = ""
    }]
    Version = "2012-10-17"
  })
  description           = "Allows ECS tasks to call AWS services on your behalf."
  force_detach_policies = false
  max_session_duration  = 3600
  name                  = "SecurityECSTaskRole"
  path                  = "/"
  permissions_boundary  = null
  tags                  = {}
  tags_all              = {}
}

# __generated__ by Terraform from "APP_RUNNER_S3_RDS_READ_ROLE"
resource "aws_iam_role" "app_runner_s3_rds_read_role" {
  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "tasks.apprunner.amazonaws.com"
      }
    }]
    Version = "2012-10-17"
  })
  description           = "this role enables products to read rds credentials and has s3 read write access"
  force_detach_policies = false
  max_session_duration  = 3600
  name                  = "APP_RUNNER_S3_RDS_READ_ROLE"
  path                  = "/"
  permissions_boundary  = null
  tags                  = {}
  tags_all              = {}
}

# __generated__ by Terraform from "arn:aws:iam::842676018479:policy/LambdaReadWriteWithoutDelete"
resource "aws_iam_policy" "lambdareadwritewithoutdelete" {
  description = "Created BY Kartik For Full Lambda Read and write access without delete access"
  name        = "LambdaReadWriteWithoutDelete"
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = ["lambda:GetFunction", "lambda:GetFunctionConfiguration", "lambda:GetFunctionCodeSigningConfig", "lambda:GetFunctionConcurrency", "lambda:GetFunctionEventInvokeConfig", "lambda:GetFunctionUrlConfig", "lambda:GetPolicy", "lambda:GetAlias", "lambda:GetAccountSettings", "lambda:GetEventSourceMapping", "lambda:GetLayerVersion", "lambda:GetLayerVersionPolicy", "lambda:GetProvisionedConcurrencyConfig", "lambda:GetRuntimeManagementConfig", "lambda:ListFunctions", "lambda:ListAliases", "lambda:ListEventSourceMappings", "lambda:ListFunctionEventInvokeConfigs", "lambda:ListFunctionUrlConfigs", "lambda:ListFunctionsByCodeSigningConfig", "lambda:ListLayers", "lambda:ListLayerVersions", "lambda:ListProvisionedConcurrencyConfigs", "lambda:ListTags", "lambda:ListVersionsByFunction"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "LambdaReadAccess"
      }, {
      Action   = ["lambda:CreateFunction", "lambda:CreateAlias", "lambda:CreateEventSourceMapping", "lambda:CreateFunctionUrlConfig", "lambda:UpdateFunctionCode", "lambda:UpdateFunctionConfiguration", "lambda:UpdateAlias", "lambda:UpdateEventSourceMapping", "lambda:UpdateFunctionEventInvokeConfig", "lambda:UpdateFunctionUrlConfig", "lambda:PublishVersion", "lambda:PublishLayerVersion", "lambda:PutFunctionCodeSigningConfig", "lambda:PutFunctionConcurrency", "lambda:PutFunctionEventInvokeConfig", "lambda:PutProvisionedConcurrencyConfig", "lambda:PutRuntimeManagementConfig", "lambda:TagResource", "lambda:UntagResource", "lambda:InvokeFunction", "lambda:InvokeFunctionUrl", "lambda:InvokeAsync"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "LambdaWriteAccess"
      }, {
      Action   = ["logs:DescribeLogGroups", "logs:DescribeLogStreams", "logs:GetLogEvents", "logs:FilterLogEvents"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "CloudWatchLogsReadAccess"
      }, {
      Action   = ["cloudwatch:GetMetricData", "cloudwatch:GetMetricStatistics", "cloudwatch:ListMetrics", "cloudwatch:DescribeAlarms", "cloudwatch:DescribeAlarmsForMetric"]
      Effect   = "Allow"
      Resource = "*"
      Sid      = "CloudWatchMetricsAccess"
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}

# __generated__ by Terraform from "arn:aws:iam::842676018479:policy/eks-list-read-write"
resource "aws_iam_policy" "eks_list_read_write" {
  description = "Created By Braja"
  name        = "eks-list-read-write"
  path        = "/"
  policy = jsonencode({
    Statement = [{
      Action   = ["eks:DescribeCluster", "eks:ListClusters", "eks:AccessKubernetesApi"]
      Effect   = "Allow"
      Resource = "*"
      }, {
      Action   = ["ec2:DescribeSecurityGroups", "ec2:DescribeSubnets", "ec2:DescribeVpcs"]
      Effect   = "Allow"
      Resource = "*"
      }, {
      Action   = ["sts:AssumeRole"]
      Effect   = "Allow"
      Resource = "arn:aws:iam::842676018479:role/eks-service-role"
    }]
    Version = "2012-10-17"
  })
  tags     = {}
  tags_all = {}
}
