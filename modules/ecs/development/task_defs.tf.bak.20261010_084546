# Latest revision per family

resource "aws_ecs_task_definition" "development_ai_chatbot_website_r17" {
  family                   = "development-ai-chatbot-website"
  network_mode             = "awsvpc"
  cpu                      = "1024"
  memory                   = "2048"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "ai-chatbot-website",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/ai-chatbot-website:sha-efae00d-37613032611",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "ai-chatbot-website",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "DB_NAME",
        "value": "aichatbot_cms"
      }
    ],
    "secrets": [
      {
        "name": "DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:host::"
      },
      {
        "name": "DB_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:port::"
      },
      {
        "name": "DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:username::"
      },
      {
        "name": "DB_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:password::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-ai-chatbot-website",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "ai-chatbot-website"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_all_email_receive_webhook_r6" {
  family                   = "development-all-email-receive-webhook"
  network_mode             = "awsvpc"
  cpu                      = "1024"
  memory                   = "2048"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "all-email-receive-webhook",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/all-email-receive-webhook:sha-dce4c62",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "all-email-receive-webhook",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "NODE_ENV",
        "value": "development"
      }
    ],
    "secrets": [
      {
        "name": "PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/all-email-receive-webhook/config-aCE1oW:PORT::"
      },
      {
        "name": "CLIENT_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/all-email-receive-webhook/config-aCE1oW:CLIENT_ID::"
      },
      {
        "name": "CLIENT_SECRET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/all-email-receive-webhook/config-aCE1oW:CLIENT_SECRET::"
      },
      {
        "name": "TENANT_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/all-email-receive-webhook/config-aCE1oW:TENANT_ID::"
      },
      {
        "name": "MONGODB_URI",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/all-email-receive-webhook/config-aCE1oW:MONGODB_URI::"
      },
      {
        "name": "MONGODB_DB_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/all-email-receive-webhook/config-aCE1oW:MONGODB_DB_NAME::"
      },
      {
        "name": "MONGODB_COLLECTION_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/all-email-receive-webhook/config-aCE1oW:MONGODB_COLLECTION_NAME::"
      },
      {
        "name": "NDN_WEBHOOK_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/all-email-receive-webhook/config-aCE1oW:NDN_WEBHOOK_URL::"
      },
      {
        "name": "PENDING_FORWARD_DELAY_MS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/all-email-receive-webhook/config-aCE1oW:PENDING_FORWARD_DELAY_MS::"
      },
      {
        "name": "TOKEN_EXPIRY_BUFFER_MS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/all-email-receive-webhook/config-aCE1oW:TOKEN_EXPIRY_BUFFER_MS::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-all-email-receive-webhook",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "all-email-receive-webhook"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_aster_demo_r1" {
  family                   = "development-aster-demo"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "aster-demo",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/aster-demo:latest",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp"
      }
    ],
    "secrets": [
      {
        "name": "AI_COA_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-demo/config-IGmW92:AI_COA_URL::"
      },
      {
        "name": "AWS_ACCESS_REF",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-demo/config-IGmW92:AWS_ACCESS_REF::"
      },
      {
        "name": "AWS_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-demo/config-IGmW92:AWS_KEY::"
      },
      {
        "name": "AWS_S3_BUCKET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-demo/config-IGmW92:AWS_S3_BUCKET::"
      },
      {
        "name": "AWS_S3_REGION",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-demo/config-IGmW92:AWS_S3_REGION::"
      },
      {
        "name": "COA_UNAPPROVE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-demo/config-IGmW92:COA_UNAPPROVE_URL::"
      },
      {
        "name": "DASHBOARD_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-demo/config-IGmW92:DASHBOARD_API::"
      },
      {
        "name": "ENTITY_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-demo/config-IGmW92:ENTITY_URL::"
      },
      {
        "name": "FIREBASE_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-demo/config-IGmW92:FIREBASE_API::"
      },
      {
        "name": "FIREBASE_VAPID_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-demo/config-IGmW92:FIREBASE_VAPID_KEY::"
      },
      {
        "name": "GLOBAL_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-demo/config-IGmW92:GLOBAL_API::"
      },
      {
        "name": "GOOGLE_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-demo/config-IGmW92:GOOGLE_API_KEY::"
      },
      {
        "name": "KPI_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-demo/config-IGmW92:KPI_API_URL::"
      },
      {
        "name": "KPI_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-demo/config-IGmW92:KPI_URL::"
      },
      {
        "name": "MICROSOFT_CLIENT_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-demo/config-IGmW92:MICROSOFT_CLIENT_ID::"
      },
      {
        "name": "MICROSOFT_CLIENT_SECRETE_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-demo/config-IGmW92:MICROSOFT_CLIENT_SECRETE_ID::"
      },
      {
        "name": "MICROSOFT_TENNAT_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-demo/config-IGmW92:MICROSOFT_TENNAT_ID::"
      },
      {
        "name": "X_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-demo/config-IGmW92:X_API_KEY::"
      },
      {
        "name": "assets_path",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-demo/config-IGmW92:assets_path::"
      },
      {
        "name": "cookie_domain",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-demo/config-IGmW92:cookie_domain::"
      },
      {
        "name": "country_api",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-demo/config-IGmW92:country_api::"
      },
      {
        "name": "db_database",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-demo/config-IGmW92:db_database::"
      },
      {
        "name": "db_hostname",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-demo/config-IGmW92:db_hostname::"
      },
      {
        "name": "db_password",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-demo/config-IGmW92:db_password::"
      },
      {
        "name": "db_username",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-demo/config-IGmW92:db_username::"
      },
      {
        "name": "development_url",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-demo/config-IGmW92:development_url::"
      },
      {
        "name": "encryption_key",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-demo/config-IGmW92:encryption_key::"
      },
      {
        "name": "global_api",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-demo/config-IGmW92:global_api::"
      },
      {
        "name": "isLocal",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-demo/config-IGmW92:isLocal::"
      },
      {
        "name": "js_path",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-demo/config-IGmW92:js_path::"
      },
      {
        "name": "log_date_format",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-demo/config-IGmW92:log_date_format::"
      },
      {
        "name": "nexus_api",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-demo/config-IGmW92:nexus_api::"
      },
      {
        "name": "session_path",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-demo/config-IGmW92:session_path::"
      },
      {
        "name": "sso_domain",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-demo/config-IGmW92:sso_domain::"
      },
      {
        "name": "sso_url",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-demo/config-IGmW92:sso_url::"
      },
      {
        "name": "stripe_api_key",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-demo/config-IGmW92:stripe_api_key::"
      },
      {
        "name": "stripe_cancel_url",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-demo/config-IGmW92:stripe_cancel_url::"
      },
      {
        "name": "stripe_currency",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-demo/config-IGmW92:stripe_currency::"
      },
      {
        "name": "stripe_publishable_key",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-demo/config-IGmW92:stripe_publishable_key::"
      },
      {
        "name": "stripe_success_url",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-demo/config-IGmW92:stripe_success_url::"
      },
      {
        "name": "stripe_webhook_key",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-demo/config-IGmW92:stripe_webhook_key::"
      },
      {
        "name": "tinyMCE_api",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-demo/config-IGmW92:tinyMCE_api::"
      },
      {
        "name": "token",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-demo/config-IGmW92:token::"
      },
      {
        "name": "upload_path",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-demo/config-IGmW92:upload_path::"
      },
      {
        "name": "url",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-demo/config-IGmW92:url::"
      },
      {
        "name": "wesocket_url",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-demo/config-IGmW92:wesocket_url::"
      },
      {
        "name": "zip_api_key",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-demo/config-IGmW92:zip_api_key::"
      },
      {
        "name": "zip_api_url",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-demo/config-IGmW92:zip_api_url::"
      },
      {
        "name": "zip_path",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-demo/config-IGmW92:zip_path::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-aster-demo",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "ecs"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_aster_landing_r20" {
  family                   = "development-aster-landing"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "aster-landing",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/aster-landing:sha-7684766",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "aster-landing",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "development"
      }
    ],
    "secrets": [
      {
        "name": "MYSQL_DB",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-landing/config-Q7CDqL:MYSQL_DB::"
      },
      {
        "name": "DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:host::"
      },
      {
        "name": "DB_PASS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:password::"
      },
      {
        "name": "DB_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:port::"
      },
      {
        "name": "DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:username::"
      },
      {
        "name": "VITE_WEBHOOK_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-landing/config-Q7CDqL:VITE_WEBHOOK_URL::"
      },
      {
        "name": "BLOG_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-landing/config-Q7CDqL:BLOG_API_KEY::"
      },
      {
        "name": "BLOG_LIST_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-landing/config-Q7CDqL:BLOG_LIST_URL::"
      },
      {
        "name": "BLOG_DETAIL_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-landing/config-Q7CDqL:BLOG_DETAIL_URL::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-aster-landing",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "aster-landing"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_aster_node_r389" {
  family                   = "development-aster-node"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "aster-node",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/aster-node@sha256:8574f160b16010033d6f5eaea2889a627f234ae36e2f6d20ad3e182444eaab18",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "aster-node",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "development"
      },
      {
        "name": "RUNTIME_ENVIRONMENT",
        "value": "development"
      }
    ],
    "secrets": [
      {
        "name": "ASTEREMAILID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:ASTEREMAILID::"
      },
      {
        "name": "ASTER_COMPANY_CERTIFICATE_ATTACHMENTS_FOLDER_AWS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:ASTER_COMPANY_CERTIFICATE_ATTACHMENTS_FOLDER_AWS::"
      },
      {
        "name": "ASTER_COMPANY_LOGO",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:ASTER_COMPANY_LOGO::"
      },
      {
        "name": "ASTER_COMPANY_LOGO_FOLDER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:ASTER_COMPANY_LOGO_FOLDER::"
      },
      {
        "name": "ASTER_EXISTING_USER_PERMISSION",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:ASTER_EXISTING_USER_PERMISSION::"
      },
      {
        "name": "ASTER_FACILITY_CERTIFICATE_ATTACHMENTS_FOLDER_AWS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:ASTER_FACILITY_CERTIFICATE_ATTACHMENTS_FOLDER_AWS::"
      },
      {
        "name": "ASTER_FORM_CERTIFICATE_ATTACHMENTS_FOLDER_AWS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:ASTER_FORM_CERTIFICATE_ATTACHMENTS_FOLDER_AWS::"
      },
      {
        "name": "ASTER_FORM_CERTIFICATE_ATTACHMENTS_TEMP_FOLDER_AWS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:ASTER_FORM_CERTIFICATE_ATTACHMENTS_TEMP_FOLDER_AWS::"
      },
      {
        "name": "ASTER_NEW_USER_PERMISSION",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:ASTER_NEW_USER_PERMISSION::"
      },
      {
        "name": "ASTER_PDF_HEADER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:ASTER_PDF_HEADER::"
      },
      {
        "name": "ASTER_PDF_STAMP",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:ASTER_PDF_STAMP::"
      },
      {
        "name": "ASTER_PDF_WATERMARK",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:ASTER_PDF_WATERMARK::"
      },
      {
        "name": "ASTER_PRODUCT_CERTIFICATE_ATTACHMENTS_FOLDER_AWS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:ASTER_PRODUCT_CERTIFICATE_ATTACHMENTS_FOLDER_AWS::"
      },
      {
        "name": "ASTER_REFERENCE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:ASTER_REFERENCE::"
      },
      {
        "name": "ASTER_REFERENCE_TEMP",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:ASTER_REFERENCE_TEMP::"
      },
      {
        "name": "ASTER_SENDEMAIl_STATUS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:ASTER_SENDEMAIl_STATUS::"
      },
      {
        "name": "ASTER_VERIFICATION_DOCUMENTS_FOLDER_AWS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:ASTER_VERIFICATION_DOCUMENTS_FOLDER_AWS::"
      },
      {
        "name": "AUTHSERVER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:AUTHSERVER::"
      },
      {
        "name": "AWS_REGION_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:AWS_REGION_NAME::"
      },
      {
        "name": "AWS_UPLOAD_ENV",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:AWS_UPLOAD_ENV::"
      },
      {
        "name": "BUCKET_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:BUCKET_NAME::"
      },
      {
        "name": "CLICKHOUSE_DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:CLICKHOUSE_DB_HOST::"
      },
      {
        "name": "CLICKHOUSE_DB_PASS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:CLICKHOUSE_DB_PASS::"
      },
      {
        "name": "CLICKHOUSE_DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:CLICKHOUSE_DB_USER::"
      },
      {
        "name": "CLICKHOUSE_MYSQL_DB",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:CLICKHOUSE_MYSQL_DB::"
      },
      {
        "name": "COA_COUNT_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:COA_COUNT_API::"
      },
      {
        "name": "COA_UNAPPROVE_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:COA_UNAPPROVE_API::"
      },
      {
        "name": "COUNTRY_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:COUNTRY_API::"
      },
      {
        "name": "GLOBAL_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:GLOBAL_API::"
      },
      {
        "name": "ENCRYPT_HEX_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-hex-key/config:ENCRYPT_HEX_KEY::"
      },
      {
        "name": "KPIDATABASE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:KPIDATABASE::"
      },
      {
        "name": "MYSQL_DB",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:MYSQL_DB::"
      },
      {
        "name": "NDA_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:NDA_API::"
      },
      {
        "name": "N8N_EMAIL_WEBHOOK_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:N8N_EMAIL_WEBHOOK_URL::"
      },
      {
        "name": "WORLD_MYSQL_DB",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:WORLD_MYSQL_DB::"
      },
      {
        "name": "X_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:X_API_KEY::"
      },
      {
        "name": "ENTITY_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:ENTITY_URL::"
      },
      {
        "name": "KPI_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:KPI_API::"
      },
      {
        "name": "GRAPH_CLIENT_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:GRAPH_CLIENT_ID::"
      },
      {
        "name": "GRAPH_CLIENT_SECRETE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:GRAPH_CLIENT_SECRETE::"
      },
      {
        "name": "SALES_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:SALES_API::"
      },
      {
        "name": "GRAPH_TENANT_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:GRAPH_TENANT_ID::"
      },
      {
        "name": "GRAPH_REDIRECT_URI",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:GRAPH_REDIRECT_URI::"
      },
      {
        "name": "FRONTEND_APP_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:FRONTEND_APP_URL::"
      },
      {
        "name": "stripe_api_key",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:stripe_api_key::"
      },
      {
        "name": "stripe_publishable_key",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:stripe_publishable_key::"
      },
      {
        "name": "stripe_currency",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:stripe_currency::"
      },
      {
        "name": "stripe_webhook_key",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:stripe_webhook_key::"
      },
      {
        "name": "VALIDTO_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:VALIDTO_API_KEY::"
      },
      {
        "name": "DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config:host::"
      },
      {
        "name": "DB_PASS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:password::"
      },
      {
        "name": "DB_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config:port::"
      },
      {
        "name": "DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:username::"
      },
      {
        "name": "WORLD_DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config:host::"
      },
      {
        "name": "WORLD_DB_PASS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config:password::"
      },
      {
        "name": "WORLD_DB_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config:port::"
      },
      {
        "name": "WORLD_DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config:username::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-aster-node",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "aster-node"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_aster_service_backend_r1" {
  family                   = "development-aster-service-backend"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "aster-node",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/aster-node:latest",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp"
      }
    ],
    "secrets": [
      {
        "name": "ACCESS_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config-xQq6Qc:ACCESS_KEY::"
      },
      {
        "name": "DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config-xQq6Qc:DB_HOST::"
      },
      {
        "name": "DB_PASS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config-xQq6Qc:DB_PASS::"
      },
      {
        "name": "DB_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config-xQq6Qc:DB_PORT::"
      },
      {
        "name": "DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config-xQq6Qc:DB_USER::"
      },
      {
        "name": "REGION",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config-xQq6Qc:REGION::"
      },
      {
        "name": "SECRET_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config-xQq6Qc:SECRET_KEY::"
      },
      {
        "name": "WORLD_DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config-xQq6Qc:WORLD_DB_HOST::"
      },
      {
        "name": "WORLD_DB_PASS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config-xQq6Qc:WORLD_DB_PASS::"
      },
      {
        "name": "WORLD_DB_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config-xQq6Qc:WORLD_DB_PORT::"
      },
      {
        "name": "WORLD_DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config-xQq6Qc:WORLD_DB_USER::"
      },
      {
        "name": "s_env",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config-xQq6Qc:s_env::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-aster-service-backend",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "ecs"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_asterdocs_frontend_r447" {
  family                   = "development-asterdocs-frontend"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "asterdocs-frontend",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/asterdocs-frontend@sha256:7376ccb9af71a59d8489cde86697857737dfb0d5148d3d789ac4b93343244b39",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "asterdocs-frontend",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "development"
      },
      {
        "name": "RUNTIME_ENVIRONMENT",
        "value": "development"
      }
    ],
    "secrets": [
      {
        "name": "VITE_API_TOKEN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_API_TOKEN::"
      },
      {
        "name": "VITE_ASTER_BACKEND_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_ASTER_BACKEND_URL::"
      },
      {
        "name": "VITE_ASTER_BACKEND_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_ASTER_BACKEND_API_URL::"
      },
      {
        "name": "VITE_ASTER_DOMAIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_ASTER_DOMAIN::"
      },
      {
        "name": "VITE_AUTH_PRODUCT_CODE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_AUTH_PRODUCT_CODE::"
      },
      {
        "name": "VITE_BASE_DOMAIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_BASE_DOMAIN::"
      },
      {
        "name": "VITE_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_BASE_URL::"
      },
      {
        "name": "VITE_CHECK_PRODUCT_EXIST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_CHECK_PRODUCT_EXIST::"
      },
      {
        "name": "VITE_COMPARE_FILES",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_COMPARE_FILES::"
      },
      {
        "name": "VITE_COUNTRY_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_COUNTRY_API_KEY::"
      },
      {
        "name": "VITE_EXTRACT_SPEC",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_EXTRACT_SPEC::"
      },
      {
        "name": "VITE_FIND_SUPPLIERS_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_FIND_SUPPLIERS_API_URL::"
      },
      {
        "name": "VITE_GET_PRODUCT_LIST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_GET_PRODUCT_LIST::"
      },
      {
        "name": "VITE_INVENTORY_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_INVENTORY_URL::"
      },
      {
        "name": "VITE_LOCATION_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_LOCATION_API::"
      },
      {
        "name": "VITE_N8N_WEBHOOK_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_N8N_WEBHOOK_BASE_URL::"
      },
      {
        "name": "VITE_SALES_BACKEND_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_SALES_BACKEND_API::"
      },
      {
        "name": "VITE_TASK_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_TASK_URL::"
      },
      {
        "name": "VITE_USER_M_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_USER_M_URL::"
      },
      {
        "name": "VITE_VERIFY_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_VERIFY_API_URL::"
      },
      {
        "name": "VITE_WITHOUT_TEMPLATE_COA",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_WITHOUT_TEMPLATE_COA::"
      },
      {
        "name": "VITE_MASTERCONFIG_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_MASTERCONFIG_API_URL::"
      },
      {
        "name": "VITE_GLOBALAPI_MASTERTABLES_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_GLOBALAPI_MASTERTABLES_URL::"
      },
      {
        "name": "VITE_ADMIN_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_ADMIN_BASE_URL::"
      },
      {
        "name": "VITE_ADMIN_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_ADMIN_URL::"
      },
      {
        "name": "VITE_ASTER_ADMIN_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_ASTER_ADMIN_URL::"
      },
      {
        "name": "VITE_AWS_UPLOAD_ENV",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_AWS_UPLOAD_ENV::"
      },
      {
        "name": "VITE_ENTITY_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_ENTITY_API_URL::"
      },
      {
        "name": "VITE_GLOBALAPI_COUNTRIES_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_GLOBALAPI_COUNTRIES_URL::"
      },
      {
        "name": "VITE_IMAGE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_IMAGE_URL::"
      },
      {
        "name": "VITE_MASTER_PRODUCT_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_MASTER_PRODUCT_API::"
      },
      {
        "name": "VITE_MASTERPRODUCT_IMAGE_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_MASTERPRODUCT_IMAGE_BASE_URL::"
      },
      {
        "name": "VITE_PERMISSION_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_PERMISSION_URL::"
      },
      {
        "name": "VITE_PURCHASE_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_PURCHASE_API_URL::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-asterdocs-frontend",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "asterdocs-frontend"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_audit_management_backend_r14" {
  family                   = "development-audit-management-backend"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "audit-management-backend",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/audit-management-backend:sha-bf68e86-35089444838",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "audit-management-backend",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "NODE_ENV",
        "value": "development"
      }
    ],
    "secrets": [
      {
        "name": "AUTH_DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:host::"
      },
      {
        "name": "AWS_REGION",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/audit-management-backend/config-b719rA:AWS_REGION::"
      },
      {
        "name": "AUTH_DB_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/audit-management-backend/config-b719rA:AUTH_DB_NAME::"
      },
      {
        "name": "AUTH_DB_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/audit-management-backend/config-b719rA:password::"
      },
      {
        "name": "AUTH_DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/audit-management-backend/config-b719rA:username::"
      },
      {
        "name": "AWS_S3_BUCKET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/audit-management-backend/config-b719rA:AWS_S3_BUCKET::"
      },
      {
        "name": "DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:host::"
      },
      {
        "name": "DB_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/audit-management-backend/config-b719rA:DB_NAME::"
      },
      {
        "name": "DB_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/audit-management-backend/config-b719rA:password::"
      },
      {
        "name": "DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/audit-management-backend/config-b719rA:username::"
      },
      {
        "name": "DECRYPT_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/audit-management-backend/config-b719rA:DECRYPT_URL::"
      },
      {
        "name": "ENCRYPT_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/audit-management-backend/config-b719rA:ENCRYPT_URL::"
      },
      {
        "name": "NEXT_PUBLIC_FRONTEND_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/audit-management-backend/config-b719rA:NEXT_PUBLIC_FRONTEND_API_URL::"
      },
      {
        "name": "PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:port::"
      },
      {
        "name": "HEX_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-hex-key/config-BGrEHQ:ENCRYPT_HEX_KEY::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-audit-management-backend",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "audit-management-backend"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_audit_management_frontend_r9" {
  family                   = "development-audit-management-frontend"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "audit-management-frontend",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/audit-management-frontend:sha-409abd6-31479866836",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "audit-management-frontend",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "development"
      }
    ],
    "secrets": [
      {
        "name": "NEXT_PUBLIC_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/audit-management-frontend/config-N3zSGj:NEXT_PUBLIC_API_URL::"
      },
      {
        "name": "NEXT_PUBLIC_ASTER_LOGOUT_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/audit-management-frontend/config-N3zSGj:NEXT_PUBLIC_ASTER_LOGOUT_URL::"
      },
      {
        "name": "NEXT_PUBLIC_AUTH_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/audit-management-frontend/config-N3zSGj:NEXT_PUBLIC_AUTH_API_URL::"
      },
      {
        "name": "NEXT_PUBLIC_DECRYPT_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/audit-management-frontend/config-N3zSGj:NEXT_PUBLIC_DECRYPT_URL::"
      },
      {
        "name": "NEXT_PUBLIC_ENCRYPT_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/audit-management-frontend/config-N3zSGj:NEXT_PUBLIC_ENCRYPT_URL::"
      },
      {
        "name": "NEXT_PUBLIC_FRONTEND_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/audit-management-frontend/config-N3zSGj:NEXT_PUBLIC_FRONTEND_API_URL::"
      },
      {
        "name": "NEXT_PUBLIC_GLOBAL_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/audit-management-frontend/config-N3zSGj:NEXT_PUBLIC_GLOBAL_API_URL::"
      },
      {
        "name": "NEXT_PUBLIC_PERMISSION_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/audit-management-frontend/config-N3zSGj:NEXT_PUBLIC_PERMISSION_KEY::"
      },
      {
        "name": "NEXT_PUBLIC_PRODUCT_CODE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/audit-management-frontend/config-N3zSGj:NEXT_PUBLIC_PRODUCT_CODE::"
      },
      {
        "name": "NEXT_PUBLIC_SSO_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/audit-management-frontend/config-N3zSGj:NEXT_PUBLIC_SSO_URL::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-audit-management-frontend",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "audit-management-frontend"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_audit_trail_frontend_r3" {
  family                   = "development-audit-trail-frontend"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "audit-trail-frontend",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/audit-trail-frontend:sha-af238d7",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "audit-trail-frontend",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "development"
      }
    ],
    "secrets": [
      {
        "name": "VITE_MASTER_CONFIG_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/audit-trail-frontend/config-FnhDfM:VITE_MASTER_CONFIG_URL::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-audit-trail-frontend",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "audit-trail-frontend"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_authorization_v2_r38" {
  family                   = "development-authorization-v2"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "authorization-v2",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/authorization-v2:sha-2d609ae-37455385457",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "authorization-v2",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "development"
      }
    ],
    "secrets": [
      {
        "name": "AUTH_AUDIT_STAFF_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authorization-v2/config-aspVa3:AUTH_AUDIT_STAFF_ID::"
      },
      {
        "name": "AUTH_DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:host::"
      },
      {
        "name": "AUTH_DB_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authorization-v2/config-aspVa3:AUTH_DB_NAME::"
      },
      {
        "name": "AUTH_DB_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:password::"
      },
      {
        "name": "AUTH_DB_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:port::"
      },
      {
        "name": "AUTH_DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:username::"
      },
      {
        "name": "AUTH_LOGOUT_DEMO_REDIRECT_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authorization-v2/config-aspVa3:AUTH_LOGOUT_DEMO_REDIRECT_URL::"
      },
      {
        "name": "AUTH_LOGOUT_DBI_REDIRECT_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authorization-v2/config-aspVa3:AUTH_LOGOUT_DBI_REDIRECT_URL::"
      },
      {
        "name": "AUTH_VERIFY_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authorization-v2/config-aspVa3:AUTH_VERIFY_API_URL::"
      },
      {
        "name": "AUTH_ZYLER_DB_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authorization-v2/config-aspVa3:AUTH_ZYLER_DB_NAME::"
      },
      {
        "name": "NEXT_PUBLIC_AUTH_APP_TITLE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authorization-v2/config-aspVa3:NEXT_PUBLIC_AUTH_APP_TITLE::"
      },
      {
        "name": "ENCRYPT_HEX_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authorization-v2/config-aspVa3:ENCRYPT_HEX_KEY::"
      },
      {
        "name": "AUTH_ALLOWED_ORIGINS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authorization-v2/config-aspVa3:AUTH_ALLOWED_ORIGINS::"
      },
      {
        "name": "TRIGGER_ADD_WEBHOOK_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authorization-v2/config-aspVa3:TRIGGER_ADD_WEBHOOK_URL::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-authorization-v2",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "authorization-v2"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_authserver_backend_r248" {
  family                   = "development-authserver-backend"
  network_mode             = "awsvpc"
  cpu                      = "1024"
  memory                   = "2048"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "authserver-backend",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/authserver-backend@sha256:4e83ca83a57d9cb568a255fffc81ea4d2697b36f2ec30bef81bb1bca879626f0",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "authserver-backend",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "OTEL_SERVICE_NAME",
        "value": "SSO"
      },
      {
        "name": "OTEL_EXPORTER_OTLP_PROTOCOL",
        "value": "http/protobuf"
      },
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "OTEL_PYTHON_DJANGO_MIDDLEWARE_POSITION",
        "value": "1"
      },
      {
        "name": "RUNTIME_ENVIRONMENT",
        "value": "development"
      },
      {
        "name": "OTEL_ENABLED",
        "value": "True"
      },
      {
        "name": "OTEL_DEPLOYMENT_ENV",
        "value": "development"
      },
      {
        "name": "OTEL_EXPORTER_OTLP_ENDPOINT",
        "value": "http://apimonitor.dbi360.com:4318"
      }
    ],
    "secrets": [
      {
        "name": "ALLOWED_API_DOMAINS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:ALLOWED_API_DOMAINS::"
      },
      {
        "name": "AWS_STORAGE_BUCKET_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:AWS_STORAGE_BUCKET_NAME::"
      },
      {
        "name": "DJANGO_ALLOWED_HOSTS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:DJANGO_ALLOWED_HOSTS::"
      },
      {
        "name": "DJANGO_DEBUG",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:DJANGO_DEBUG::"
      },
      {
        "name": "DJANGO_SECRET_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:DJANGO_SECRET_KEY::"
      },
      {
        "name": "DJANGO_SETTINGS_MODULE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:DJANGO_SETTINGS_MODULE::"
      },
      {
        "name": "ECOMM_SECRET_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:ECOMM_SECRET_KEY::"
      },
      {
        "name": "EMAIL_FROM",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:EMAIL_FROM::"
      },
      {
        "name": "EMAIL_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:EMAIL_HOST::"
      },
      {
        "name": "EMAIL_HOST_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:EMAIL_HOST_PASSWORD::"
      },
      {
        "name": "EMAIL_HOST_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:EMAIL_HOST_USER::"
      },
      {
        "name": "EMAIL_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:EMAIL_PORT::"
      },
      {
        "name": "EMAIL_USE_TLS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:EMAIL_USE_TLS::"
      },
      {
        "name": "ENCRYPT_HEX_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-hex-key/config:ENCRYPT_HEX_KEY::"
      },
      {
        "name": "FRONTEND_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:FRONTEND_URL::"
      },
      {
        "name": "GOOGLE_OIDC_CLIENT_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:GOOGLE_OIDC_CLIENT_ID::"
      },
      {
        "name": "GOOGLE_OIDC_CLIENT_SECRET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:GOOGLE_OIDC_CLIENT_SECRET::"
      },
      {
        "name": "GOOGLE_OIDC_REDIRECT_URI",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:GOOGLE_OIDC_REDIRECT_URI::"
      },
      {
        "name": "GRAPH_MAIL_WEBHOOK_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:GRAPH_MAIL_WEBHOOK_URL::"
      },
      {
        "name": "MICROSOFT_OIDC_CLIENT_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:MICROSOFT_OIDC_CLIENT_ID::"
      },
      {
        "name": "MICROSOFT_OIDC_CLIENT_SECRET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:MICROSOFT_OIDC_CLIENT_SECRET::"
      },
      {
        "name": "MICROSOFT_OIDC_REDIRECT_URI",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:MICROSOFT_OIDC_REDIRECT_URI::"
      },
      {
        "name": "MONGO_CLIENT_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:MONGO_CLIENT_HOST::"
      },
      {
        "name": "MONGO_DB_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:MONGO_DB_NAME::"
      },
      {
        "name": "MYSQL_AUTH_DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config:host::"
      },
      {
        "name": "MYSQL_AUTH_DB_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:MYSQL_AUTH_DB_NAME::"
      },
      {
        "name": "MYSQL_AUTH_DB_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:password::"
      },
      {
        "name": "MYSQL_AUTH_DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:username::"
      },
      {
        "name": "MYSQL_DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config:host::"
      },
      {
        "name": "MYSQL_DB_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:MYSQL_DB_NAME::"
      },
      {
        "name": "MYSQL_DB_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:password::"
      },
      {
        "name": "MYSQL_DB_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config:port::"
      },
      {
        "name": "MYSQL_DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:username::"
      },
      {
        "name": "MYSQL_HRMS_DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config:host::"
      },
      {
        "name": "MYSQL_HRMS_DB_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:MYSQL_HRMS_DB_NAME::"
      },
      {
        "name": "MYSQL_HRMS_DB_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:password::"
      },
      {
        "name": "MYSQL_HRMS_DB_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config:port::"
      },
      {
        "name": "MYSQL_HRMS_DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:username::"
      },
      {
        "name": "MYSQL_ZYLER_DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config:host::"
      },
      {
        "name": "MYSQL_ZYLER_DB_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:MYSQL_ZYLER_DB_NAME::"
      },
      {
        "name": "MYSQL_ZYLER_DB_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:password::"
      },
      {
        "name": "MYSQL_ZYLER_DB_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config:port::"
      },
      {
        "name": "MYSQL_ZYLER_DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:username::"
      },
      {
        "name": "NEXT_CLICKHOUSE_DATABASE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:NEXT_CLICKHOUSE_DATABASE::"
      },
      {
        "name": "NEXT_CLICKHOUSE_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:NEXT_CLICKHOUSE_HOST::"
      },
      {
        "name": "NEXT_CLICKHOUSE_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:NEXT_CLICKHOUSE_PASSWORD::"
      },
      {
        "name": "NEXT_CLICKHOUSE_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:NEXT_CLICKHOUSE_USER::"
      },
      {
        "name": "WORK_FLOW_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:WORK_FLOW_URL::"
      },
      {
        "name": "SERVICE_TOKEN_TTL_SECONDS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:SERVICE_TOKEN_TTL_SECONDS::"
      },
      {
        "name": "INTERNAL_SERVICE_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:INTERNAL_SERVICE_API_KEY::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-authserver-backend",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "authserver-backend"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_authserver_frontend_r106" {
  family                   = "development-authserver-frontend"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "authserver-frontend",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/authserver-frontend@sha256:2aa924b1eb0a68cab51059343a4adf19b33a55d4a39d5305e1f21c872d005953",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "authserver-frontend",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "development"
      },
      {
        "name": "RUNTIME_ENVIRONMENT",
        "value": "development"
      }
    ],
    "secrets": [
      {
        "name": "VITE_APP_RUNNER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_APP_RUNNER::"
      },
      {
        "name": "VITE_CLOUDFRONT_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_CLOUDFRONT_URL::"
      },
      {
        "name": "VITE_COOKIE_DOMAIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_COOKIE_DOMAIN::"
      },
      {
        "name": "VITE_COOKIE_SAME_SITE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_COOKIE_SAME_SITE::"
      },
      {
        "name": "VITE_COOKIE_SECURE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_COOKIE_SECURE::"
      },
      {
        "name": "VITE_DEFAULT_COOKIE_DOMAIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_DEFAULT_COOKIE_DOMAIN::"
      },
      {
        "name": "VITE_DOMAIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_DOMAIN::"
      },
      {
        "name": "VITE_ETL_API_AUTH_TOKEN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_ETL_API_AUTH_TOKEN::"
      },
      {
        "name": "VITE_ETL_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_ETL_API_URL::"
      },
      {
        "name": "VITE_FINANCE_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_FINANCE_API::"
      },
      {
        "name": "VITE_ASTER_API_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_ASTER_API_BASE_URL::"
      },
      {
        "name": "VITE_GLOBAL_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_GLOBAL_API::"
      },
      {
        "name": "VITE_GOOGLE_MAPS_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_GOOGLE_MAPS_API_KEY::"
      },
      {
        "name": "VITE_HRMS_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_HRMS_API::"
      },
      {
        "name": "VITE_INVENTORY_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_INVENTORY_API::"
      },
      {
        "name": "VITE_MASTER_CONFIG_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_MASTER_CONFIG_URL::"
      },
      {
        "name": "VITE_MASTER_PRODUCT_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_MASTER_PRODUCT_URL::"
      },
      {
        "name": "VITE_MICROSOFT_SSO_ENABLED",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_MICROSOFT_SSO_ENABLED::"
      },
      {
        "name": "VITE_NEXUS_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_NEXUS_API_URL::"
      },
      {
        "name": "VITE_PERMISSION_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_PERMISSION_KEY::"
      },
      {
        "name": "VITE_PERMISSION_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_PERMISSION_URL::"
      },
      {
        "name": "VITE_PRODUCT_CODE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_PRODUCT_CODE::"
      },
      {
        "name": "VITE_PRODUCT_URL_1",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_PRODUCT_URL_1::"
      },
      {
        "name": "VITE_PRODUCT_URL_10",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_PRODUCT_URL_10::"
      },
      {
        "name": "VITE_PRODUCT_URL_12",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_PRODUCT_URL_12::"
      },
      {
        "name": "VITE_PRODUCT_URL_16",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_PRODUCT_URL_16::"
      },
      {
        "name": "VITE_PRODUCT_URL_3",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_PRODUCT_URL_3::"
      },
      {
        "name": "VITE_PRODUCT_URL_33",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_PRODUCT_URL_33::"
      },
      {
        "name": "VITE_PURCHSE_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_PURCHSE_API::"
      },
      {
        "name": "VITE_SALES_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_SALES_API::"
      },
      {
        "name": "VITE_SOURCING_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_SOURCING_API::"
      },
      {
        "name": "VITE_SUPPLIERS_DISCOVERY_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_SUPPLIERS_DISCOVERY_API::"
      },
      {
        "name": "VITE_SUPPLIER_API_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_SUPPLIER_API_BASE_URL::"
      },
      {
        "name": "VITE_VMI_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_VMI_API_URL::"
      },
      {
        "name": "VITE_VMI_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_VMI_URL::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-authserver-frontend",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "authserver-frontend"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_b2badmin_backend_r105" {
  family                   = "development-b2badmin-backend"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "b2badmin-backend",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/b2badmin-backend:sha-7f89c37-36708228610",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "b2badmin-backend",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "development"
      }
    ],
    "secrets": [
      {
        "name": "REDIS_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/b2badmin-backend/config-oj2VVf:REDIS_URL::"
      },
      {
        "name": "ALLOWED_HOSTS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/b2badmin-backend/config-oj2VVf:ALLOWED_HOSTS::"
      },
      {
        "name": "CLICKHOUSE_DATABASE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/b2badmin-backend/config-oj2VVf:CLICKHOUSE_DATABASE::"
      },
      {
        "name": "CLICKHOUSE_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/b2badmin-backend/config-oj2VVf:CLICKHOUSE_HOST::"
      },
      {
        "name": "CLICKHOUSE_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/b2badmin-backend/config-oj2VVf:CLICKHOUSE_PASSWORD::"
      },
      {
        "name": "CLICKHOUSE_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/b2badmin-backend/config-oj2VVf:CLICKHOUSE_USER::"
      },
      {
        "name": "DB_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/b2badmin-backend/config-oj2VVf:DB_NAME::"
      },
      {
        "name": "DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:host::"
      },
      {
        "name": "DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/b2badmin-backend/config-oj2VVf:username::"
      },
      {
        "name": "DB_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/b2badmin-backend/config-oj2VVf:password::"
      },
      {
        "name": "ENCRYPT_HEX_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-hex-key/config-BGrEHQ:ENCRYPT_HEX_KEY::"
      },
      {
        "name": "B2B_JWT_SECRET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/b2badmin-backend/config-oj2VVf:B2B_JWT_SECRET::"
      },
      {
        "name": "B2B_JWT_EXPIRES_IN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/b2badmin-backend/config-oj2VVf:B2B_JWT_EXPIRES_IN::"
      },
      {
        "name": "DEVELOPER_API_ENDPOINT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/b2badmin-backend/config-oj2VVf:DEVELOPER_API_ENDPOINT::"
      },
      {
        "name": "ENTITY_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/b2badmin-backend/config-oj2VVf:ENTITY_API::"
      },
      {
        "name": "EN_DE_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/b2badmin-backend/config-oj2VVf:EN_DE_KEY::"
      },
      {
        "name": "EXTERNAL_X_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/b2badmin-backend/config-oj2VVf:EXTERNAL_X_API_KEY::"
      },
      {
        "name": "GLOBAL_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/b2badmin-backend/config-oj2VVf:GLOBAL_API_URL::"
      },
      {
        "name": "HEX_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-hex-key/config-BGrEHQ:ENCRYPT_HEX_KEY::"
      },
      {
        "name": "INVENTORY_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/b2badmin-backend/config-oj2VVf:INVENTORY_API_KEY::"
      },
      {
        "name": "MASTER_CONFIG_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/b2badmin-backend/config-oj2VVf:MASTER_CONFIG_BASE_URL::"
      },
      {
        "name": "N8N_WEBHOOK_AUTH",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/b2badmin-backend/config-oj2VVf:N8N_WEBHOOK_AUTH::"
      },
      {
        "name": "N8N_WEBHOOK_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/b2badmin-backend/config-oj2VVf:N8N_WEBHOOK_URL::"
      },
      {
        "name": "PERMISSION_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/b2badmin-backend/config-oj2VVf:PERMISSION_API_URL::"
      },
      {
        "name": "PERMISSION_PRODUCT_CODE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/b2badmin-backend/config-oj2VVf:PERMISSION_PRODUCT_CODE::"
      },
      {
        "name": "SALES_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/b2badmin-backend/config-oj2VVf:SALES_API::"
      },
      {
        "name": "SALES_ORIGIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/b2badmin-backend/config-oj2VVf:SALES_ORIGIN::"
      },
      {
        "name": "X_API_KEY_ELASTIC",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/b2badmin-backend/config-oj2VVf:X_API_KEY_ELASTIC::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-b2badmin-backend",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "b2badmin-backend"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_b2badmin_frontend_r64" {
  family                   = "development-b2badmin-frontend"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "b2badmin-frontend",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/b2badmin-frontend:sha-1ca9a91-36696759935",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "b2badmin-frontend",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "development"
      }
    ],
    "secrets": [
      {
        "name": "VITE_B2B_ADMIN_API_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/b2badmin-frontend/config-H4RzX2:VITE_B2B_ADMIN_API_BASE_URL::"
      },
      {
        "name": "VITE_COOKIE_DOMAIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/b2badmin-frontend/config-H4RzX2:VITE_COOKIE_DOMAIN::"
      },
      {
        "name": "VITE_CUSTOMER_MAP_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/b2badmin-frontend/config-H4RzX2:VITE_CUSTOMER_MAP_URL::"
      },
      {
        "name": "VITE_DATABASE_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/b2badmin-frontend/config-H4RzX2:VITE_DATABASE_ID::"
      },
      {
        "name": "VITE_ECOMM_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/b2badmin-frontend/config-H4RzX2:VITE_ECOMM_BASE_URL::"
      },
      {
        "name": "VITE_DEVELOPER_API_ENDPOINT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/b2badmin-frontend/config-H4RzX2:VITE_DEVELOPER_API_ENDPOINT::"
      },
      {
        "name": "VITE_ENTITY_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/b2badmin-frontend/config-H4RzX2:VITE_ENTITY_URL::"
      },
      {
        "name": "VITE_GLOBAL_API_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/b2badmin-frontend/config-H4RzX2:VITE_GLOBAL_API_BASE_URL::"
      },
      {
        "name": "VITE_LICENSE_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/b2badmin-frontend/config-H4RzX2:VITE_LICENSE_KEY::"
      },
      {
        "name": "VITE_MAIN_APP_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/b2badmin-frontend/config-H4RzX2:VITE_MAIN_APP_URL::"
      },
      {
        "name": "VITE_PERMISSION_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/b2badmin-frontend/config-H4RzX2:VITE_PERMISSION_URL::"
      },
      {
        "name": "VITE_PRODUCT_CODE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/b2badmin-frontend/config-H4RzX2:VITE_PRODUCT_CODE::"
      },
      {
        "name": "VITE_SALES_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/b2badmin-frontend/config-H4RzX2:VITE_SALES_URL::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-b2badmin-frontend",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "b2badmin-frontend"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_biotrace_next_r41" {
  family                   = "development-biotrace-next"
  network_mode             = "awsvpc"
  cpu                      = "1024"
  memory                   = "2048"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "biotrace-next",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/biotrace-next:sha-5e7b7e2-36375824780",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "biotrace-next",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "BIOTRACE_LAB_COMPANY_IDS",
        "value": ""
      },
      {
        "name": "PORT",
        "value": "3000"
      },
      {
        "name": "HOSTNAME",
        "value": "127.0.0.1"
      },
      {
        "name": "GOOGLE_CLOUD_PROJECT",
        "value": ""
      },
      {
        "name": "STORAGE_BUCKET",
        "value": ""
      },
      {
        "name": "BASE_PATH",
        "value": ""
      },
      {
        "name": "PRIVATE_OBJECT_DIR",
        "value": ""
      },
      {
        "name": "NODE_ENV",
        "value": "production"
      },
      {
        "name": "PUBLIC_OBJECT_SEARCH_PATHS",
        "value": ""
      }
    ],
    "secrets": [
      {
        "name": "DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config:host::"
      },
      {
        "name": "DB_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config:port::"
      },
      {
        "name": "DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/biotrace-next/config-yQ8Vkx:DB_USER::"
      },
      {
        "name": "DB_PASSWORD_BASE64",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/biotrace-next/config-yQ8Vkx:DB_PASSWORD_BASE64::"
      },
      {
        "name": "MYSQL_DB",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/biotrace-next/config-yQ8Vkx:MYSQL_DB::"
      },
      {
        "name": "DBI360_SSO_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/biotrace-next/config-yQ8Vkx:DBI360_SSO_API_URL::"
      },
      {
        "name": "DBI360_SSO_ENCRYPT_HEX_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/biotrace-next/config-yQ8Vkx:DBI360_SSO_ENCRYPT_HEX_KEY::"
      },
      {
        "name": "SSO_DIRECTORY_DB_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/biotrace-next/config-yQ8Vkx:SSO_DIRECTORY_DB_NAME::"
      },
      {
        "name": "MASTER_PRODUCT_SERVICE_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/biotrace-next/config-yQ8Vkx:MASTER_PRODUCT_SERVICE_API_URL::"
      },
      {
        "name": "EMAIL_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/biotrace-next/config-yQ8Vkx:EMAIL_HOST::"
      },
      {
        "name": "EMAIL_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/biotrace-next/config-yQ8Vkx:EMAIL_PORT::"
      },
      {
        "name": "EMAIL_USE_TLS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/biotrace-next/config-yQ8Vkx:EMAIL_USE_TLS::"
      },
      {
        "name": "EMAIL_HOST_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/biotrace-next/config-yQ8Vkx:EMAIL_HOST_USER::"
      },
      {
        "name": "EMAIL_HOST_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/biotrace-next/config-yQ8Vkx:EMAIL_HOST_PASSWORD::"
      },
      {
        "name": "EMAIL_FROM",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/biotrace-next/config-yQ8Vkx:EMAIL_FROM::"
      },
      {
        "name": "STRIPE_SECRET_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/biotrace-next/config-yQ8Vkx:STRIPE_SECRET_KEY::"
      },
      {
        "name": "STRIPE_WEBHOOK_SECRET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/biotrace-next/config-yQ8Vkx:STRIPE_WEBHOOK_SECRET::"
      },
      {
        "name": "WIDGET_HOST_RETURN_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/biotrace-next/config-yQ8Vkx:WIDGET_HOST_RETURN_URL::"
      },
      {
        "name": "DBI360_PORTAL_LOGIN_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/biotrace-next/config-yQ8Vkx:DBI360_PORTAL_LOGIN_URL::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-biotrace-next",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "biotrace-next"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_buyersflow_backend_r38" {
  family                   = "development-buyersflow-backend"
  network_mode             = "awsvpc"
  cpu                      = "2048"
  memory                   = "4096"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "buyersflow-backend",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/buyersflow-backend:sha-015b0e6-37893104423",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "buyersflow-backend",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "development"
      }
    ],
    "secrets": [
      {
        "name": "API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-backend/config-4fQkcj:API_URL::"
      },
      {
        "name": "CLIENT_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-backend/config-4fQkcj:CLIENT_URL::"
      },
      {
        "name": "DOMAIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-backend/config-4fQkcj:DOMAIN::"
      },
      {
        "name": "ENFORCE_CLIENT_VERSION_GATE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-backend/config-4fQkcj:ENFORCE_CLIENT_VERSION_GATE::"
      },
      {
        "name": "FINDSUPPLIER_ACTIVITY_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-backend/config-4fQkcj:FINDSUPPLIER_ACTIVITY_URL::"
      },
      {
        "name": "FIREBASE_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-backend/config-4fQkcj:FIREBASE_BASE_URL::"
      },
      {
        "name": "GOOGLE_CLIENT_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-backend/config-4fQkcj:GOOGLE_CLIENT_ID::"
      },
      {
        "name": "GOOGLE_CLIENT_SECRET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-backend/config-4fQkcj:GOOGLE_CLIENT_SECRET::"
      },
      {
        "name": "GOOGLE_REDIRECT_URI",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-backend/config-4fQkcj:GOOGLE_REDIRECT_URI::"
      },
      {
        "name": "HEX_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-backend/config-4fQkcj:HEX_KEY::"
      },
      {
        "name": "INBOX_STORE_MONGO_URI",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-backend/config-4fQkcj:INBOX_STORE_MONGO_URI::"
      },
      {
        "name": "JWT_SECRET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-backend/config-4fQkcj:JWT_SECRET::"
      },
      {
        "name": "MIN_DESKTOP_APP_VERSION",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-backend/config-4fQkcj:MIN_DESKTOP_APP_VERSION::"
      },
      {
        "name": "MONGO_URI",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-backend/config-4fQkcj:MONGO_URI::"
      },
      {
        "name": "MONGO_URI_COMPANY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-backend/config-4fQkcj:MONGO_URI_COMPANY::"
      },
      {
        "name": "MYSQL_DATABASE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-backend/config-4fQkcj:MYSQL_DATABASE::"
      },
      {
        "name": "MYSQL_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-backend/config-4fQkcj:MYSQL_HOST::"
      },
      {
        "name": "MYSQL_PASS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-backend/config-4fQkcj:MYSQL_PASS::"
      },
      {
        "name": "MYSQL_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-backend/config-4fQkcj:MYSQL_USER::"
      },
      {
        "name": "OPENAI_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-backend/config-4fQkcj:OPENAI_API_KEY::"
      },
      {
        "name": "OUTLOOK_CLIENT_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-backend/config-4fQkcj:OUTLOOK_CLIENT_ID::"
      },
      {
        "name": "OUTLOOK_CLIENT_SECRET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-backend/config-4fQkcj:OUTLOOK_CLIENT_SECRET::"
      },
      {
        "name": "OUTLOOK_REDIRECT_URI",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-backend/config-4fQkcj:OUTLOOK_REDIRECT_URI::"
      },
      {
        "name": "OUTLOOK_TENANT_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-backend/config-4fQkcj:OUTLOOK_TENANT_ID::"
      },
      {
        "name": "OUTLOOK_WEBHOOK_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-backend/config-4fQkcj:OUTLOOK_WEBHOOK_URL::"
      },
      {
        "name": "REACT_APP_AWS_CLIENT_ACCESS_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-backend/config-4fQkcj:REACT_APP_AWS_CLIENT_ACCESS_KEY::"
      },
      {
        "name": "REACT_APP_AWS_CLIENT_SECRET_ACCESS_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-backend/config-4fQkcj:REACT_APP_AWS_CLIENT_SECRET_ACCESS_KEY::"
      },
      {
        "name": "STRIPE_SECRET_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-backend/config-4fQkcj:STRIPE_SECRET_KEY::"
      },
      {
        "name": "TRANSCRIPT_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-backend/config-4fQkcj:TRANSCRIPT_BASE_URL::"
      },
      {
        "name": "TWILIO_ACCOUNT_SID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-backend/config-4fQkcj:TWILIO_ACCOUNT_SID::"
      },
      {
        "name": "TWILIO_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-backend/config-4fQkcj:TWILIO_API_KEY::"
      },
      {
        "name": "TWILIO_API_SECRET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-backend/config-4fQkcj:TWILIO_API_SECRET::"
      },
      {
        "name": "TWILIO_AUTH_TOKEN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-backend/config-4fQkcj:TWILIO_AUTH_TOKEN::"
      },
      {
        "name": "DEEPGRAM_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-backend/config-4fQkcj:DEEPGRAM_API_KEY::"
      },
      {
        "name": "CAPTIONS_PUBLIC_WS_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-backend/config-4fQkcj:CAPTIONS_PUBLIC_WS_BASE_URL::"
      },
      {
        "name": "TWILIO_IOS_PUSH_CREDENTIAL_SID_SANDBOX",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-backend/config-4fQkcj:TWILIO_IOS_PUSH_CREDENTIAL_SID_SANDBOX::"
      },
      {
        "name": "TWILIO_PUSH_CREDENTIAL_SID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-backend/config-4fQkcj:TWILIO_PUSH_CREDENTIAL_SID::"
      },
      {
        "name": "TWILIO_SEND_MANUAL_FCM",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-backend/config-4fQkcj:TWILIO_SEND_MANUAL_FCM::"
      },
      {
        "name": "TWILIO_SERVICE_SID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-backend/config-4fQkcj:TWILIO_SERVICE_SID::"
      },
      {
        "name": "TWILIO_TWIML_APP_SID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-backend/config-4fQkcj:TWILIO_TWIML_APP_SID::"
      },
      {
        "name": "TWILIO_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-backend/config-4fQkcj:TWILIO_URL::"
      },
      {
        "name": "TELNYX_ENABLED",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-backend/config-4fQkcj:TELNYX_ENABLED::"
      },
      {
        "name": "TELNYX_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-backend/config-4fQkcj:TELNYX_API_KEY::"
      },
      {
        "name": "TELNYX_CREDENTIAL_CONNECTION_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-backend/config-4fQkcj:TELNYX_CREDENTIAL_CONNECTION_ID::"
      },
      {
        "name": "TELNYX_PUBLIC_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-backend/config-4fQkcj:TELNYX_PUBLIC_KEY::"
      },
      {
        "name": "TELNYX_CLIENT_STATE_SECRET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-backend/config-4fQkcj:TELNYX_CLIENT_STATE_SECRET::"
      },
      {
        "name": "FIREBASE_SERVICE_ACCOUNT_JSON",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:firebase-service-account-pG17R4"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-buyersflow-backend",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "buyersflow-backend"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_buyersflow_caption_r1" {
  family                   = "development-buyersflow-caption"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "buyersflow-caption",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/buyersflow-caption:latest",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp"
      }
    ],
    "secrets": [
      {
        "name": "CAPTIONS_LANGUAGE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-caption/config-7kUrMk:CAPTIONS_LANGUAGE::"
      },
      {
        "name": "CAPTIONS_PUBLIC_WS_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-caption/config-7kUrMk:CAPTIONS_PUBLIC_WS_BASE_URL::"
      },
      {
        "name": "CAPTIONS_STORE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-caption/config-7kUrMk:CAPTIONS_STORE_URL::"
      },
      {
        "name": "DEEPGRAM_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-caption/config-7kUrMk:DEEPGRAM_API_KEY::"
      },
      {
        "name": "DOMAIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-caption/config-7kUrMk:DOMAIN::"
      },
      {
        "name": "HEX_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-caption/config-7kUrMk:HEX_KEY::"
      },
      {
        "name": "TOKEN_CACHE_TTL_SECONDS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-caption/config-7kUrMk:TOKEN_CACHE_TTL_SECONDS::"
      },
      {
        "name": "TWILIO_ACCOUNT_SID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-caption/config-7kUrMk:TWILIO_ACCOUNT_SID::"
      },
      {
        "name": "TWILIO_AUTH_TOKEN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-caption/config-7kUrMk:TWILIO_AUTH_TOKEN::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-buyersflow-caption",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "ecs"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_buyersflow_new_r19" {
  family                   = "development-buyersflow-new"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "buyersflow-new",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/buyersflow-new:sha-3811192-37893079941",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "buyersflow-new",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "development"
      }
    ],
    "secrets": [
      {
        "name": "AZURE_CLIENT_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-new/config-EiHL99:AZURE_CLIENT_ID::"
      },
      {
        "name": "AZURE_CLIENT_SECRET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-new/config-EiHL99:AZURE_CLIENT_SECRET::"
      },
      {
        "name": "DBI360_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-new/config-EiHL99:DBI360_API_URL::"
      },
      {
        "name": "GH_OWNER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-new/config-EiHL99:GH_OWNER::"
      },
      {
        "name": "GH_REPO",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-new/config-EiHL99:GH_REPO::"
      },
      {
        "name": "GITHUB_TOKEN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-new/config-EiHL99:GITHUB_TOKEN::"
      },
      {
        "name": "HEX_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-new/config-EiHL99:HEX_KEY::"
      },
      {
        "name": "MONGODB_URI",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-new/config-EiHL99:MONGODB_URI::"
      },
      {
        "name": "NEXT_PUBLIC_APP_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-new/config-EiHL99:NEXT_PUBLIC_APP_URL::"
      },
      {
        "name": "NEXT_PUBLIC_DBI360_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-new/config-EiHL99:NEXT_PUBLIC_DBI360_API_URL::"
      },
      {
        "name": "NEXT_PUBLIC_DOMAIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-new/config-EiHL99:NEXT_PUBLIC_DOMAIN::"
      },
      {
        "name": "NEXT_PUBLIC_GH_OWNER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-new/config-EiHL99:NEXT_PUBLIC_GH_OWNER::"
      },
      {
        "name": "NEXT_PUBLIC_GH_REPO",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-new/config-EiHL99:NEXT_PUBLIC_GH_REPO::"
      },
      {
        "name": "NEXT_PUBLIC_HEX_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-new/config-EiHL99:NEXT_PUBLIC_HEX_KEY::"
      },
      {
        "name": "OPENAI_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-new/config-EiHL99:OPENAI_API_KEY::"
      },
      {
        "name": "PERMISSION_PRODUCT_CODE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-new/config-EiHL99:PERMISSION_PRODUCT_CODE::"
      },
      {
        "name": "NEXT_PUBLIC_auth_product_code",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-new/config-EiHL99:NEXT_PUBLIC_auth_product_code::"
      },
      {
        "name": "QSTASH_CURRENT_SIGNING_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-new/config-EiHL99:QSTASH_CURRENT_SIGNING_KEY::"
      },
      {
        "name": "QSTASH_NEXT_SIGNING_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-new/config-EiHL99:QSTASH_NEXT_SIGNING_KEY::"
      },
      {
        "name": "QSTASH_TOKEN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-new/config-EiHL99:QSTASH_TOKEN::"
      },
      {
        "name": "QSTASH_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-new/config-EiHL99:QSTASH_URL::"
      },
      {
        "name": "SQL_DATABASE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-new/config-EiHL99:SQL_DATABASE::"
      },
      {
        "name": "SQL_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:host::"
      },
      {
        "name": "SQL_PASSWORD_BASE64",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-new/config-EiHL99:SQL_PASSWORD_BASE64::"
      },
      {
        "name": "SQL_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:username::"
      },
      {
        "name": "TWILIO_ACCOUNT_SID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-new/config-EiHL99:TWILIO_ACCOUNT_SID::"
      },
      {
        "name": "NEXT_PUBLIC_DBI_APP_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-new/config-EiHL99:NEXT_PUBLIC_DBI_APP_URL::"
      },
      {
        "name": "TWILIO_AUTH_TOKEN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-new/config-EiHL99:TWILIO_AUTH_TOKEN::"
      },
      {
        "name": "TWILIO_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-new/config-EiHL99:TWILIO_URL::"
      },
      {
        "name": "TELNYX_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-new/config-EiHL99:TELNYX_API_KEY::"
      },
      {
        "name": "TELNYX_INBOUND_CONNECTION_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-new/config-EiHL99:TELNYX_INBOUND_CONNECTION_ID::"
      },
      {
        "name": "retryWrites",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-new/config-EiHL99:retryWrites::"
      },
      {
        "name": "TWILIO_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-new/config-EiHL99:TWILIO_API_KEY::"
      },
      {
        "name": "TWILIO_API_SECRET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-new/config-EiHL99:TWILIO_API_SECRET::"
      },
      {
        "name": "TWILIO_SERVICE_SID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-new/config-EiHL99:TWILIO_SERVICE_SID::"
      },
      {
        "name": "TWILIO_TWIML_APP_SID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-new/config-EiHL99:TWILIO_TWIML_APP_SID::"
      },
      {
        "name": "TWILIO_PUSH_CREDENTIAL_SID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-new/config-EiHL99:TWILIO_PUSH_CREDENTIAL_SID::"
      },
      {
        "name": "TWILIO_IOS_PUSH_CREDENTIAL_SID_SANDBOX",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-new/config-EiHL99:TWILIO_IOS_PUSH_CREDENTIAL_SID_SANDBOX::"
      },
      {
        "name": "TWILIO_IOS_PUSH_CREDENTIAL_SID_PRODUCTION",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-new/config-EiHL99:TWILIO_IOS_PUSH_CREDENTIAL_SID_PRODUCTION::"
      },
      {
        "name": "TWILIO_SEND_MANUAL_FCM",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-new/config-EiHL99:TWILIO_SEND_MANUAL_FCM::"
      },
      {
        "name": "TRANSCRIPT_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-new/config-EiHL99:TRANSCRIPT_BASE_URL::"
      },
      {
        "name": "GOOGLE_CLIENT_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-new/config-EiHL99:GOOGLE_CLIENT_ID::"
      },
      {
        "name": "GOOGLE_CLIENT_SECRET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-new/config-EiHL99:GOOGLE_CLIENT_SECRET::"
      },
      {
        "name": "OUTLOOK_TENANT_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-new/config-EiHL99:OUTLOOK_TENANT_ID::"
      },
      {
        "name": "OUTLOOK_WEBHOOK_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-new/config-EiHL99:OUTLOOK_WEBHOOK_URL::"
      },
      {
        "name": "OUTLOOK_BOUNCE_WEBHOOK_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-new/config-EiHL99:OUTLOOK_BOUNCE_WEBHOOK_URL::"
      },
      {
        "name": "STRIPE_SECRET_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-new/config-EiHL99:STRIPE_SECRET_KEY::"
      },
      {
        "name": "STRIPE_ENDPOINT_SECRET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-new/config-EiHL99:STRIPE_ENDPOINT_SECRET::"
      },
      {
        "name": "FIREBASE_SERVICE_ACCOUNT_JSON",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-new/config-EiHL99:FIREBASE_SERVICE_ACCOUNT_JSON::"
      },
      {
        "name": "FIREBASE_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-new/config-EiHL99:FIREBASE_BASE_URL::"
      },
      {
        "name": "MONGO_URI_COMPANY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-new/config-EiHL99:MONGO_URI_COMPANY::"
      },
      {
        "name": "ELASTICSEARCH_NODE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-new/config-EiHL99:ELASTICSEARCH_NODE::"
      },
      {
        "name": "ELASTICSEARCH_USERNAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-new/config-EiHL99:ELASTICSEARCH_USERNAME::"
      },
      {
        "name": "ELASTICSEARCH_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-new/config-EiHL99:ELASTICSEARCH_PASSWORD::"
      },
      {
        "name": "FINDSUPPLIER_ACTIVITY_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-new/config-EiHL99:FINDSUPPLIER_ACTIVITY_URL::"
      },
      {
        "name": "ENFORCE_CLIENT_VERSION_GATE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-new/config-EiHL99:ENFORCE_CLIENT_VERSION_GATE::"
      },
      {
        "name": "MIN_DESKTOP_APP_VERSION",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-new/config-EiHL99:MIN_DESKTOP_APP_VERSION::"
      },
      {
        "name": "MIN_MOBILE_APP_VERSION",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-new/config-EiHL99:MIN_MOBILE_APP_VERSION::"
      },
      {
        "name": "INTERNAL_SYNC_SECRET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/buyersflow-new/config-EiHL99:INTERNAL_SYNC_SECRET::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-buyersflow-new",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "buyersflow-new"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_buyersflow_website_r3" {
  family                   = "development-buyersflow-website"
  network_mode             = "awsvpc"
  cpu                      = "256"
  memory                   = "512"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "buyersflow-website",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/buyersflow-website:sha-f409ee0",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "buyersflow-website",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "production"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-buyersflow-website",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "buyersflow-website"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_calculator_demo_migration_r1" {
  family                   = "development-calculator-demo-migration"
  network_mode             = "awsvpc"
  cpu                      = "1024"
  memory                   = "2048"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "calculator-demo-migration",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/calculator-v2:latest-v4",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/dev-calculator-demo-migration",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "ecs"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_calculator_v2_r2" {
  family                   = "development-calculator-v2"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "calculator-v2",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/calculator-v2:sha-ca19db2",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "calculator-v2",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "production"
      }
    ],
    "secrets": [
      {
        "name": "VITE_GLOBAL_API_ENDPOINT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/calculator-v2/config:VITE_GLOBAL_API_ENDPOINT::"
      },
      {
        "name": "VITE_REPORT_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/calculator-v2/config:VITE_REPORT_URL::"
      },
      {
        "name": "VITE_AI_ASSISTANT_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/calculator-v2/config:VITE_AI_ASSISTANT_URL::"
      },
      {
        "name": "VITE_REPORT_TYPE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/calculator-v2/config:VITE_REPORT_TYPE::"
      },
      {
        "name": "VITE_COMPANY_BASE_CURRENCY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/calculator-v2/config:VITE_COMPANY_BASE_CURRENCY::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-calculator-v2",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "calculator-v2"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_communication_backend_r3" {
  family                   = "development-communication-backend"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "communication-backend",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/communication-backend:sha-054bbd8",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "communication-backend",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "development"
      }
    ],
    "secrets": [
      {
        "name": "ALLOWED_HOSTS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/communication-backend/config-VJZQ6o:ALLOWED_HOSTS::"
      },
      {
        "name": "AWS_S3_REGION",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/communication-backend/config-VJZQ6o:AWS_S3_REGION::"
      },
      {
        "name": "CORS_ORIGIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/communication-backend/config-VJZQ6o:CORS_ORIGIN::"
      },
      {
        "name": "DB_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/communication-backend/config-VJZQ6o:DB_NAME::"
      },
      {
        "name": "DEBUG",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/communication-backend/config-VJZQ6o:DEBUG::"
      },
      {
        "name": "GLOBAL_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/communication-backend/config-VJZQ6o:GLOBAL_API_URL::"
      },
      {
        "name": "HEX_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/communication-backend/config-VJZQ6o:HEX_KEY::"
      },
      {
        "name": "N8N_WEBHOOK_AUTH",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/communication-backend/config-VJZQ6o:N8N_WEBHOOK_AUTH::"
      },
      {
        "name": "N8N_WEBHOOK_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/communication-backend/config-VJZQ6o:N8N_WEBHOOK_URL::"
      },
      {
        "name": "DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:host::"
      },
      {
        "name": "DB_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:password::"
      },
      {
        "name": "DB_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:port::"
      },
      {
        "name": "DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:username::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-communication-backend",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "communication-backend"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_communication_frontend_r5" {
  family                   = "development-communication-frontend"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "communication-frontend",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/communication-frontend:sha-af71a81",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "communication-frontend",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "development"
      }
    ],
    "secrets": [
      {
        "name": "VITE_API_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/communication-frontend/config-8OVVQ9:VITE_API_BASE_URL::"
      },
      {
        "name": "VITE_GLOBAL_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/communication-frontend/config-8OVVQ9:VITE_GLOBAL_URL::"
      },
      {
        "name": "VITE_LICENSE_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/communication-frontend/config-8OVVQ9:VITE_LICENSE_KEY::"
      },
      {
        "name": "VITE_LOGIN_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/communication-frontend/config-8OVVQ9:VITE_LOGIN_URL::"
      },
      {
        "name": "VITE_PROFILE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/communication-frontend/config-8OVVQ9:VITE_PROFILE_URL::"
      },
      {
        "name": "VITE_VERIFY_TOKEN_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/communication-frontend/config-8OVVQ9:VITE_VERIFY_TOKEN_BASE_URL::"
      },
      {
        "name": "VITE_PERMISSION_GATEWAY_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/communication-frontend/config-8OVVQ9:VITE_PERMISSION_GATEWAY_URL::"
      },
      {
        "name": "VITE_PERMISSION_GATEWAY_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/communication-frontend/config-8OVVQ9:VITE_PERMISSION_GATEWAY_API_KEY::"
      },
      {
        "name": "VITE_PRODUCT_CODE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/communication-frontend/config-8OVVQ9:VITE_PRODUCT_CODE::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-communication-frontend",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "communication-frontend"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_company_research_backend_r26" {
  family                   = "development-company-research-backend"
  network_mode             = "awsvpc"
  cpu                      = "1024"
  memory                   = "2048"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "company-research-backend",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/company-research-backend:sha-a655cd8",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "company-research-backend",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      }
    ],
    "secrets": [
      {
        "name": "EMAIL_SERVICE_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/company-research-backend/config:EMAIL_SERVICE_NAME::"
      },
      {
        "name": "OPEN_AI_MODEL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/company-research-backend/config:OPEN_AI_MODEL::"
      },
      {
        "name": "OPENAI_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/company-research-backend/config:OPENAI_API_KEY::"
      },
      {
        "name": "SERPER_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/company-research-backend/config:SERPER_API_KEY::"
      },
      {
        "name": "MONGO_URI",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/company-research-backend/config:MONGO_URI::"
      },
      {
        "name": "MONGO_URI_C1",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/company-research-backend/config:MONGO_URI_C1::"
      },
      {
        "name": "ELASTIC_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/company-research-backend/config:ELASTIC_HOST::"
      },
      {
        "name": "ELASTIC_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/company-research-backend/config:ELASTIC_PORT::"
      },
      {
        "name": "ELASTIC_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/company-research-backend/config:ELASTIC_USER::"
      },
      {
        "name": "ELASTIC_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/company-research-backend/config:ELASTIC_PASSWORD::"
      },
      {
        "name": "SSO_HOSTNAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/company-research-backend/config:SSO_HOSTNAME::"
      },
      {
        "name": "SSO_USERNAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/company-research-backend/config:SSO_USERNAME::"
      },
      {
        "name": "SSO_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/company-research-backend/config:SSO_PASSWORD::"
      },
      {
        "name": "SSO_DATABASE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/company-research-backend/config:SSO_DATABASE::"
      },
      {
        "name": "RSA_PUBLIC_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/company-research-backend/config:RSA_PUBLIC_KEY::"
      },
      {
        "name": "NEXUS_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/company-research-backend/config:NEXUS_URL::"
      },
      {
        "name": "APP_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/company-research-backend/config:APP_URL::"
      },
      {
        "name": "TOKEN_VERIFY_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/company-research-backend/config:TOKEN_VERIFY_URL::"
      },
      {
        "name": "DECRYPT_USER_ID_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/company-research-backend/config:DECRYPT_USER_ID_URL::"
      },
      {
        "name": "ENCRYPT_HEX_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-hex-key/config-BGrEHQ:ENCRYPT_HEX_KEY::"
      },
      {
        "name": "MAIL_SERVER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/company-research-backend/config:MAIL_SERVER::"
      },
      {
        "name": "MAIL_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/company-research-backend/config:MAIL_PORT::"
      },
      {
        "name": "MAIL_USE_TLS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/company-research-backend/config:MAIL_USE_TLS::"
      },
      {
        "name": "MAIL_USE_SSL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/company-research-backend/config:MAIL_USE_SSL::"
      },
      {
        "name": "MAIL_USERNAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/company-research-backend/config:MAIL_USERNAME::"
      },
      {
        "name": "MAIL_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/company-research-backend/config:MAIL_PASSWORD::"
      },
      {
        "name": "MAIL_DEFAULT_SENDER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/company-research-backend/config:MAIL_DEFAULT_SENDER::"
      },
      {
        "name": "FLASK_SECRET_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/company-research-backend/config:FLASK_SECRET_KEY::"
      },
      {
        "name": "DEFAULT_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/company-research-backend/config:DEFAULT_API_KEY::"
      },
      {
        "name": "N8N_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/company-research-backend/config:N8N_BASE_URL::"
      },
      {
        "name": "N8N_AUTH_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/company-research-backend/config:N8N_AUTH_KEY::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-company-research-backend",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "company-research-backend"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_compliance_service_r7" {
  family                   = "development-compliance-service"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "compliance-service",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/compliance-service:sha-bcc3924-35095818157",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "compliance-service",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "development"
      }
    ],
    "secrets": [
      {
        "name": "ALLOWED_ORIGINS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/compliance-service/config:ALLOWED_ORIGINS::"
      },
      {
        "name": "ENCRYPT_HEX_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-hex-key/config-BGrEHQ:ENCRYPT_HEX_KEY::"
      },
      {
        "name": "AWS_REGION",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/compliance-service/config:AWS_REGION::"
      },
      {
        "name": "AWS_S3_BUCKET_COMPLIANCE_EVIDENCE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/compliance-service/config:AWS_S3_BUCKET_COMPLIANCE_EVIDENCE::"
      },
      {
        "name": "NEXT_DB_POOL_LIMIT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/compliance-service/config:NEXT_DB_POOL_LIMIT::"
      },
      {
        "name": "NEXT_DB_QUEUE_LIMIT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/compliance-service/config:NEXT_DB_QUEUE_LIMIT::"
      },
      {
        "name": "NEXT_PUBLIC_DBI360_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/compliance-service/config:NEXT_PUBLIC_DBI360_API_URL::"
      },
      {
        "name": "NEXT_PUBLIC_DBI360_APP_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/compliance-service/config:NEXT_PUBLIC_DBI360_APP_URL::"
      },
      {
        "name": "NEXT_PUBLIC_DOMAIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/compliance-service/config:NEXT_PUBLIC_DOMAIN::"
      },
      {
        "name": "NEXT_PUBLIC_auth_product_code",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/compliance-service/config:NEXT_PUBLIC_auth_product_code::"
      },
      {
        "name": "NEXT_MYSQL_DB",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/compliance-service/config:NEXT_MYSQL_DB::"
      },
      {
        "name": "NEXT_MYSQL_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config:host::"
      },
      {
        "name": "NEXT_MYSQL_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config:username::"
      },
      {
        "name": "NEXT_MYSQL_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config:password::"
      },
      {
        "name": "NEXT_MYSQL_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config:port::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-compliance-service",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "compliance-service"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_confluxhr_website_frontend_r19" {
  family                   = "development-confluxhr-website-frontend"
  network_mode             = "awsvpc"
  cpu                      = "1024"
  memory                   = "2048"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "confluxhr-website-frontend",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/confluxhr-website-frontend:sha-aad4463",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "confluxhr-website-frontend",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "production"
      }
    ],
    "secrets": [
      {
        "name": "NEXT_PUBLIC_CHAT_BOT_CLIENT_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/confluxhr-website-frontend/config:NEXT_PUBLIC_CHAT_BOT_CLIENT_KEY::"
      },
      {
        "name": "NEXT_PUBLIC_CHAT_BOT_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/confluxhr-website-frontend/config:NEXT_PUBLIC_CHAT_BOT_URL::"
      },
      {
        "name": "NEXT_PUBLIC_N8N_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/confluxhr-website-frontend/config:NEXT_PUBLIC_N8N_BASE_URL::"
      },
      {
        "name": "NEXT_PUBLIC_N8N_NEWSLETTER_WEBHOOK_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/confluxhr-website-frontend/config:NEXT_PUBLIC_N8N_NEWSLETTER_WEBHOOK_URL::"
      },
      {
        "name": "NEXT_PUBLIC_N8N_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/confluxhr-website-frontend/config:NEXT_PUBLIC_N8N_PASSWORD::"
      },
      {
        "name": "NEXT_PUBLIC_N8N_TRIAL_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/confluxhr-website-frontend/config:NEXT_PUBLIC_N8N_TRIAL_URL::"
      },
      {
        "name": "NEXT_PUBLIC_N8N_USERNAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/confluxhr-website-frontend/config:NEXT_PUBLIC_N8N_USERNAME::"
      },
      {
        "name": "NEXT_PUBLIC_N8N_WEBHOOK_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/confluxhr-website-frontend/config:NEXT_PUBLIC_N8N_WEBHOOK_URL::"
      },
      {
        "name": "NEXT_PUBLIC_RECAPTCHA_SITE_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/confluxhr-website-frontend/config:NEXT_PUBLIC_RECAPTCHA_SITE_KEY::"
      },
      {
        "name": "RECAPTCHA_SECRET_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/confluxhr-website-frontend/config:RECAPTCHA_SECRET_KEY::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-confluxhr-website-frontend",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "confluxhr-website-frontend"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_customer_map_service_backend_r16" {
  family                   = "development-customer-map-service-backend"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "customer-map-service-backend",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/customer-map-service-backend:sha-80fe475-33603417952",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "customer-map-service-backend",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "development"
      }
    ],
    "secrets": [
      {
        "name": "CORS_ALLOWED_ORIGINS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/customer-map-service-backend/config-RKQ4SC:CORS_ALLOWED_ORIGINS::"
      },
      {
        "name": "CSRF_TRUSTED_ORIGINS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/customer-map-service-backend/config-RKQ4SC:CSRF_TRUSTED_ORIGINS::"
      },
      {
        "name": "DEBUG",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/customer-map-service-backend/config-RKQ4SC:DEBUG::"
      },
      {
        "name": "GLOBAL_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/customer-map-service-backend/config-RKQ4SC:GLOBAL_API_URL::"
      },
      {
        "name": "GLOBAL_APP_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/customer-map-service-backend/config-RKQ4SC:GLOBAL_APP_URL::"
      },
      {
        "name": "MEDIA_ROOT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/customer-map-service-backend/config-RKQ4SC:MEDIA_ROOT::"
      },
      {
        "name": "MEDIA_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/customer-map-service-backend/config-RKQ4SC:MEDIA_URL::"
      },
      {
        "name": "MYSQL_DATABASE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/customer-map-service-backend/config-RKQ4SC:MYSQL_DATABASE::"
      },
      {
        "name": "MYSQL_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:host::"
      },
      {
        "name": "MYSQL_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/customer-map-service-backend/config-RKQ4SC:password::"
      },
      {
        "name": "MYSQL_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:port::"
      },
      {
        "name": "MYSQL_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/customer-map-service-backend/config-RKQ4SC:username::"
      },
      {
        "name": "ORIGIN_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/customer-map-service-backend/config-RKQ4SC:ORIGIN_URL::"
      },
      {
        "name": "PERMISSION_GATEWAY_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/customer-map-service-backend/config-RKQ4SC:PERMISSION_GATEWAY_API_KEY::"
      },
      {
        "name": "PERMISSION_GATEWAY_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/customer-map-service-backend/config-RKQ4SC:PERMISSION_GATEWAY_URL::"
      },
      {
        "name": "REFERER_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/customer-map-service-backend/config-RKQ4SC:REFERER_URL::"
      },
      {
        "name": "SECRET_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/customer-map-service-backend/config-RKQ4SC:SECRET_KEY::"
      },
      {
        "name": "STATIC_ROOT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/customer-map-service-backend/config-RKQ4SC:STATIC_ROOT::"
      },
      {
        "name": "STATIC_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/customer-map-service-backend/config-RKQ4SC:STATIC_URL::"
      },
      {
        "name": "SUPPLIER_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/customer-map-service-backend/config-RKQ4SC:SUPPLIER_API_KEY::"
      },
      {
        "name": "SUPPLIER_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/customer-map-service-backend/config-RKQ4SC:SUPPLIER_API_URL::"
      },
      {
        "name": "ENCRYPT_HEX_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-hex-key/config-BGrEHQ:ENCRYPT_HEX_KEY::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-customer-map-service-backend",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "customer-map-service-backend"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_customer_map_service_frontend_r6" {
  family                   = "development-customer-map-service-frontend"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "customer-map-service-frontend",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/customer-map-service-frontend:sha-19633f5-35689172829",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "customer-map-service-frontend",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "development"
      }
    ],
    "secrets": [
      {
        "name": "VITE_API_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/customer-map-service-frontend/config-5kOc2P:VITE_API_BASE_URL::"
      },
      {
        "name": "VITE_APP_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/customer-map-service-frontend/config-5kOc2P:VITE_APP_URL::"
      },
      {
        "name": "VITE_ENTITY_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/customer-map-service-frontend/config-5kOc2P:VITE_ENTITY_URL::"
      },
      {
        "name": "VITE_FINANCE_REPORTS_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/customer-map-service-frontend/config-5kOc2P:VITE_FINANCE_REPORTS_URL::"
      },
      {
        "name": "VITE_GLOBAL_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/customer-map-service-frontend/config-5kOc2P:VITE_GLOBAL_API_URL::"
      },
      {
        "name": "VITE_LOGIN_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/customer-map-service-frontend/config-5kOc2P:VITE_LOGIN_URL::"
      },
      {
        "name": "VITE_PROFILE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/customer-map-service-frontend/config-5kOc2P:VITE_PROFILE_URL::"
      },
      {
        "name": "VITE_SALES_INTELLIGENCE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/customer-map-service-frontend/config-5kOc2P:VITE_SALES_INTELLIGENCE_URL::"
      },
      {
        "name": "VITE_SALES_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/customer-map-service-frontend/config-5kOc2P:VITE_SALES_URL::"
      },
      {
        "name": "VITE_VERIFY_TOKEN_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/customer-map-service-frontend/config-5kOc2P:VITE_VERIFY_TOKEN_BASE_URL::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-customer-map-service-frontend",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "customer-map-service-frontend"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_dbi_chat_area_r215" {
  family                   = "development-dbi-chat-area"
  network_mode             = "awsvpc"
  cpu                      = "1024"
  memory                   = "2048"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "dbi-chat-area",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/dbi-chat-area:sha-2998302-37883914916",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "dbi-chat-area",
        "appProtocol": "http"
      }
    ],
    "secrets": [
      {
        "name": "VITE_SOCKET_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/dbi-chat-area/config:VITE_SOCKET_URL::"
      },
      {
        "name": "VITE_NOTIFICATION_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/dbi-chat-area/config:VITE_NOTIFICATION_API_URL::"
      },
      {
        "name": "VITE_GLOBAL_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/dbi-chat-area/config:VITE_GLOBAL_URL::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-dbi-chat-area",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "dbi-chat-area"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_dbi_chat_widget_r119" {
  family                   = "development-dbi-chat-widget"
  network_mode             = "awsvpc"
  cpu                      = "1024"
  memory                   = "2048"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "dbi-chat-widget",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/dbi-chat-widget:sha-c52a9a0-37725127527",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "dbi-chat-widget",
        "appProtocol": "http"
      }
    ],
    "secrets": [
      {
        "name": "VITE_API_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/dbi-chat-widget/config:VITE_API_BASE_URL::"
      },
      {
        "name": "VITE_WIDGET_CONFIG_ENDPOINT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/dbi-chat-widget/config:VITE_WIDGET_CONFIG_ENDPOINT::"
      },
      {
        "name": "WIDGET_ALLOWED_HOSTS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/dbi-chat-widget/config:WIDGET_ALLOWED_HOSTS::"
      },
      {
        "name": "WIDGET_CSS_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/dbi-chat-widget/config:WIDGET_CSS_URL::"
      },
      {
        "name": "WIDGET_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/dbi-chat-widget/config:WIDGET_NAME::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-dbi-chat-widget",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "dbi-chat-widget"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_dbi_websocket_r249" {
  family                   = "development-dbi-websocket"
  network_mode             = "awsvpc"
  cpu                      = "1024"
  memory                   = "2048"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "dbi-websocket",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/dbi-websocket:sha-cdf985a-37883924061",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "dbi-websocket",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "SOCKET_AUTH_ENFORCE",
        "value": "true"
      },
      {
        "name": "RATE_LIMIT_MAX",
        "value": "1000"
      },
      {
        "name": "OPENAI_EMBED_MODEL",
        "value": "text-embedding-ada-002"
      },
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "DB_PORT",
        "value": "3306"
      },
      {
        "name": "MS_LOGIN_URL",
        "value": "https://login.microsoftonline.com"
      },
      {
        "name": "MS_GRAPH_URL",
        "value": "https://graph.microsoft.com/v1.0"
      },
      {
        "name": "RATE_LIMIT_IP_MAX",
        "value": "20000"
      },
      {
        "name": "ROLE_PERMISSION_USERS_URL",
        "value": "https://rolespermissions.demodbi360.com"
      },
      {
        "name": "REDIS_LOG",
        "value": "false"
      },
      {
        "name": "CHATBOT_PRODUCT_CODE",
        "value": "40"
      },
      {
        "name": "OPENAI_MODEL",
        "value": "gpt-4o-mini"
      },
      {
        "name": "REDIS_URL",
        "value": "redis://localhost:6379"
      },
      {
        "name": "RATE_LIMIT_VERIFY_MAX",
        "value": "120"
      }
    ],
    "secrets": [
      {
        "name": "N8N_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/dbi-websocket/config:N8N_BASE_URL::"
      },
      {
        "name": "N8N_USERNAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/dbi-websocket/config:N8N_USERNAME::"
      },
      {
        "name": "N8N_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/dbi-websocket/config:N8N_PASSWORD::"
      },
      {
        "name": "N8N_CUSTOM_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/dbi-websocket/config:N8N_CUSTOM_API_KEY::"
      },
      {
        "name": "DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/dbi-websocket/config:DB_HOST::"
      },
      {
        "name": "DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/dbi-websocket/config:username::"
      },
      {
        "name": "DB_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/dbi-websocket/config:password::"
      },
      {
        "name": "DB_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/dbi-websocket/config:DB_NAME::"
      },
      {
        "name": "ALLOWED_ORIGINS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/dbi-websocket/config:ALLOWED_ORIGINS::"
      },
      {
        "name": "ACCESS_TOKEN_SECRET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/dbi-websocket/config:ACCESS_TOKEN_SECRET::"
      },
      {
        "name": "ACCESS_TOKEN_EXPIRES_IN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/dbi-websocket/config:ACCESS_TOKEN_EXPIRES_IN::"
      },
      {
        "name": "MONGODB_URI",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/dbi-websocket/config:MONGODB_URI::"
      },
      {
        "name": "MONGODB_DB_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/dbi-websocket/config:MONGODB_DB_NAME::"
      },
      {
        "name": "GLOBAL_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/dbi-websocket/config:GLOBAL_API_URL::"
      },
      {
        "name": "ENCRYPT_HEX_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-hex-key/config-BGrEHQ:ENCRYPT_HEX_KEY::"
      },
      {
        "name": "ORIGIN_SOURCE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/dbi-websocket/config:ORIGIN_SOURCE::"
      },
      {
        "name": "AWS_BUCKET_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/dbi-websocket/config:AWS_BUCKET_NAME::"
      },
      {
        "name": "AWS_REGION",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/dbi-websocket/config:AWS_REGION::"
      },
      {
        "name": "PERMISSION_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/dbi-websocket/config:PERMISSION_URL::"
      },
      {
        "name": "PERMISSION_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/dbi-websocket/config:PERMISSION_KEY::"
      },
      {
        "name": "OPENAI_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/dbi-websocket/config:OPENAI_API_KEY::"
      },
      {
        "name": "QDRANT_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/dbi-websocket/config:QDRANT_URL::"
      },
      {
        "name": "QDRANT_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/dbi-websocket/config:QDRANT_API_KEY::"
      },
      {
        "name": "STRIPE_PUB_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/dbi-websocket/config:STRIPE_PUB_KEY::"
      },
      {
        "name": "STRIPE_SECRET_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/dbi-websocket/config:STRIPE_SECRET_KEY::"
      },
      {
        "name": "STRIPE_WEBHOOK_SECRET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/dbi-websocket/config:STRIPE_WEBHOOK_SECRET::"
      },
      {
        "name": "GLOBAL_API_DATABASE_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/dbi-websocket/config:GLOBAL_API_DATABASE_ID::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-dbi-websocket",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "dbi-websocket"
      }
    }
  },
  {
    "name": "redis",
    "image": "redis:7-alpine@sha256:e7723ff73d963f5cc6d9c4643ea3d989527a402a319239054e9472a7fb9219a2",
    "cpu": 128,
    "memory": 256,
    "essential": true,
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-dbi-websocket",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "redis"
      }
    },
    "command": [
      "redis-server",
      "--appendonly",
      "no",
      "--maxmemory",
      "192mb",
      "--maxmemory-policy",
      "allkeys-lru"
    ]
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_drmallad_r28" {
  family                   = "development-drmallad"
  network_mode             = "awsvpc"
  cpu                      = "1024"
  memory                   = "2048"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "drmallad",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/drmallad:sha-857a215-37615891425",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "drmallad",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "NODE_ENV",
        "value": "production"
      },
      {
        "name": "NEXT_INTERNAL_PORT",
        "value": "3000"
      }
    ],
    "secrets": [
      {
        "name": "DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:host::"
      },
      {
        "name": "DB_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:port::"
      },
      {
        "name": "DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:username::"
      },
      {
        "name": "DB_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:password::"
      },
      {
        "name": "DB_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/drmallad/config-uJ1qCI:DB_NAME::"
      },
      {
        "name": "N8N_USERNAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/drmallad/config-uJ1qCI:N8N_USERNAME::"
      },
      {
        "name": "N8N_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/drmallad/config-uJ1qCI:N8N_PASSWORD::"
      },
      {
        "name": "JOIN_COMMUNITY_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/drmallad/config-uJ1qCI:JOIN_COMMUNITY_URL::"
      },
      {
        "name": "ANON_QUESTION_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/drmallad/config-uJ1qCI:ANON_QUESTION_URL::"
      },
      {
        "name": "NEXT_PUBLIC_RECAPTCHA_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/drmallad/config-uJ1qCI:NEXT_PUBLIC_RECAPTCHA_KEY::"
      },
      {
        "name": "RECAPTCHA_SECRET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/drmallad/config-uJ1qCI:RECAPTCHA_SECRET::"
      },
      {
        "name": "CUSTOM_CLIENT_EMAIL_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/drmallad/config-uJ1qCI:CUSTOM_CLIENT_EMAIL_URL::"
      },
      {
        "name": "VALIDTO_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/drmallad/config-uJ1qCI:VALIDTO_API_KEY::"
      },
      {
        "name": "APP_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/drmallad/config-uJ1qCI:APP_BASE_URL::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-drmallad",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "drmallad"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_ecommerce_frontend_next_r71" {
  family                   = "development-ecommerce-frontend-next"
  network_mode             = "awsvpc"
  cpu                      = "1024"
  memory                   = "2048"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "ecommerce-frontend-next",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/ecommerce-frontend-next:sha-1ccc6bb-37424296539",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "ecommerce-frontend-next",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "production"
      }
    ],
    "secrets": [
      {
        "name": "COMPANY_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ecommerce-frontend-next/config-6RseIQ:COMPANY_ID::"
      },
      {
        "name": "NEXT_CREATE_SESSION_ENDPOINT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ecommerce-frontend-next/config-6RseIQ:NEXT_CREATE_SESSION_ENDPOINT::"
      },
      {
        "name": "NEXT_PUBLIC_ACCEPT_SESSION_ENDPOINT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ecommerce-frontend-next/config-6RseIQ:NEXT_PUBLIC_ACCEPT_SESSION_ENDPOINT::"
      },
      {
        "name": "NEXT_PUBLIC_ADD_COLLECTION_ENDPOINT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ecommerce-frontend-next/config-6RseIQ:NEXT_PUBLIC_ADD_COLLECTION_ENDPOINT::"
      },
      {
        "name": "NEXT_PUBLIC_API_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ecommerce-frontend-next/config-6RseIQ:NEXT_PUBLIC_API_BASE_URL::"
      },
      {
        "name": "NEXT_PUBLIC_APP_NEXUS_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ecommerce-frontend-next/config-6RseIQ:NEXT_PUBLIC_APP_NEXUS_API_KEY::"
      },
      {
        "name": "NEXT_PUBLIC_APP_NEXUS_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ecommerce-frontend-next/config-6RseIQ:NEXT_PUBLIC_APP_NEXUS_URL::"
      },
      {
        "name": "NEXT_PUBLIC_BACKEND_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ecommerce-frontend-next/config-6RseIQ:NEXT_PUBLIC_BACKEND_API_KEY::"
      },
      {
        "name": "NEXT_PUBLIC_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ecommerce-frontend-next/config-6RseIQ:NEXT_PUBLIC_BASE_URL::"
      },
      {
        "name": "NEXT_PUBLIC_CANCELSOORDER_PDF_WEBHOOKS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ecommerce-frontend-next/config-6RseIQ:NEXT_PUBLIC_CANCELSOORDER_PDF_WEBHOOKS::"
      },
      {
        "name": "NEXT_PUBLIC_CHATBOT_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ecommerce-frontend-next/config-6RseIQ:NEXT_PUBLIC_CHATBOT_URL::"
      },
      {
        "name": "NEXT_PUBLIC_CHAT_BOT_CLIENT_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ecommerce-frontend-next/config-6RseIQ:NEXT_PUBLIC_CHAT_BOT_CLIENT_KEY::"
      },
      {
        "name": "NEXT_PUBLIC_CHAT_BOT_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ecommerce-frontend-next/config-6RseIQ:NEXT_PUBLIC_CHAT_BOT_URL::"
      },
      {
        "name": "NEXT_PUBLIC_CLOUDFRONT_URL_PRODUCT_IMG",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ecommerce-frontend-next/config-6RseIQ:NEXT_PUBLIC_CLOUDFRONT_URL_PRODUCT_IMG::"
      },
      {
        "name": "NEXT_PUBLIC_CLOUDFRONT_URL_PUBLIC_IMG",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ecommerce-frontend-next/config-6RseIQ:NEXT_PUBLIC_CLOUDFRONT_URL_PUBLIC_IMG::"
      },
      {
        "name": "NEXT_PUBLIC_CN_CLOUDFRONTURL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ecommerce-frontend-next/config-6RseIQ:NEXT_PUBLIC_CN_CLOUDFRONTURL::"
      },
      {
        "name": "NEXT_PUBLIC_CN_CLOUDFRONT_PUBLIC_IMG",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ecommerce-frontend-next/config-6RseIQ:NEXT_PUBLIC_CN_CLOUDFRONT_PUBLIC_IMG::"
      },
      {
        "name": "NEXT_PUBLIC_CREATE_SESSION_ENDPOINT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ecommerce-frontend-next/config-6RseIQ:NEXT_PUBLIC_CREATE_SESSION_ENDPOINT::"
      },
      {
        "name": "NEXT_PUBLIC_GET_CONVERSATION_ENDPOINT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ecommerce-frontend-next/config-6RseIQ:NEXT_PUBLIC_GET_CONVERSATION_ENDPOINT::"
      },
      {
        "name": "NEXT_PUBLIC_GTM_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ecommerce-frontend-next/config-6RseIQ:NEXT_PUBLIC_GTM_ID::"
      },
      {
        "name": "NEXT_PUBLIC_INVOICE_PDF_WEBHOOKS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ecommerce-frontend-next/config-6RseIQ:NEXT_PUBLIC_INVOICE_PDF_WEBHOOKS::"
      },
      {
        "name": "NEXT_PUBLIC_LOCATION_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ecommerce-frontend-next/config-6RseIQ:NEXT_PUBLIC_LOCATION_KEY::"
      },
      {
        "name": "NEXT_PUBLIC_LOCATION_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ecommerce-frontend-next/config-6RseIQ:NEXT_PUBLIC_LOCATION_URL::"
      },
      {
        "name": "N8N_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ecommerce-frontend-next/config-6RseIQ:NEXT_PUBLIC_N8N_PASSWORD::"
      },
      {
        "name": "N8N_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ecommerce-frontend-next/config-6RseIQ:NEXT_PUBLIC_N8N_URL::"
      },
      {
        "name": "N8N_USERNAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ecommerce-frontend-next/config-6RseIQ:NEXT_PUBLIC_N8N_USERNAME::"
      },
      {
        "name": "NEXT_PUBLIC_N8N_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ecommerce-frontend-next/config-6RseIQ:NEXT_PUBLIC_N8N_PASSWORD::"
      },
      {
        "name": "NEXT_PUBLIC_N8N_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ecommerce-frontend-next/config-6RseIQ:NEXT_PUBLIC_N8N_URL::"
      },
      {
        "name": "NEXT_PUBLIC_N8N_USERNAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ecommerce-frontend-next/config-6RseIQ:NEXT_PUBLIC_N8N_USERNAME::"
      },
      {
        "name": "NEXT_PUBLIC_PAYMENTS_PDF_WEBHOOKS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ecommerce-frontend-next/config-6RseIQ:NEXT_PUBLIC_PAYMENTS_PDF_WEBHOOKS::"
      },
      {
        "name": "NEXT_PUBLIC_PRODUCT_CODE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ecommerce-frontend-next/config-6RseIQ:NEXT_PUBLIC_PRODUCT_CODE::"
      },
      {
        "name": "NEXT_PUBLIC_QUOTATION_PDF_WEBHOOKS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ecommerce-frontend-next/config-6RseIQ:NEXT_PUBLIC_QUOTATION_PDF_WEBHOOKS::"
      },
      {
        "name": "NEXT_PUBLIC_RECAPTCHA_SITE_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ecommerce-frontend-next/config-6RseIQ:NEXT_PUBLIC_RECAPTCHA_SITE_KEY::"
      },
      {
        "name": "NEXT_PUBLIC_ROBOTS_META",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ecommerce-frontend-next/config-6RseIQ:NEXT_PUBLIC_ROBOTS_META::"
      },
      {
        "name": "NEXT_PUBLIC_SALESORDER_PDF_WEBHOOKS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ecommerce-frontend-next/config-6RseIQ:NEXT_PUBLIC_SALESORDER_PDF_WEBHOOKS::"
      },
      {
        "name": "NEXT_PUBLIC_SALES_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ecommerce-frontend-next/config-6RseIQ:NEXT_PUBLIC_SALES_API::"
      },
      {
        "name": "NEXT_PUBLIC_SALES_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ecommerce-frontend-next/config-6RseIQ:NEXT_PUBLIC_SALES_URL::"
      },
      {
        "name": "NEXT_PUBLIC_SAMPLEORDER_PDF_WEBHOOKS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ecommerce-frontend-next/config-6RseIQ:NEXT_PUBLIC_SAMPLEORDER_PDF_WEBHOOKS::"
      },
      {
        "name": "NEXT_PUBLIC_SOCKET_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ecommerce-frontend-next/config-6RseIQ:NEXT_PUBLIC_SOCKET_URL::"
      },
      {
        "name": "NEXT_PUBLIC_SSO_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ecommerce-frontend-next/config-6RseIQ:NEXT_PUBLIC_SSO_BASE_URL::"
      },
      {
        "name": "NEXT_PUBLIC_STRIPE_PUBLISHABLE_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ecommerce-frontend-next/config-6RseIQ:NEXT_PUBLIC_STRIPE_PUBLISHABLE_KEY::"
      },
      {
        "name": "RECAPTCHA_SECRET_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ecommerce-frontend-next/config-6RseIQ:RECAPTCHA_SECRET_KEY::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-ecommerce-frontend-next",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "ecommerce-frontend-next"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_entity_service_r71" {
  family                   = "development-entity-service"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "entity-service",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/entity-service:sha-21bad7c-37206624426",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "entity-service",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "development"
      }
    ],
    "secrets": [
      {
        "name": "ALLOWED_ORIGINS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/entity-service/config:ALLOWED_ORIGINS::"
      },
      {
        "name": "MARKETING_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/entity-service/config:MARKETING_API_URL::"
      },
      {
        "name": "NEXT_AES_HEX_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/entity-service/config:NEXT_AES_HEX_KEY::"
      },
      {
        "name": "MONGO_URI_COMPANY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/entity-service/config:MONGO_URI_COMPANY::"
      },
      {
        "name": "NEXT_AWS_BUCKET_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/entity-service/config:NEXT_AWS_BUCKET_NAME::"
      },
      {
        "name": "NEXT_AWS_BUCKET_REGION",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/entity-service/config:NEXT_AWS_BUCKET_REGION::"
      },
      {
        "name": "NEXT_AWS_REGION",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/entity-service/config:NEXT_AWS_REGION::"
      },
      {
        "name": "NEXT_COMPANY_RESEARCH_MONGO_URI",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/entity-service/config:NEXT_COMPANY_RESEARCH_MONGO_URI::"
      },
      {
        "name": "NEXT_DBI360_LOGIN_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/entity-service/config:NEXT_DBI360_LOGIN_URL::"
      },
      {
        "name": "NEXT_ELASTIC_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/entity-service/config:NEXT_ELASTIC_HOST::"
      },
      {
        "name": "NEXT_ELASTIC_PASS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/entity-service/config:NEXT_ELASTIC_PASS::"
      },
      {
        "name": "NEXT_ELASTIC_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/entity-service/config:NEXT_ELASTIC_USER::"
      },
      {
        "name": "NEXT_FINANCE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/entity-service/config:NEXT_FINANCE_URL::"
      },
      {
        "name": "NEXT_HRMS_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/entity-service/config:NEXT_HRMS_URL::"
      },
      {
        "name": "NEXT_IMAGE_CONFIG_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/entity-service/config:NEXT_IMAGE_CONFIG_API::"
      },
      {
        "name": "NEXT_LOCATION_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/entity-service/config:NEXT_LOCATION_API::"
      },
      {
        "name": "NEXT_LOCATION_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/entity-service/config:NEXT_LOCATION_API_KEY::"
      },
      {
        "name": "NEXT_MONGO_URI_COMPANY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/entity-service/config:NEXT_MONGO_URI_COMPANY::"
      },
      {
        "name": "NEXT_MYSQL_DB",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/entity-service/config:NEXT_MYSQL_DB::"
      },
      {
        "name": "NEXT_MYSQL_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config:host::"
      },
      {
        "name": "NEXT_MYSQL_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/entity-service/config:username::"
      },
      {
        "name": "NEXT_MYSQL_PASS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/entity-service/config:password::"
      },
      {
        "name": "NEXT_MYSQL_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config:port::"
      },
      {
        "name": "NEXT_N8N_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/entity-service/config:NEXT_N8N_API::"
      },
      {
        "name": "NEXT_N8N_NOTIFICATION_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/entity-service/config:NEXT_N8N_NOTIFICATION_URL::"
      },
      {
        "name": "NEXT_N8N_PASS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/entity-service/config:NEXT_N8N_PASS::"
      },
      {
        "name": "NEXT_N8N_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/entity-service/config:NEXT_N8N_USER::"
      },
      {
        "name": "NEXT_NDA_SEND_WEB_BOOKS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/entity-service/config:NEXT_NDA_SEND_WEB_BOOKS::"
      },
      {
        "name": "NEXT_NEXUS_ETL_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/entity-service/config:NEXT_NEXUS_ETL_API::"
      },
      {
        "name": "NEXT_NEXUS_ETL_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/entity-service/config:NEXT_NEXUS_ETL_API_KEY::"
      },
      {
        "name": "NEXT_PUBLIC_COMPANY_RESEARCH_SOCKET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/entity-service/config:NEXT_PUBLIC_COMPANY_RESEARCH_SOCKET::"
      },
      {
        "name": "NEXT_PUBLIC_DBI360_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/entity-service/config:NEXT_PUBLIC_DBI360_API_URL::"
      },
      {
        "name": "NEXT_PUBLIC_DBI360_APP_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/entity-service/config:NEXT_PUBLIC_DBI360_APP_URL::"
      },
      {
        "name": "NEXT_PUBLIC_DBI360_PURCHASEAPI_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/entity-service/config:NEXT_PUBLIC_DBI360_PURCHASEAPI_URL::"
      },
      {
        "name": "NEXT_PUBLIC_DBI360_SALESAPI_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/entity-service/config:NEXT_PUBLIC_DBI360_SALESAPI_URL::"
      },
      {
        "name": "NEXT_PUBLIC_DOMAIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/entity-service/config:NEXT_PUBLIC_DOMAIN::"
      },
      {
        "name": "NEXT_PUBLIC_GOOGLE_MAP_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/entity-service/config:NEXT_PUBLIC_GOOGLE_MAP_API_KEY::"
      },
      {
        "name": "NEXT_PUBLIC_NEXUS_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/entity-service/config:NEXT_PUBLIC_NEXUS_URL::"
      },
      {
        "name": "NEXT_PUBLIC_auth_product_code",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/entity-service/config:NEXT_PUBLIC_auth_product_code::"
      },
      {
        "name": "OPENAI_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/entity-service/config:OPENAI_API_KEY::"
      },
      {
        "name": "OUTLOOK_CLIENT_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/entity-service/config:OUTLOOK_CLIENT_ID::"
      },
      {
        "name": "OUTLOOK_CLIENT_SECRET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/entity-service/config:OUTLOOK_CLIENT_SECRET::"
      },
      {
        "name": "OUTLOOK_TENANT_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/entity-service/config:OUTLOOK_TENANT_ID::"
      },
      {
        "name": "SERPER_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/entity-service/config:SERPER_API_KEY::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-entity-service",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "entity-service"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_exit_frontend_r28" {
  family                   = "development-exit-frontend"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "exit-frontend",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/exit-frontend:sha-cf84e95-37781267472",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "exit-frontend",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "production"
      }
    ],
    "secrets": [
      {
        "name": "VITE_API_APP_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/exit-frontend/config-RP9Mw1:VITE_API_APP_URL::"
      },
      {
        "name": "VITE_API_GLOBAL_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/exit-frontend/config-RP9Mw1:VITE_API_GLOBAL_URL::"
      },
      {
        "name": "VITE_API_SECURITY_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/exit-frontend/config-RP9Mw1:VITE_API_SECURITY_URL::"
      },
      {
        "name": "VITE_APP_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/exit-frontend/config-RP9Mw1:VITE_APP_URL::"
      },
      {
        "name": "VITE_DATABASE_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/exit-frontend/config-RP9Mw1:VITE_DATABASE_ID::"
      },
      {
        "name": "VITE_DOMAIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/exit-frontend/config-RP9Mw1:VITE_DOMAIN::"
      },
      {
        "name": "VITE_N8N_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/exit-frontend/config-RP9Mw1:VITE_N8N_URL::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-exit-frontend",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "exit-frontend"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_farm_management_r2" {
  family                   = "development-farm-management"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "farm-management",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/farm-management:sha-f6fa523",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "farm-management",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "development"
      }
    ],
    "secrets": [
      {
        "name": "VITE_SUPABASE_PROJECT_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/farm-management/config-xQJmbY:VITE_SUPABASE_PROJECT_ID::"
      },
      {
        "name": "VITE_SUPABASE_PUBLISHABLE_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/farm-management/config-xQJmbY:VITE_SUPABASE_PUBLISHABLE_KEY::"
      },
      {
        "name": "VITE_SUPABASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/farm-management/config-xQJmbY:VITE_SUPABASE_URL::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-farm-management",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "farm-management"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_finance_backend_service_r160" {
  family                   = "development-finance-backend-service"
  network_mode             = "awsvpc"
  cpu                      = "1024"
  memory                   = "2048"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "finance-backend-service",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/finance-backend-service:sha-e576491-37894172536",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "finance-backend-service",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "DB_PORT",
        "value": "3306"
      },
      {
        "name": "NODE_ENV",
        "value": "production"
      }
    ],
    "secrets": [
      {
        "name": "ALLOWED_ORIGINS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/finance-backend-service/config:ALLOWED_ORIGINS::"
      },
      {
        "name": "APP_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/finance-backend-service/config:APP_PORT::"
      },
      {
        "name": "AUDIT_TRAIL_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/finance-backend-service/config:AUDIT_TRAIL_API_URL::"
      },
      {
        "name": "AWS_BUCKET_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/finance-backend-service/config:AWS_BUCKET_NAME::"
      },
      {
        "name": "AWS_REGION",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/finance-backend-service/config:AWS_REGION::"
      },
      {
        "name": "DECRYPT_TOKEN_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/finance-backend-service/config:DECRYPT_TOKEN_API::"
      },
      {
        "name": "ENCRYPT_ID_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/finance-backend-service/config:ENCRYPT_ID_API::"
      },
      {
        "name": "ENCRYPTION_SECRET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/finance-backend-service/config:ENCRYPTION_SECRET::"
      },
      {
        "name": "EXCHANGE_RATE_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/finance-backend-service/config:EXCHANGE_RATE_API_KEY::"
      },
      {
        "name": "EXCHANGE_RATE_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/finance-backend-service/config:EXCHANGE_RATE_API_URL::"
      },
      {
        "name": "FINANCE_REPORTS_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/finance-backend-service/config:FINANCE_REPORTS_API::"
      },
      {
        "name": "ENCRYPT_HEX_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-hex-key/config-BGrEHQ:ENCRYPT_HEX_KEY::"
      },
      {
        "name": "MYSQL_DB",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/finance-backend-service/config:MYSQL_DB::"
      },
      {
        "name": "N8N_Password",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/finance-backend-service/config:N8N_Password::"
      },
      {
        "name": "N8N_User",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/finance-backend-service/config:N8N_User::"
      },
      {
        "name": "PLAID_CLIENT_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/finance-backend-service/config:PLAID_CLIENT_ID::"
      },
      {
        "name": "PLAID_COUNTRY_CODES",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/finance-backend-service/config:PLAID_COUNTRY_CODES::"
      },
      {
        "name": "PLAID_ENV",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/finance-backend-service/config:PLAID_ENV::"
      },
      {
        "name": "PLAID_PRODUCTS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/finance-backend-service/config:PLAID_PRODUCTS::"
      },
      {
        "name": "PLAID_SECRET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/finance-backend-service/config:PLAID_SECRET::"
      },
      {
        "name": "SEND_EMAIL_TO_CLIENT_WEB_HOOK",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/finance-backend-service/config:SEND_EMAIL_TO_CLIENT_WEB_HOOK::"
      },
      {
        "name": "STRIPE_PUBLISHABLE_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/finance-backend-service/config:STRIPE_PUBLISHABLE_KEY::"
      },
      {
        "name": "STRIPE_SECRET_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/finance-backend-service/config:STRIPE_SECRET_KEY::"
      },
      {
        "name": "TASK_UPDATE_STATUS_ENDPOINT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/finance-backend-service/config:TASK_UPDATE_STATUS_ENDPOINT::"
      },
      {
        "name": "VERIFY_TOKEN_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/finance-backend-service/config:VERIFY_TOKEN_API::"
      },
      {
        "name": "ZYLER_ERP_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/finance-backend-service/config:ZYLER_ERP_API::"
      },
      {
        "name": "GLOBAL_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/finance-backend-service/config:GLOBAL_API_URL::"
      },
      {
        "name": "DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config:host::"
      },
      {
        "name": "DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/finance-backend-service/config:username::"
      },
      {
        "name": "DB_PASS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/finance-backend-service/config:password::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-finance-backend-service",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "finance-backend-service"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_finance_frontend_service_r112" {
  family                   = "development-finance-frontend-service"
  network_mode             = "awsvpc"
  cpu                      = "256"
  memory                   = "512"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "finance-frontend-service",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/finance-frontend-service:sha-ef2f6bb-37893942379",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "finance-frontend-service",
        "appProtocol": "http"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-finance-frontend-service",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "finance-frontend-service"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_finance_reports_service_r158" {
  family                   = "development-finance-reports-service"
  network_mode             = "awsvpc"
  cpu                      = "1024"
  memory                   = "2048"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "finance-reports-service",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/finance-reports-service:sha-b936cd5-37298290766",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "finance-reports-service",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "production"
      }
    ],
    "secrets": [
      {
        "name": "NEXT_DB_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/finance-reports-service/config:NEXT_DB_NAME::"
      },
      {
        "name": "NEXT_HEX_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-hex-key/config-BGrEHQ:ENCRYPT_HEX_KEY::"
      },
      {
        "name": "NEXT_MASTER_CONFIG_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/finance-reports-service/config:NEXT_MASTER_CONFIG_URL::"
      },
      {
        "name": "NEXT_PUBLIC_AUTH_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/finance-reports-service/config:NEXT_PUBLIC_AUTH_API::"
      },
      {
        "name": "NEXT_PUBLIC_AUTH_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/finance-reports-service/config:NEXT_PUBLIC_AUTH_API_KEY::"
      },
      {
        "name": "NEXT_PUBLIC_AUTH_PRODUCT_CODE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/finance-reports-service/config:NEXT_PUBLIC_AUTH_PRODUCT_CODE::"
      },
      {
        "name": "NEXT_PUBLIC_CONFIG_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/finance-reports-service/config:NEXT_PUBLIC_CONFIG_API_URL::"
      },
      {
        "name": "NEXT_PUBLIC_CORS_ALLOWED_ORIGIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/finance-reports-service/config:NEXT_PUBLIC_CORS_ALLOWED_ORIGIN::"
      },
      {
        "name": "NEXT_PUBLIC_FINANCE_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/finance-reports-service/config:NEXT_PUBLIC_FINANCE_API_URL::"
      },
      {
        "name": "NEXT_PUBLIC_FINANCE_EXTERNAL_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/finance-reports-service/config:NEXT_PUBLIC_FINANCE_EXTERNAL_API_KEY::"
      },
      {
        "name": "NEXT_PUBLIC_FINANCE_GATEWAY_EMAIL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/finance-reports-service/config:NEXT_PUBLIC_FINANCE_GATEWAY_EMAIL::"
      },
      {
        "name": "NEXT_PUBLIC_FINANCE_GATEWAY_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/finance-reports-service/config:NEXT_PUBLIC_FINANCE_GATEWAY_PASSWORD::"
      },
      {
        "name": "NEXT_PUBLIC_FINANCE_SUPABASE_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/finance-reports-service/config:NEXT_PUBLIC_FINANCE_SUPABASE_API_URL::"
      },
      {
        "name": "NEXT_PUBLIC_FINANCE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/finance-reports-service/config:NEXT_PUBLIC_FINANCE_URL::"
      },
      {
        "name": "NEXT_PUBLIC_FIND_SUPPLIERS_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/finance-reports-service/config:NEXT_PUBLIC_FIND_SUPPLIERS_API_URL::"
      },
      {
        "name": "NEXT_PUBLIC_PURCHASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/finance-reports-service/config:NEXT_PUBLIC_PURCHASE_URL::"
      },
      {
        "name": "NEXT_PUBLIC_SALES_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/finance-reports-service/config:NEXT_PUBLIC_SALES_URL::"
      },
      {
        "name": "NEXT_PUBLIC_SSO_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/finance-reports-service/config:NEXT_PUBLIC_SSO_API_URL::"
      },
      {
        "name": "NEXT_PUBLIC_SSO_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/finance-reports-service/config:NEXT_PUBLIC_SSO_URL::"
      },
      {
        "name": "NEXT_PUBLIC_WMS_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/finance-reports-service/config:NEXT_PUBLIC_WMS_URL::"
      },
      {
        "name": "NEXT_PUBLIC_VMI_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/finance-reports-service/config:NEXT_PUBLIC_VMI_URL::"
      },
      {
        "name": "NEXT_DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config:host::"
      },
      {
        "name": "NEXT_DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/finance-reports-service/config:username::"
      },
      {
        "name": "NEXT_DB_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/finance-reports-service/config:password::"
      },
      {
        "name": "NEXT_DB_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config:port::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-finance-reports-service",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "finance-reports-service"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_findsuppliers_backend_r295" {
  family                   = "development-findsuppliers-backend"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "findsuppliers-backend",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/findsuppliers-backend:sha-dab83a3-37893491244",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "findsuppliers-backend",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "QUICK_QUOTE_BASE_URL",
        "value": "https://findsupplierai.demodbi360.com/"
      },
      {
        "name": "NODE_ENV",
        "value": "production"
      },
      {
        "name": "ZOHO_RETURN_HOSTS",
        "value": "demodbi360.com"
      },
      {
        "name": "PORT",
        "value": "8080"
      }
    ],
    "secrets": [
      {
        "name": "ALLOWED_HOSTS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config-13NrGm:ALLOWED_HOSTS::"
      },
      {
        "name": "API_KEYS_JSON",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config-13NrGm:API_KEYS_JSON::"
      },
      {
        "name": "API_SECRET_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config-13NrGm:API_SECRET_KEY::"
      },
      {
        "name": "APP_URLS_JSON",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config-13NrGm:APP_URLS_JSON::"
      },
      {
        "name": "ASTER_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config-13NrGm:ASTER_API_URL::"
      },
      {
        "name": "AUTH_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config-13NrGm:AUTH_API_KEY::"
      },
      {
        "name": "AWS_CONFIG_JSON",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config-13NrGm:AWS_CONFIG_JSON::"
      },
      {
        "name": "CLICKHOUSE_CONFIG_JSON",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config-13NrGm:CLICKHOUSE_CONFIG_JSON::"
      },
      {
        "name": "COMPLIANCE_DOCS_S3_BUCKET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config-13NrGm:COMPLIANCE_DOCS_S3_BUCKET::"
      },
      {
        "name": "COMPLIANCE_DOCS_S3_REGION",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config-13NrGm:COMPLIANCE_DOCS_S3_REGION::"
      },
      {
        "name": "CORS_ORIGIN_ALLOW_ALL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config-13NrGm:CORS_ORIGIN_ALLOW_ALL::"
      },
      {
        "name": "DB_DEFAULT_JSON",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config-13NrGm:DB_DEFAULT_JSON::"
      },
      {
        "name": "DB_GLOBAL_JSON",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config-13NrGm:DB_GLOBAL_JSON::"
      },
      {
        "name": "DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:host::"
      },
      {
        "name": "DB_PASS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config-13NrGm:password::"
      },
      {
        "name": "DB_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:port::"
      },
      {
        "name": "DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config-13NrGm:username::"
      },
      {
        "name": "DEBUG",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config-13NrGm:DEBUG::"
      },
      {
        "name": "DEFAULT_FROM_EMAIL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config-13NrGm:DEFAULT_FROM_EMAIL::"
      },
      {
        "name": "DEFAULT_FROM_EMAIL_OUTLOOK",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config-13NrGm:DEFAULT_FROM_EMAIL_OUTLOOK::"
      },
      {
        "name": "EMAIL_CONFIG_JSON",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config-13NrGm:EMAIL_CONFIG_JSON::"
      },
      {
        "name": "ENCRYPT_HEX_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-hex-key/config-BGrEHQ:ENCRYPT_HEX_KEY::"
      },
      {
        "name": "FIREBASE_SERVICE_ACCOUNT_JSON",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config-13NrGm:FIREBASE_SERVICE_ACCOUNT_JSON::"
      },
      {
        "name": "INTEGRATIONS_CONFIG_JSON",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config-13NrGm:INTEGRATIONS_CONFIG_JSON::"
      },
      {
        "name": "LOCATION_CONFIG_JSON",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config-13NrGm:LOCATION_CONFIG_JSON::"
      },
      {
        "name": "MAILCHIMP_CONFIG_JSON",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config-13NrGm:MAILCHIMP_CONFIG_JSON::"
      },
      {
        "name": "MICROSOFT_OAUTH_CLIENT_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config-13NrGm:MICROSOFT_OAUTH_CLIENT_ID::"
      },
      {
        "name": "MICROSOFT_OAUTH_CLIENT_SECRET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config-13NrGm:MICROSOFT_OAUTH_CLIENT_SECRET::"
      },
      {
        "name": "MICROSOFT_OAUTH_REDIRECT_URI",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config-13NrGm:MICROSOFT_OAUTH_REDIRECT_URI::"
      },
      {
        "name": "MONGO_CONFIG_JSON",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config-13NrGm:MONGO_CONFIG_JSON::"
      },
      {
        "name": "MONGO_EMAIL_CONFIG_JSON",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config-13NrGm:MONGO_EMAIL_CONFIG_JSON::"
      },
      {
        "name": "MS_GRAPH_APP_CLIENT_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config-13NrGm:MS_GRAPH_APP_CLIENT_ID::"
      },
      {
        "name": "MS_GRAPH_APP_CLIENT_SECRET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config-13NrGm:MS_GRAPH_APP_CLIENT_SECRET::"
      },
      {
        "name": "MS_GRAPH_APP_TENANT_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config-13NrGm:MS_GRAPH_APP_TENANT_ID::"
      },
      {
        "name": "N8N_WEBHOOK_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config-13NrGm:N8N_WEBHOOK_URL::"
      },
      {
        "name": "NEXT_CLICKHOUSE_JSON",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config-13NrGm:NEXT_CLICKHOUSE_JSON::"
      },
      {
        "name": "NEXUS_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config-13NrGm:NEXUS_URL::"
      },
      {
        "name": "PURCHASE_API_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config-13NrGm:PURCHASE_API_BASE_URL::"
      },
      {
        "name": "RABBITMQ_CONFIG_JSON",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config-13NrGm:RABBITMQ_CONFIG_JSON::"
      },
      {
        "name": "SUPABASE_CONFIG_JSON",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config-13NrGm:SUPABASE_CONFIG_JSON::"
      },
      {
        "name": "SECRET_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config-13NrGm:SECRET_KEY::"
      },
      {
        "name": "DOCUMENT_ANALYZER_ENDPOINT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config-13NrGm:DOCUMENT_ANALYZER_ENDPOINT::"
      },
      {
        "name": "SALES_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config-13NrGm:SALES_BASE_URL::"
      },
      {
        "name": "SOURCING_AWS_ACCESS_KEY_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config-13NrGm:SOURCING_AWS_ACCESS_KEY_ID::"
      },
      {
        "name": "SOURCING_AWS_SECRET_ACCESS_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config-13NrGm:SOURCING_AWS_SECRET_ACCESS_KEY::"
      },
      {
        "name": "SOURCING_AWS_S3_REGION",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config-13NrGm:SOURCING_AWS_S3_REGION::"
      },
      {
        "name": "SOURCING_AWS_SECRET_REGION",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config-13NrGm:SOURCING_AWS_SECRET_REGION::"
      },
      {
        "name": "SOURCING_AWS_BUCKETNAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config-13NrGm:SOURCING_AWS_BUCKETNAME::"
      },
      {
        "name": "MASTERPRODUCT_IMAGE_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config-13NrGm:MASTERPRODUCT_IMAGE_BASE_URL::"
      },
      {
        "name": "RDS_CA_CERT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:RDS_CA_CERT::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-findsuppliers-backend",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "findsuppliers-backend"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_findsuppliers_frontend_r270" {
  family                   = "development-findsuppliers-frontend"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "findsuppliers-frontend",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/findsuppliers-frontend:sha-2431afe-37893756581",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "findsuppliers-frontend",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "production"
      }
    ],
    "secrets": [
      {
        "name": "VITE_API_APP_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-frontend/config-QFxicn:VITE_API_APP_URL::"
      },
      {
        "name": "VITE_API_GLOBAL_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-frontend/config-QFxicn:VITE_API_GLOBAL_URL::"
      },
      {
        "name": "VITE_APP_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-frontend/config-QFxicn:VITE_APP_URL::"
      },
      {
        "name": "VITE_ASTER_VERIFICATION_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-frontend/config-QFxicn:VITE_ASTER_VERIFICATION_API::"
      },
      {
        "name": "VITE_BUYERSFLOW_API_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-frontend/config-QFxicn:VITE_BUYERSFLOW_API_BASE_URL::"
      },
      {
        "name": "VITE_DATABASE_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-frontend/config-QFxicn:VITE_DATABASE_ID::"
      },
      {
        "name": "VITE_DOMAIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-frontend/config-QFxicn:VITE_DOMAIN::"
      },
      {
        "name": "VITE_ENTITY_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-frontend/config-QFxicn:VITE_ENTITY_URL::"
      },
      {
        "name": "VITE_FIND_SUPPLIERS_WEBSITE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-frontend/config-QFxicn:VITE_FIND_SUPPLIERS_WEBSITE::"
      },
      {
        "name": "VITE_FIRE_BASE_MESSAGE_COLLECTION",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-frontend/config-QFxicn:VITE_FIRE_BASE_MESSAGE_COLLECTION::"
      },
      {
        "name": "VITE_FIRE_BASE_USERLOGIN_COLLECTION",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-frontend/config-QFxicn:VITE_FIRE_BASE_USERLOGIN_COLLECTION::"
      },
      {
        "name": "VITE_MARKETING_API_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-frontend/config-QFxicn:VITE_MARKETING_API_BASE_URL::"
      },
      {
        "name": "VITE_MASTER_CONFIG_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-frontend/config-QFxicn:VITE_MASTER_CONFIG_API_URL::"
      },
      {
        "name": "VITE_AUTH_PRODUCT_CODE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-frontend/config-QFxicn:VITE_AUTH_PRODUCT_CODE::"
      },
      {
        "name": "VITE_PURCHASE_API_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-frontend/config-QFxicn:VITE_PURCHASE_API_BASE_URL::"
      },
      {
        "name": "VITE_SALES_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-frontend/config-QFxicn:VITE_SALES_API_URL::"
      },
      {
        "name": "VITE_SALES_INTELLIGENCE_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-frontend/config-QFxicn:VITE_SALES_INTELLIGENCE_BASE_URL::"
      },
      {
        "name": "VITE_SOURCING_API_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-frontend/config-QFxicn:VITE_SOURCING_API_BASE_URL::"
      },
      {
        "name": "VITE_SUPABASE_EMAIL_DOMAIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-frontend/config-QFxicn:VITE_SUPABASE_EMAIL_DOMAIN::"
      },
      {
        "name": "VITE_SUPABASE_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-frontend/config-QFxicn:VITE_SUPABASE_KEY::"
      },
      {
        "name": "VITE_SUPABASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-frontend/config-QFxicn:VITE_SUPABASE_URL::"
      },
      {
        "name": "VITE_SUPPLIER_QUALIFICATION_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-frontend/config-QFxicn:VITE_SUPPLIER_QUALIFICATION_BASE_URL::"
      },
      {
        "name": "VITE_TASK_MANAGEMENT_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-frontend/config-QFxicn:VITE_TASK_MANAGEMENT_BASE_URL::"
      },
      {
        "name": "VITE_N8N_NOTIFICATION_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-frontend/config-QFxicn:VITE_N8N_NOTIFICATION_URL::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-findsuppliers-frontend",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "findsuppliers-frontend"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_findsuppliers_website_r4" {
  family                   = "development-findsuppliers-website"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "findsuppliers-website",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/findsuppliers-website:sha-4c7da0b",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "findsuppliers-website",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "production"
      }
    ],
    "secrets": [
      {
        "name": "NEXT_PUBLIC_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-website/config-I7It1r:NEXT_PUBLIC_API_URL::"
      },
      {
        "name": "NEXT_PUBLIC_APP_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-website/config-I7It1r:NEXT_PUBLIC_APP_URL::"
      },
      {
        "name": "NEXT_PUBLIC_COOKIE_DOMAIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-website/config-I7It1r:NEXT_PUBLIC_COOKIE_DOMAIN::"
      },
      {
        "name": "NEXT_PUBLIC_GLOBAL_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-website/config-I7It1r:NEXT_PUBLIC_GLOBAL_API::"
      },
      {
        "name": "NEXT_PUBLIC_SUPABASE_ANON_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-website/config-I7It1r:NEXT_PUBLIC_SUPABASE_ANON_KEY::"
      },
      {
        "name": "NEXT_PUBLIC_SUPABASE_AUTH_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-website/config-I7It1r:NEXT_PUBLIC_SUPABASE_AUTH_PASSWORD::"
      },
      {
        "name": "NEXT_PUBLIC_SUPABASE_EMAIL_DOMAIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-website/config-I7It1r:NEXT_PUBLIC_SUPABASE_EMAIL_DOMAIN::"
      },
      {
        "name": "NEXT_PUBLIC_SUPABASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-website/config-I7It1r:NEXT_PUBLIC_SUPABASE_URL::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-findsuppliers-website",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "findsuppliers-website"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_gj_ecommerce_backend_r100" {
  family                   = "development-gj-ecommerce-backend"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "gj-ecommerce-backend",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/gj-ecommerce-backend:sha-57b1d41-37424363914",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "gj-ecommerce-backend",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "production"
      }
    ],
    "secrets": [
      {
        "name": "ALLOWED_HOSTS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:ALLOWED_HOSTS::"
      },
      {
        "name": "ALLOWED_ORIGINS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:ALLOWED_ORIGINS::"
      },
      {
        "name": "API_EMAIL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:API_EMAIL::"
      },
      {
        "name": "API_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:API_PASSWORD::"
      },
      {
        "name": "ASTER_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:ASTER_API_URL::"
      },
      {
        "name": "ASTER_AUTH_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:ASTER_AUTH_KEY::"
      },
      {
        "name": "ECR_REPOSITORY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:ECR_REPOSITORY::"
      },
      {
        "name": "FRONTEND_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:FRONTEND_URL::"
      },
      {
        "name": "HEX_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-hex-key/config-BGrEHQ:ENCRYPT_HEX_KEY::"
      },
      {
        "name": "INVOICE_PDF_WEBHOOKS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:INVOICE_PDF_WEBHOOKS::"
      },
      {
        "name": "MATCHMAKER_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:MATCHMAKER_API_KEY::"
      },
      {
        "name": "MATCHMAKER_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:MATCHMAKER_API_URL::"
      },
      {
        "name": "N8N_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:N8N_PASSWORD::"
      },
      {
        "name": "N8N_USERNAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:N8N_USERNAME::"
      },
      {
        "name": "NEWSLETTER_WEBHOOK_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:NEWSLETTER_WEBHOOK_URL::"
      },
      {
        "name": "NEXUS_PRODUCT_LIST_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:NEXUS_PRODUCT_LIST_API_KEY::"
      },
      {
        "name": "NEX_COMP_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:NEX_COMP_URL::"
      },
      {
        "name": "PAYMENTPDF_WEBHOOK_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:PAYMENTPDF_WEBHOOK_URL::"
      },
      {
        "name": "PRODUCT_API_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:PRODUCT_API_BASE_URL::"
      },
      {
        "name": "PRODUCT_DETAIL_CACHE_TTL_SECONDS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:PRODUCT_DETAIL_CACHE_TTL_SECONDS::"
      },
      {
        "name": "REDIS_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:REDIS_URL::"
      },
      {
        "name": "REFERRAL_CODE_SALT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:REFERRAL_CODE_SALT::"
      },
      {
        "name": "SALES_API_MP_CREATE_X_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:SALES_API_MP_CREATE_X_API_KEY::"
      },
      {
        "name": "SALES_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:SALES_API_URL::"
      },
      {
        "name": "SALES_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:SALES_URL::"
      },
      {
        "name": "SOPDF_WEBHOOK_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:SOPDF_WEBHOOK_URL::"
      },
      {
        "name": "SO_EMAIL_WEBHOOK",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:SO_EMAIL_WEBHOOK::"
      },
      {
        "name": "X_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:X_API_KEY::"
      },
      {
        "name": "ZAPIER_COMPLETION_WEBHOOK",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:ZAPIER_COMPLETION_WEBHOOK::"
      },
      {
        "name": "ZAPIER_QA_WEBHOOK",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:ZAPIER_QA_WEBHOOK::"
      },
      {
        "name": "ZAPIER_SALESREP_WEBHOOK",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:ZAPIER_SALESREP_WEBHOOK::"
      },
      {
        "name": "ZAPIER_WEBHOOK_REGISTRATION",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:ZAPIER_WEBHOOK_REGISTRATION::"
      },
      {
        "name": "DB_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:DB_NAME::"
      },
      {
        "name": "DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:username::"
      },
      {
        "name": "DB_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:password::"
      },
      {
        "name": "API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:API_KEY::"
      },
      {
        "name": "NEX_COMP_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:NEX_COMP_KEY::"
      },
      {
        "name": "ELASTIC_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:ELASTIC_HOST::"
      },
      {
        "name": "ELASTIC_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:ELASTIC_PORT::"
      },
      {
        "name": "ELASTIC_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:ELASTIC_USER::"
      },
      {
        "name": "ELASTIC_PASS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:ELASTIC_PASS::"
      },
      {
        "name": "ELASTIC_INDEX_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:ELASTIC_INDEX_NAME::"
      },
      {
        "name": "CLOUDFRONT_URL_PRODUCT_IMG",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:CLOUDFRONT_URL_PRODUCT_IMG::"
      },
      {
        "name": "COMPANY_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:COMPANY_ID::"
      },
      {
        "name": "DB_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:port::"
      },
      {
        "name": "DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:host::"
      },
      {
        "name": "JWT_SECRET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:JWT_SECRET::"
      },
      {
        "name": "JWT_EXPIRES_IN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:JWT_EXPIRES_IN::"
      },
      {
        "name": "SESSION_EXPIRES_IN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:SESSION_EXPIRES_IN::"
      },
      {
        "name": "FEDEX_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:FEDEX_API_KEY::"
      },
      {
        "name": "FEDEX_SECRET_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:FEDEX_SECRET_KEY::"
      },
      {
        "name": "FEDEX_ACCOUNT_NUMBER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:FEDEX_ACCOUNT_NUMBER::"
      },
      {
        "name": "UPS_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:UPS_API_KEY::"
      },
      {
        "name": "UPS_SECRET_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:UPS_SECRET_KEY::"
      },
      {
        "name": "WWEX_LOGIN_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:WWEX_LOGIN_ID::"
      },
      {
        "name": "WWEX_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:WWEX_PASSWORD::"
      },
      {
        "name": "WWEX_LICENSE_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:WWEX_LICENSE_KEY::"
      },
      {
        "name": "WWEX_ACCOUNT_NUMBER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:WWEX_ACCOUNT_NUMBER::"
      },
      {
        "name": "WWEX_BASE_URI",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:WWEX_BASE_URI::"
      },
      {
        "name": "WORLD_LOCATION_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:host::"
      },
      {
        "name": "WORLD_LOCATION_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:username::"
      },
      {
        "name": "WORLD_LOCATION_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:password::"
      },
      {
        "name": "WORLD_LOCATION_DATABASE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:WORLD_LOCATION_DATABASE::"
      },
      {
        "name": "AWS_BUCKET_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:AWS_BUCKET_NAME::"
      },
      {
        "name": "AWS_REGION",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:AWS_REGION::"
      },
      {
        "name": "WWEX_NEW_CLIENT_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:WWEX_NEW_CLIENT_ID::"
      },
      {
        "name": "WWEX_NEW_CLIENT_SECRET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:WWEX_NEW_CLIENT_SECRET::"
      },
      {
        "name": "WWEX_NEW_AUDIENCE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:WWEX_NEW_AUDIENCE::"
      },
      {
        "name": "WWEX_NEW_AUTH_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:WWEX_NEW_AUTH_URL::"
      },
      {
        "name": "WWEX_NEW_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:WWEX_NEW_BASE_URL::"
      },
      {
        "name": "CLICKHOUSE_DATABASE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:CLICKHOUSE_DATABASE::"
      },
      {
        "name": "CLICKHOUSE_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:CLICKHOUSE_PASSWORD::"
      },
      {
        "name": "CLICKHOUSE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:CLICKHOUSE_URL::"
      },
      {
        "name": "CLICKHOUSE_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:CLICKHOUSE_USER::"
      },
      {
        "name": "GLOBAL_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:GLOBAL_API::"
      },
      {
        "name": "MASTER_CONFIG_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:MASTER_CONFIG_URL::"
      },
      {
        "name": "RECAPTCHA_SECRET_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:RECAPTCHA_SECRET_KEY::"
      },
      {
        "name": "SALESFORCE_ACCOUNT_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:SALESFORCE_ACCOUNT_ID::"
      },
      {
        "name": "SALESFORCE_CLIENT_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:SALESFORCE_CLIENT_ID::"
      },
      {
        "name": "SALESFORCE_CLIENT_SECRET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:SALESFORCE_CLIENT_SECRET::"
      },
      {
        "name": "STRIPE_PUBLISHABLE_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:STRIPE_PUBLISHABLE_KEY::"
      },
      {
        "name": "STRIPE_SECRET_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:STRIPE_SECRET_KEY::"
      },
      {
        "name": "STRIPE_WEBHOOK_SECRET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:STRIPE_WEBHOOK_SECRET::"
      },
      {
        "name": "MASTERCONFIG_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:MASTERCONFIG_API_KEY::"
      },
      {
        "name": "HOSTNAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gj-ecommerce-backend/config-e2MHrO:HOSTNAME::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-gj-ecommerce-backend",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "gj-ecommerce-backend"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_gjca_ecommerce_backend_r22" {
  family                   = "development-gjca-ecommerce-backend"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "gjca-ecommerce-backend",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/gjca-ecommerce-backend:sha-643a44a-34346933317",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "gjca-ecommerce-backend",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "production"
      }
    ],
    "secrets": [
      {
        "name": "ALLOWED_HOSTS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-backend/config-1TGD4j:ALLOWED_HOSTS::"
      },
      {
        "name": "ALLOWED_ORIGINS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-backend/config-1TGD4j:ALLOWED_ORIGINS::"
      },
      {
        "name": "ASTER_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-backend/config-1TGD4j:ASTER_API_URL::"
      },
      {
        "name": "ASTER_AUTH_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-backend/config-1TGD4j:ASTER_AUTH_KEY::"
      },
      {
        "name": "AWS_REGION",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-backend/config-1TGD4j:AWS_REGION::"
      },
      {
        "name": "FRONTEND_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-backend/config-1TGD4j:FRONTEND_URL::"
      },
      {
        "name": "HOSTNAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-backend/config-1TGD4j:HOSTNAME::"
      },
      {
        "name": "INVOICE_PDF_WEBHOOKS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-backend/config-1TGD4j:INVOICE_PDF_WEBHOOKS::"
      },
      {
        "name": "NEXUS_PRODUCT_LIST_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-backend/config-1TGD4j:NEXUS_PRODUCT_LIST_API_KEY::"
      },
      {
        "name": "NEX_COMP_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-backend/config-1TGD4j:NEX_COMP_URL::"
      },
      {
        "name": "PAYMENTPDF_WEBHOOK_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-backend/config-1TGD4j:PAYMENTPDF_WEBHOOK_URL::"
      },
      {
        "name": "REFERRAL_CODE_SALT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-backend/config-1TGD4j:REFERRAL_CODE_SALT::"
      },
      {
        "name": "SOPDF_WEBHOOK_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-backend/config-1TGD4j:SOPDF_WEBHOOK_URL::"
      },
      {
        "name": "SO_EMAIL_WEBHOOK",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-backend/config-1TGD4j:SO_EMAIL_WEBHOOK::"
      },
      {
        "name": "STRIPE_SECRET_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-backend/config-1TGD4j:STRIPE_SECRET_KEY::"
      },
      {
        "name": "ZAPIER_WEBHOOK_REGISTRATION",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-backend/config-1TGD4j:ZAPIER_WEBHOOK_REGISTRATION::"
      },
      {
        "name": "DB_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-backend/config-1TGD4j:DB_NAME::"
      },
      {
        "name": "DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:username::"
      },
      {
        "name": "DB_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:password::"
      },
      {
        "name": "API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-backend/config-1TGD4j:API_KEY::"
      },
      {
        "name": "NEX_COMP_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-backend/config-1TGD4j:NEX_COMP_KEY::"
      },
      {
        "name": "ELASTIC_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-backend/config-1TGD4j:ELASTIC_HOST::"
      },
      {
        "name": "ELASTIC_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-backend/config-1TGD4j:ELASTIC_PORT::"
      },
      {
        "name": "ELASTIC_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-backend/config-1TGD4j:ELASTIC_USER::"
      },
      {
        "name": "ELASTIC_PASS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-backend/config-1TGD4j:ELASTIC_PASS::"
      },
      {
        "name": "ELASTIC_INDEX_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-backend/config-1TGD4j:ELASTIC_INDEX_NAME::"
      },
      {
        "name": "CLOUDFRONT_URL_PRODUCT_IMG",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-backend/config-1TGD4j:CLOUDFRONT_URL_PRODUCT_IMG::"
      },
      {
        "name": "COMPANY_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-backend/config-1TGD4j:COMPANY_ID::"
      },
      {
        "name": "DB_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:port::"
      },
      {
        "name": "DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:host::"
      },
      {
        "name": "JWT_SECRET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-backend/config-1TGD4j:JWT_SECRET::"
      },
      {
        "name": "JWT_EXPIRES_IN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-backend/config-1TGD4j:JWT_EXPIRES_IN::"
      },
      {
        "name": "FEDEX_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-backend/config-1TGD4j:FEDEX_API_KEY::"
      },
      {
        "name": "FEDEX_SECRET_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-backend/config-1TGD4j:FEDEX_SECRET_KEY::"
      },
      {
        "name": "FEDEX_ACCOUNT_NUMBER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-backend/config-1TGD4j:FEDEX_ACCOUNT_NUMBER::"
      },
      {
        "name": "UPS_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-backend/config-1TGD4j:UPS_API_KEY::"
      },
      {
        "name": "UPS_SECRET_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-backend/config-1TGD4j:UPS_SECRET_KEY::"
      },
      {
        "name": "WWEX_LOGIN_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-backend/config-1TGD4j:WWEX_LOGIN_ID::"
      },
      {
        "name": "WWEX_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-backend/config-1TGD4j:WWEX_PASSWORD::"
      },
      {
        "name": "WWEX_LICENSE_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-backend/config-1TGD4j:WWEX_LICENSE_KEY::"
      },
      {
        "name": "WWEX_ACCOUNT_NUMBER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-backend/config-1TGD4j:WWEX_ACCOUNT_NUMBER::"
      },
      {
        "name": "WWEX_BASE_URI",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-backend/config-1TGD4j:WWEX_BASE_URI::"
      },
      {
        "name": "WORLD_LOCATION_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-backend/config-1TGD4j:WORLD_LOCATION_HOST::"
      },
      {
        "name": "WORLD_LOCATION_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-backend/config-1TGD4j:WORLD_LOCATION_USER::"
      },
      {
        "name": "WORLD_LOCATION_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-backend/config-1TGD4j:WORLD_LOCATION_PASSWORD::"
      },
      {
        "name": "WORLD_LOCATION_DATABASE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-backend/config-1TGD4j:WORLD_LOCATION_DATABASE::"
      },
      {
        "name": "AWS_BUCKET_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-backend/config-1TGD4j:AWS_BUCKET_NAME::"
      },
      {
        "name": "WWEX_NEW_CLIENT_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-backend/config-1TGD4j:WWEX_NEW_CLIENT_ID::"
      },
      {
        "name": "WWEX_NEW_CLIENT_SECRET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-backend/config-1TGD4j:WWEX_NEW_CLIENT_SECRET::"
      },
      {
        "name": "WWEX_NEW_AUDIENCE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-backend/config-1TGD4j:WWEX_NEW_AUDIENCE::"
      },
      {
        "name": "WWEX_NEW_AUTH_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-backend/config-1TGD4j:WWEX_NEW_AUTH_URL::"
      },
      {
        "name": "WWEX_NEW_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-backend/config-1TGD4j:WWEX_NEW_BASE_URL::"
      },
      {
        "name": "CLICKHOUSE_DATABASE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-backend/config-1TGD4j:CLICKHOUSE_DATABASE::"
      },
      {
        "name": "CLICKHOUSE_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-backend/config-1TGD4j:CLICKHOUSE_PASSWORD::"
      },
      {
        "name": "CLICKHOUSE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-backend/config-1TGD4j:CLICKHOUSE_URL::"
      },
      {
        "name": "CLICKHOUSE_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-backend/config-1TGD4j:CLICKHOUSE_USER::"
      },
      {
        "name": "GLOBAL_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-backend/config-1TGD4j:GLOBAL_API::"
      },
      {
        "name": "MASTER_CONFIG_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-backend/config-1TGD4j:MASTER_CONFIG_URL::"
      },
      {
        "name": "RECAPTCHA_SECRET_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-backend/config-1TGD4j:RECAPTCHA_SECRET_KEY::"
      },
      {
        "name": "SALESFORCE_ACCOUNT_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-backend/config-1TGD4j:SALESFORCE_ACCOUNT_ID::"
      },
      {
        "name": "SALESFORCE_CLIENT_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-backend/config-1TGD4j:SALESFORCE_CLIENT_ID::"
      },
      {
        "name": "SALESFORCE_CLIENT_SECRET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-backend/config-1TGD4j:SALESFORCE_CLIENT_SECRET::"
      },
      {
        "name": "STRIPE_PUBLISHABLE_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-backend/config-1TGD4j:STRIPE_PUBLISHABLE_KEY::"
      },
      {
        "name": "STRIPE_WEBHOOK_SECRET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-backend/config-1TGD4j:STRIPE_WEBHOOK_SECRET::"
      },
      {
        "name": "MASTERCONFIG_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-backend/config-1TGD4j:MASTERCONFIG_API_KEY::"
      },
      {
        "name": "N8N_USERNAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-backend/config-1TGD4j:N8N_USERNAME::"
      },
      {
        "name": "N8N_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-backend/config-1TGD4j:N8N_PASSWORD::"
      },
      {
        "name": "REDIS_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-backend/config-1TGD4j:REDIS_HOST::"
      },
      {
        "name": "REDIS_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-backend/config-1TGD4j:REDIS_PORT::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-gjca-ecommerce-backend",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "gjca-ecommerce-backend"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_gjca_ecommerce_frontend_r30" {
  family                   = "development-gjca-ecommerce-frontend"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "gjca-ecommerce-frontend",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/gjca-ecommerce-frontend:sha-2b491fc-34350721877",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "gjca-ecommerce-frontend",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "production"
      }
    ],
    "secrets": [
      {
        "name": "COMPANY_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-frontend/config-iEXO91:COMPANY_ID::"
      },
      {
        "name": "NEXT_PUBLIC_API_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-frontend/config-iEXO91:NEXT_PUBLIC_API_BASE_URL::"
      },
      {
        "name": "NEXT_PUBLIC_APP_NEXUS_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-frontend/config-iEXO91:NEXT_PUBLIC_APP_NEXUS_API_KEY::"
      },
      {
        "name": "NEXT_PUBLIC_APP_NEXUS_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-frontend/config-iEXO91:NEXT_PUBLIC_APP_NEXUS_URL::"
      },
      {
        "name": "NEXT_PUBLIC_BACKEND_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-frontend/config-iEXO91:NEXT_PUBLIC_BACKEND_API_KEY::"
      },
      {
        "name": "NEXT_PUBLIC_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-frontend/config-iEXO91:NEXT_PUBLIC_BASE_URL::"
      },
      {
        "name": "NEXT_PUBLIC_CANCELSOORDER_PDF_WEBHOOKS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-frontend/config-iEXO91:NEXT_PUBLIC_CANCELSOORDER_PDF_WEBHOOKS::"
      },
      {
        "name": "NEXT_PUBLIC_CLOUDFRONT_URL_PRODUCT_IMG",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-frontend/config-iEXO91:NEXT_PUBLIC_CLOUDFRONT_URL_PRODUCT_IMG::"
      },
      {
        "name": "NEXT_PUBLIC_CLOUDFRONT_URL_PUBLIC_IMG",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-frontend/config-iEXO91:NEXT_PUBLIC_CLOUDFRONT_URL_PUBLIC_IMG::"
      },
      {
        "name": "NEXT_PUBLIC_GTM_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-frontend/config-iEXO91:NEXT_PUBLIC_GTM_ID::"
      },
      {
        "name": "NEXT_PUBLIC_CHAT_BOT_CLIENT_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-frontend/config-iEXO91:NEXT_PUBLIC_CHAT_BOT_CLIENT_KEY::"
      },
      {
        "name": "NEXT_PUBLIC_CHAT_BOT_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-frontend/config-iEXO91:NEXT_PUBLIC_CHAT_BOT_URL::"
      },
      {
        "name": "NEXT_PUBLIC_LOCATION_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-frontend/config-iEXO91:NEXT_PUBLIC_LOCATION_KEY::"
      },
      {
        "name": "NEXT_PUBLIC_LOCATION_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-frontend/config-iEXO91:NEXT_PUBLIC_LOCATION_URL::"
      },
      {
        "name": "NEXT_PUBLIC_N8N_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-frontend/config-iEXO91:NEXT_PUBLIC_N8N_PASSWORD::"
      },
      {
        "name": "NEXT_PUBLIC_N8N_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-frontend/config-iEXO91:NEXT_PUBLIC_N8N_URL::"
      },
      {
        "name": "NEXT_PUBLIC_N8N_USERNAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-frontend/config-iEXO91:NEXT_PUBLIC_N8N_USERNAME::"
      },
      {
        "name": "NEXT_PUBLIC_PAYMENTS_PDF_WEBHOOKS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-frontend/config-iEXO91:NEXT_PUBLIC_PAYMENTS_PDF_WEBHOOKS::"
      },
      {
        "name": "NEXT_PUBLIC_PRODUCT_CODE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-frontend/config-iEXO91:NEXT_PUBLIC_PRODUCT_CODE::"
      },
      {
        "name": "NEXT_PUBLIC_QUOTATION_PDF_WEBHOOKS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-frontend/config-iEXO91:NEXT_PUBLIC_QUOTATION_PDF_WEBHOOKS::"
      },
      {
        "name": "NEXT_PUBLIC_RECAPTCHA_SITE_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-frontend/config-iEXO91:NEXT_PUBLIC_RECAPTCHA_SITE_KEY::"
      },
      {
        "name": "NEXT_PUBLIC_ROBOTS_META",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-frontend/config-iEXO91:NEXT_PUBLIC_ROBOTS_META::"
      },
      {
        "name": "NEXT_PUBLIC_SALESORDER_PDF_WEBHOOKS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-frontend/config-iEXO91:NEXT_PUBLIC_SALESORDER_PDF_WEBHOOKS::"
      },
      {
        "name": "NEXT_PUBLIC_SAMPLEORDER_PDF_WEBHOOKS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-frontend/config-iEXO91:NEXT_PUBLIC_SAMPLEORDER_PDF_WEBHOOKS::"
      },
      {
        "name": "NEXT_PUBLIC_SSO_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-frontend/config-iEXO91:NEXT_PUBLIC_SSO_BASE_URL::"
      },
      {
        "name": "RECAPTCHA_SECRET_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/gjca-ecommerce-frontend/config-iEXO91:RECAPTCHA_SECRET_KEY::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-gjca-ecommerce-frontend",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "gjca-ecommerce-frontend"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_hrms_attendance_r38" {
  family                   = "development-hrms-attendance"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "hrms-attendance",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/hrms-attendance:sha-d4a1a9e-37599385212",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "hrms-attendance",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "production"
      }
    ],
    "secrets": [
      {
        "name": "VITE_API_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-attendance/config-lenf0Y:VITE_API_BASE_URL::"
      },
      {
        "name": "VITE_DECRYPT_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-attendance/config-lenf0Y:VITE_DECRYPT_API::"
      },
      {
        "name": "VITE_GLOBAL_API_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-attendance/config-lenf0Y:VITE_GLOBAL_API_BASE_URL::"
      },
      {
        "name": "VITE_GOOGLE_MAPS_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-attendance/config-lenf0Y:VITE_GOOGLE_MAPS_API_KEY::"
      },
      {
        "name": "VITE_LOGIN_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-attendance/config-lenf0Y:VITE_LOGIN_URL::"
      },
      {
        "name": "VITE_PERMISSION_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-attendance/config-lenf0Y:VITE_PERMISSION_KEY::"
      },
      {
        "name": "VITE_PERMISSION_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-attendance/config-lenf0Y:VITE_PERMISSION_URL::"
      },
      {
        "name": "VITE_PRODUCT_CODE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-attendance/config-lenf0Y:VITE_PRODUCT_CODE::"
      },
      {
        "name": "VITE_PROFILE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-attendance/config-lenf0Y:VITE_PROFILE_URL::"
      },
      {
        "name": "VITE_VERIFY_TOKEN_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-attendance/config-lenf0Y:VITE_VERIFY_TOKEN_URL::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-hrms-attendance",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "hrms-attendance"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_hrms_backend_r317" {
  family                   = "development-hrms-backend"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "hrms-backend",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/hrms-backend:sha-cabee72-37889325304",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "hrms-backend",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "DEBUG",
        "value": "False"
      },
      {
        "name": "DJANGO_SETTINGS_MODULE",
        "value": "hrms.settings"
      }
    ],
    "secrets": [
      {
        "name": "API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-backend/config:API_URL::"
      },
      {
        "name": "APP_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-backend/config:APP_URL::"
      },
      {
        "name": "ATTENDANCE_DEVICE_REGISTRATION_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-backend/config:ATTENDANCE_DEVICE_REGISTRATION_KEY::"
      },
      {
        "name": "AUTH_DB_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-backend/config:AUTH_DB_NAME::"
      },
      {
        "name": "AWS_API_ENDPOINT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-backend/config:AWS_API_ENDPOINT::"
      },
      {
        "name": "AWS_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-backend/config:AWS_API_KEY::"
      },
      {
        "name": "AWS_API_VERSION",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-backend/config:AWS_API_VERSION::"
      },
      {
        "name": "AWS_S3_BUCKET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-backend/config:AWS_S3_BUCKET::"
      },
      {
        "name": "AWS_S3_REGION",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-backend/config:AWS_S3_REGION::"
      },
      {
        "name": "BIOMETRIC_SOAP_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-backend/config:BIOMETRIC_SOAP_URL::"
      },
      {
        "name": "BIOMETRIC_USERNAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-backend/config:BIOMETRIC_USERNAME::"
      },
      {
        "name": "BIOMETRIC_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-backend/config:BIOMETRIC_PASSWORD::"
      },
      {
        "name": "CANDIDATE_JWT_SECRET_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-backend/config:CANDIDATE_JWT_SECRET_KEY::"
      },
      {
        "name": "CLIENT_EMAIL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-backend/config:CLIENT_EMAIL::"
      },
      {
        "name": "EMAIL_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-backend/config:EMAIL_HOST::"
      },
      {
        "name": "EMAIL_HOST_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-backend/config:EMAIL_HOST_PASSWORD::"
      },
      {
        "name": "EMAIL_HOST_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-backend/config:EMAIL_HOST_USER::"
      },
      {
        "name": "EMAIL_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-backend/config:EMAIL_PORT::"
      },
      {
        "name": "EMAIL_USE_TLS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-backend/config:EMAIL_USE_TLS::"
      },
      {
        "name": "GOOGLE_MAPS_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-backend/config:GOOGLE_MAPS_API_KEY::"
      },
      {
        "name": "HEX_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-hex-key/config-BGrEHQ:ENCRYPT_HEX_KEY::"
      },
      {
        "name": "HRMS_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-backend/config:HRMS_API_KEY::"
      },
      {
        "name": "HRMS_DB_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-backend/config:HRMS_DB_NAME::"
      },
      {
        "name": "HRMS_DB_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-backend/config:HRMS_DB_PASSWORD::"
      },
      {
        "name": "HRMS_DB_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-backend/config:HRMS_DB_PORT::"
      },
      {
        "name": "HRMS_DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-backend/config:HRMS_DB_USER::"
      },
      {
        "name": "LOGOUT_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-backend/config:LOGOUT_URL::"
      },
      {
        "name": "MONGO_DB",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-backend/config:MONGO_DB::"
      },
      {
        "name": "MONGO_URI",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-backend/config:MONGO_URI::"
      },
      {
        "name": "MS_GRAPH_CLIENT_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-backend/config:MS_GRAPH_CLIENT_ID::"
      },
      {
        "name": "MS_GRAPH_CLIENT_SECRET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-backend/config:MS_GRAPH_CLIENT_SECRET::"
      },
      {
        "name": "MS_GRAPH_TENANT_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-backend/config:MS_GRAPH_TENANT_ID::"
      },
      {
        "name": "OPENAI_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-backend/config:OPENAI_API_KEY::"
      },
      {
        "name": "PERMISSION_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-backend/config:PERMISSION_KEY::"
      },
      {
        "name": "PERMISSION_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-backend/config:PERMISSION_URL::"
      },
      {
        "name": "PRODUCT_CODE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-backend/config:PRODUCT_CODE::"
      },
      {
        "name": "PURCHASE_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-backend/config:PURCHASE_API::"
      },
      {
        "name": "SALES_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-backend/config:SALES_API::"
      },
      {
        "name": "SSO_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-backend/config:SSO_API_KEY::"
      },
      {
        "name": "STRIPE_PUBLISHABLE_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-backend/config:STRIPE_PUBLISHABLE_KEY::"
      },
      {
        "name": "STRIPE_SECRET_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-backend/config:STRIPE_SECRET_KEY::"
      },
      {
        "name": "STRIPE_WEBHOOK_SECRET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-backend/config:STRIPE_WEBHOOK_SECRET::"
      },
      {
        "name": "WORK_FLOW_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-backend/config:WORK_FLOW_URL::"
      },
      {
        "name": "WORKFLOW_BASIC_AUTH_USERNAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-backend/config:WORKFLOW_BASIC_AUTH_USERNAME::"
      },
      {
        "name": "WORKFLOW_BASIC_AUTH_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-backend/config:WORKFLOW_BASIC_AUTH_PASSWORD::"
      },
      {
        "name": "FIREBASE_SERVICE_ACCOUNT_JSON",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-backend/config:FIREBASE_SERVICE_ACCOUNT_JSON::"
      },
      {
        "name": "AUTH_DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config:host::"
      },
      {
        "name": "AUTH_DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-backend/config:HRMS_DB_USER::"
      },
      {
        "name": "AUTH_DB_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-backend/config:HRMS_DB_PASSWORD::"
      },
      {
        "name": "AUTH_DB_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config:port::"
      },
      {
        "name": "HRMS_DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config:host::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-hrms-backend",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "hrms-backend"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_hrms_careeer_frontend_r16" {
  family                   = "development-hrms-careeer-frontend"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "hrms-careeer-frontend",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/hrms-careeer-frontend:sha-3c30fcb-34957358392",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "hrms-careeer-frontend",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "production"
      }
    ],
    "secrets": [
      {
        "name": "VITE_ADDRESS_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-careeer-frontend/config-oLZXQo:VITE_ADDRESS_API::"
      },
      {
        "name": "VITE_API_APP_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-careeer-frontend/config-oLZXQo:VITE_API_APP_URL::"
      },
      {
        "name": "VITE_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-careeer-frontend/config-oLZXQo:VITE_API_KEY::"
      },
      {
        "name": "VITE_COOKIE_DOMAIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-careeer-frontend/config-oLZXQo:VITE_COOKIE_DOMAIN::"
      },
      {
        "name": "VITE_FIND_SUPPLIER_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-careeer-frontend/config-oLZXQo:VITE_FIND_SUPPLIER_API_URL::"
      },
      {
        "name": "VITE_WORK_FLOW_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-careeer-frontend/config-oLZXQo:VITE_WORK_FLOW_URL::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-hrms-careeer-frontend",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "hrms-careeer-frontend"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_hrms_employee_r111" {
  family                   = "development-hrms-employee"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "hrms-employee",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/hrms-employee:sha-2ac950f-37458027753",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "hrms-employee",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "production"
      }
    ],
    "secrets": [
      {
        "name": "VITE_API_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-employee/config-ToAT04:VITE_API_BASE_URL::"
      },
      {
        "name": "VITE_ATTENDANCE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-employee/config-ToAT04:VITE_ATTENDANCE_URL::"
      },
      {
        "name": "VITE_BANK_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-employee/config-ToAT04:VITE_BANK_API_URL::"
      },
      {
        "name": "VITE_FIND_SUPPLIER_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-employee/config-ToAT04:VITE_FIND_SUPPLIER_API_URL::"
      },
      {
        "name": "VITE_GLOBAL_API_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-employee/config-ToAT04:VITE_GLOBAL_API_BASE_URL::"
      },
      {
        "name": "VITE_LOCATION_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-employee/config-ToAT04:VITE_LOCATION_API_URL::"
      },
      {
        "name": "VITE_LOGIN_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-employee/config-ToAT04:VITE_LOGIN_URL::"
      },
      {
        "name": "VITE_PERMISSION_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-employee/config-ToAT04:VITE_PERMISSION_KEY::"
      },
      {
        "name": "VITE_PERMISSION_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-employee/config-ToAT04:VITE_PERMISSION_URL::"
      },
      {
        "name": "VITE_PRODUCT_CODE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-employee/config-ToAT04:VITE_PRODUCT_CODE::"
      },
      {
        "name": "VITE_VERIFY_TOKEN_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-employee/config-ToAT04:VITE_VERIFY_TOKEN_BASE_URL::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-hrms-employee",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "hrms-employee"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_hrms_inventory_r8" {
  family                   = "development-hrms-inventory"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "hrms-inventory",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/hrms-inventory:sha-e901f3a-37766850102",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "hrms-inventory",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "production"
      }
    ],
    "secrets": [
      {
        "name": "VITE_API_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-inventory/config-57YoPY:VITE_API_BASE_URL::"
      },
      {
        "name": "VITE_API_SECURITY_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-inventory/config-57YoPY:VITE_API_SECURITY_URL::"
      },
      {
        "name": "VITE_APP_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-inventory/config-57YoPY:VITE_APP_URL::"
      },
      {
        "name": "VITE_BANK_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-inventory/config-57YoPY:VITE_BANK_API_URL::"
      },
      {
        "name": "VITE_DOMAIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-inventory/config-57YoPY:VITE_DOMAIN::"
      },
      {
        "name": "VITE_LOGIN_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-inventory/config-57YoPY:VITE_LOGIN_URL::"
      },
      {
        "name": "VITE_N8N_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-inventory/config-57YoPY:VITE_N8N_URL::"
      },
      {
        "name": "VITE_VERIFY_TOKEN_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-inventory/config-57YoPY:VITE_VERIFY_TOKEN_BASE_URL::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-hrms-inventory",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "hrms-inventory"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_hrms_payroll_r47" {
  family                   = "development-hrms-payroll"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "hrms-payroll",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/hrms-payroll:sha-7030014-37888850662",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "hrms-payroll",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "production"
      }
    ],
    "secrets": [
      {
        "name": "VITE_API_APP_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-payroll/config-jbOCSR:VITE_API_APP_URL::"
      },
      {
        "name": "VITE_API_GLOBAL_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-payroll/config-jbOCSR:VITE_API_GLOBAL_URL::"
      },
      {
        "name": "VITE_APP_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-payroll/config-jbOCSR:VITE_APP_URL::"
      },
      {
        "name": "VITE_DATABASE_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-payroll/config-jbOCSR:VITE_DATABASE_ID::"
      },
      {
        "name": "VITE_DOMAIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-payroll/config-jbOCSR:VITE_DOMAIN::"
      },
      {
        "name": "VITE_FIND_SUPPLIER_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-payroll/config-jbOCSR:VITE_FIND_SUPPLIER_API_URL::"
      },
      {
        "name": "VITE_FIRE_BASE_MESSAGE_COLLECTION",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-payroll/config-jbOCSR:VITE_FIRE_BASE_MESSAGE_COLLECTION::"
      },
      {
        "name": "VITE_FIRE_BASE_USERLOGIN_COLLECTION",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-payroll/config-jbOCSR:VITE_FIRE_BASE_USERLOGIN_COLLECTION::"
      },
      {
        "name": "VITE_WORK_FLOW_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-payroll/config-jbOCSR:VITE_WORK_FLOW_URL::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-hrms-payroll",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "hrms-payroll"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_hrms_recruitment_frontend_r43" {
  family                   = "development-hrms-recruitment-frontend"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "hrms-recruitment-frontend",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/hrms-recruitment-frontend:sha-e120ae7-35084320457",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "hrms-recruitment-frontend",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "production"
      }
    ],
    "secrets": [
      {
        "name": "VITE_API_APP_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-recruitment-frontend/config-DgyIkC:VITE_API_APP_URL::"
      },
      {
        "name": "VITE_API_GLOBAL_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-recruitment-frontend/config-DgyIkC:VITE_API_GLOBAL_URL::"
      },
      {
        "name": "VITE_API_SECURITY_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-recruitment-frontend/config-DgyIkC:VITE_API_SECURITY_URL::"
      },
      {
        "name": "VITE_APP_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-recruitment-frontend/config-DgyIkC:VITE_APP_URL::"
      },
      {
        "name": "VITE_DATABASE_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-recruitment-frontend/config-DgyIkC:VITE_DATABASE_ID::"
      },
      {
        "name": "VITE_DOMAIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-recruitment-frontend/config-DgyIkC:VITE_DOMAIN::"
      },
      {
        "name": "VITE_FIND_SUPPLIER_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-recruitment-frontend/config-DgyIkC:VITE_FIND_SUPPLIER_API_URL::"
      },
      {
        "name": "VITE_FIRE_BASE_MESSAGE_COLLECTION",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-recruitment-frontend/config-DgyIkC:VITE_FIRE_BASE_MESSAGE_COLLECTION::"
      },
      {
        "name": "VITE_FIRE_BASE_USERLOGIN_COLLECTION",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-recruitment-frontend/config-DgyIkC:VITE_FIRE_BASE_USERLOGIN_COLLECTION::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-hrms-recruitment-frontend",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "hrms-recruitment-frontend"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_hrms_report_r24" {
  family                   = "development-hrms-report"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "hrms-report",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/hrms-report:sha-5487d83-36104387314",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "hrms-report",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "production"
      }
    ],
    "secrets": [
      {
        "name": "VITE_API_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-report/config-X2jlFH:VITE_API_BASE_URL::"
      },
      {
        "name": "VITE_GLOBAL_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-report/config-X2jlFH:VITE_GLOBAL_URL::"
      },
      {
        "name": "VITE_LOGIN_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-report/config-X2jlFH:VITE_LOGIN_URL::"
      },
      {
        "name": "VITE_PROFILE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-report/config-X2jlFH:VITE_PROFILE_URL::"
      },
      {
        "name": "VITE_PERMISSION_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-report/config-X2jlFH:VITE_PERMISSION_KEY::"
      },
      {
        "name": "VITE_PERMISSION_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-report/config-X2jlFH:VITE_PERMISSION_URL::"
      },
      {
        "name": "VITE_PRODUCT_CODE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-report/config-X2jlFH:VITE_PRODUCT_CODE::"
      },
      {
        "name": "VITE_RECRUITMENT_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/hrms-report/config-X2jlFH:VITE_RECRUITMENT_URL::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-hrms-report",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "hrms-report"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_inventory_service_backend_r64" {
  family                   = "development-inventory-service-backend"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "inventory-service-backend",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/inventory-service-backend:sha-41fc3c9-37265581284",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "inventory-service-backend",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "production"
      }
    ],
    "secrets": [
      {
        "name": "APP_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/inventory-service-backend/config-c0gdEi:APP_PORT::"
      },
      {
        "name": "ASTER_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/inventory-service-backend/config-c0gdEi:ASTER_API::"
      },
      {
        "name": "ASTER_AUTH",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/inventory-service-backend/config-c0gdEi:ASTER_AUTH::"
      },
      {
        "name": "ASTER_COA_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/inventory-service-backend/config-c0gdEi:ASTER_COA_API::"
      },
      {
        "name": "ASTER_DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:host::"
      },
      {
        "name": "ASTER_DB_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/inventory-service-backend/config-c0gdEi:ASTER_DB_NAME::"
      },
      {
        "name": "ASTER_DB_PASS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/inventory-service-backend/config-c0gdEi:password::"
      },
      {
        "name": "ASTER_DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/inventory-service-backend/config-c0gdEi:username::"
      },
      {
        "name": "AWS_REGION",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/inventory-service-backend/config-c0gdEi:AWS_REGION::"
      },
      {
        "name": "CORS_ORIGIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/inventory-service-backend/config-c0gdEi:CORS_ORIGIN::"
      },
      {
        "name": "CURRENCY_EXCHANGE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/inventory-service-backend/config-c0gdEi:CURRENCY_EXCHANGE::"
      },
      {
        "name": "DBI360_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/inventory-service-backend/config-c0gdEi:DBI360_API_URL::"
      },
      {
        "name": "DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:host::"
      },
      {
        "name": "DB_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:port::"
      },
      {
        "name": "DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/inventory-service-backend/config-c0gdEi:username::"
      },
      {
        "name": "DB_PASS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/inventory-service-backend/config-c0gdEi:password::"
      },
      {
        "name": "ENCRYPT_HEX_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/inventory-service-backend/config-c0gdEi:ENCRYPT_HEX_KEY::"
      },
      {
        "name": "FETCH_LOCATIONS_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/inventory-service-backend/config-c0gdEi:FETCH_LOCATIONS_API_KEY::"
      },
      {
        "name": "FINANCE_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/inventory-service-backend/config-c0gdEi:FINANCE_API_URL::"
      },
      {
        "name": "INVENTORY_STOCK_LEDGER_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/inventory-service-backend/config-c0gdEi:INVENTORY_STOCK_LEDGER_URL::"
      },
      {
        "name": "MYSQL_DB",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/inventory-service-backend/config-c0gdEi:MYSQL_DB::"
      },
      {
        "name": "S3_BUCKET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/inventory-service-backend/config-c0gdEi:S3_BUCKET::"
      },
      {
        "name": "VMI_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/inventory-service-backend/config-c0gdEi:VMI_API_URL::"
      },
      {
        "name": "X_DATABASE_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/inventory-service-backend/config-c0gdEi:X_DATABASE_ID::"
      },
      {
        "name": "B2BADMIN_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/inventory-service-backend/config-c0gdEi:B2BADMIN_API_URL::"
      },
      {
        "name": "B2BADMIN_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/inventory-service-backend/config-c0gdEi:B2BADMIN_API_KEY::"
      },
      {
        "name": "PERMISSION_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/inventory-service-backend/config-c0gdEi:PERMISSION_API_URL::"
      },
      {
        "name": "PERMISSION_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/inventory-service-backend/config-c0gdEi:PERMISSION_KEY::"
      },
      {
        "name": "PERMISSION_PRODUCT_CODE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/inventory-service-backend/config-c0gdEi:PERMISSION_PRODUCT_CODE::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-inventory-service-backend",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "inventory-service-backend"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_inventory_service_frontend_r41" {
  family                   = "development-inventory-service-frontend"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "inventory-service-frontend",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/inventory-service-frontend:sha-1615aff-37582102496",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "inventory-service-frontend",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "production"
      }
    ],
    "secrets": [
      {
        "name": "VITE_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/inventory-service-frontend/config-2jR0Qm:VITE_API_URL::"
      },
      {
        "name": "VITE_COOKIE_DOMAIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/inventory-service-frontend/config-2jR0Qm:VITE_COOKIE_DOMAIN::"
      },
      {
        "name": "VITE_COUNTRY_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/inventory-service-frontend/config-2jR0Qm:VITE_COUNTRY_API::"
      },
      {
        "name": "VITE_DBI_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/inventory-service-frontend/config-2jR0Qm:VITE_DBI_URL::"
      },
      {
        "name": "VITE_GLOBAL_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/inventory-service-frontend/config-2jR0Qm:VITE_GLOBAL_URL::"
      },
      {
        "name": "VITE_PRODUCT_CODE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/inventory-service-frontend/config-2jR0Qm:VITE_PRODUCT_CODE::"
      },
      {
        "name": "VITE_PURCHASE_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/inventory-service-frontend/config-2jR0Qm:VITE_PURCHASE_API::"
      },
      {
        "name": "VITE_VMI_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/inventory-service-frontend/config-2jR0Qm:VITE_VMI_API_URL::"
      },
      {
        "name": "VITE_VMI_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/inventory-service-frontend/config-2jR0Qm:VITE_VMI_URL::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-inventory-service-frontend",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "inventory-service-frontend"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_jeevahealthcare_website_r4" {
  family                   = "development-jeevahealthcare-website"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "jeevahealthcare-website",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/jeevahealthcare-website:sha-85cfae8",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "jeevahealthcare-website",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "development"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-jeevahealthcare-website",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "jeevahealthcare-website"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_lead_qualifier_backend_r67" {
  family                   = "development-lead-qualifier-backend"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "lead-qualifier-backend",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/lead-qualifier-backend:sha-dc75153-37309127423",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "lead-qualifier-backend",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "production"
      }
    ],
    "secrets": [
      {
        "name": "N8N_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/lead-qualifier-backend/config-iy8Pcy:N8N_BASE_URL::"
      },
      {
        "name": "N8N_USERNAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/lead-qualifier-backend/config-iy8Pcy:N8N_USERNAME::"
      },
      {
        "name": "N8N_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/lead-qualifier-backend/config-iy8Pcy:N8N_PASSWORD::"
      },
      {
        "name": "NEXT_PUBLIC_DOMAIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/lead-qualifier-backend/config-iy8Pcy:NEXT_PUBLIC_DOMAIN::"
      },
      {
        "name": "ALLOWED_ORIGINS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/lead-qualifier-backend/config-iy8Pcy:ALLOWED_ORIGINS::"
      },
      {
        "name": "ACCESS_TOKEN_SECRET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/lead-qualifier-backend/config-iy8Pcy:ACCESS_TOKEN_SECRET::"
      },
      {
        "name": "ACCESS_TOKEN_EXPIRES_IN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/lead-qualifier-backend/config-iy8Pcy:ACCESS_TOKEN_EXPIRES_IN::"
      },
      {
        "name": "ENCRYPT_HEX_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-hex-key/config-BGrEHQ:ENCRYPT_HEX_KEY::"
      },
      {
        "name": "AWS_BUCKET_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/lead-qualifier-backend/config-iy8Pcy:AWS_BUCKET_NAME::"
      },
      {
        "name": "AWS_REGION",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/lead-qualifier-backend/config-iy8Pcy:AWS_REGION::"
      },
      {
        "name": "CLICKHOUSE_CONFIG",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/lead-qualifier-backend/config-iy8Pcy:CLICKHOUSE_CONFIG::"
      },
      {
        "name": "MYSQL_DB",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/lead-qualifier-backend/config-iy8Pcy:MYSQL_DB::"
      },
      {
        "name": "VERIFY_TOKEN_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/lead-qualifier-backend/config-iy8Pcy:VERIFY_TOKEN_API::"
      },
      {
        "name": "DEFAULT_ADDRESS_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/lead-qualifier-backend/config-iy8Pcy:DEFAULT_ADDRESS_API::"
      },
      {
        "name": "PRODUCT_DETAILS_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/lead-qualifier-backend/config-iy8Pcy:PRODUCT_DETAILS_API::"
      },
      {
        "name": "FETCH_LOCATION_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/lead-qualifier-backend/config-iy8Pcy:FETCH_LOCATION_API_KEY::"
      },
      {
        "name": "FETCH_LOCATION_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/lead-qualifier-backend/config-iy8Pcy:FETCH_LOCATION_API_URL::"
      },
      {
        "name": "GLOBAL_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/lead-qualifier-backend/config-iy8Pcy:GLOBAL_API_URL::"
      },
      {
        "name": "PERMISSION_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/lead-qualifier-backend/config-iy8Pcy:PERMISSION_URL::"
      },
      {
        "name": "PERMISSION_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/lead-qualifier-backend/config-iy8Pcy:PERMISSION_KEY::"
      },
      {
        "name": "PRODUCT_CODE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/lead-qualifier-backend/config-iy8Pcy:PRODUCT_CODE::"
      },
      {
        "name": "PERMISSION_BYPASS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/lead-qualifier-backend/config-iy8Pcy:PERMISSION_BYPASS::"
      },
      {
        "name": "ASTER_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/lead-qualifier-backend/config-iy8Pcy:ASTER_BASE_URL::"
      },
      {
        "name": "DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:host::"
      },
      {
        "name": "DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:username::"
      },
      {
        "name": "DB_PASS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:password::"
      },
      {
        "name": "DB_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:port::"
      },
      {
        "name": "MONGODB_URI",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/lead-qualifier-backend/config-iy8Pcy:MONGODB_URI::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-lead-qualifier-backend",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "lead-qualifier-backend"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_lead_qualifier_frontend_r73" {
  family                   = "development-lead-qualifier-frontend"
  network_mode             = "awsvpc"
  cpu                      = "256"
  memory                   = "512"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "lead-qualifier-frontend",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/lead-qualifier-frontend:sha-9dcc194-35317997245",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "lead-qualifier-frontend",
        "appProtocol": "http"
      }
    ],
    "secrets": [
      {
        "name": "VITE_API_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/lead-qualifier-frontend/config-sDMllj:VITE_API_BASE_URL::"
      },
      {
        "name": "VITE_LOGIN_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/lead-qualifier-frontend/config-sDMllj:VITE_LOGIN_URL::"
      },
      {
        "name": "VITE_APP_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/lead-qualifier-frontend/config-sDMllj:VITE_APP_URL::"
      },
      {
        "name": "VITE_BASE_DOMAIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/lead-qualifier-frontend/config-sDMllj:VITE_BASE_DOMAIN::"
      },
      {
        "name": "VITE_PROFILE_REDIRECT_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/lead-qualifier-frontend/config-sDMllj:VITE_PROFILE_REDIRECT_URL::"
      },
      {
        "name": "VITE_PERMISSION_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/lead-qualifier-frontend/config-sDMllj:VITE_PERMISSION_URL::"
      },
      {
        "name": "VITE_PERMISSION_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/lead-qualifier-frontend/config-sDMllj:VITE_PERMISSION_KEY::"
      },
      {
        "name": "VITE_PRODUCT_CODE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/lead-qualifier-frontend/config-sDMllj:VITE_PRODUCT_CODE::"
      },
      {
        "name": "VITE_SALES_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/lead-qualifier-frontend/config-sDMllj:VITE_SALES_API_URL::"
      },
      {
        "name": "VITE_PERMISSION_CODE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/lead-qualifier-frontend/config-sDMllj:VITE_PERMISSION_CODE::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-lead-qualifier-frontend",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "lead-qualifier-frontend"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_marketing_backend_service_r156" {
  family                   = "development-marketing-backend-service"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "marketing-backend-service",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/marketing-backend-service:sha-8c9986e-37604534748",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp"
      }
    ],
    "environment": [
      {
        "name": "DATA_CORRECTION_FILTER_OPTIONS_ORIGIN",
        "value": "https://nexus.demodbi360.com"
      },
      {
        "name": "NEXT_PUBLIC_DOMAIN",
        "value": "demodbi360"
      },
      {
        "name": "DATA_CORRECTION_PEOPLE_FILTER_OPTIONS_REFERER",
        "value": "https://nexus.demodbi360.com/"
      },
      {
        "name": "DATA_CORRECTION_PEOPLE_LISTING_REFERER",
        "value": "https://www.greenjeeva.com"
      },
      {
        "name": "GLOBAL_API_URL",
        "value": "https://globalapi.demodbi360.com/"
      },
      {
        "name": "ALLOWED_ORIGINS",
        "value": "https://marketing.demodbi360.com,https://chatarea.demodbi360.com"
      },
      {
        "name": "DATA_CORRECTION_PEOPLE_FILTER_OPTIONS_ORIGIN",
        "value": "https://nexus.demodbi360.com"
      },
      {
        "name": "N8N_BASE_URL",
        "value": "https://n8n.srv859936.hstgr.cloud/webhook/dev"
      },
      {
        "name": "DATA_CORRECTION_LISTING_SOURCE",
        "value": "Frontsite"
      },
      {
        "name": "DATA_CORRECTION_PEOPLE_LISTING_SOURCE",
        "value": "Frontsite"
      },
      {
        "name": "SOCKET_URL",
        "value": "https://gjecombackend.demodbi360.com"
      },
      {
        "name": "WEBHOOKS_USERNAME",
        "value": "SSO_Zyler_N8N_User"
      },
      {
        "name": "ELASTIC_INDEX_NAME",
        "value": "index_for_frontsite_products_sso_slug_id_test_new"
      },
      {
        "name": "MONGO_DB_NAME",
        "value": "Master"
      },
      {
        "name": "NEX_COMPANY",
        "value": "https://etl.nexus-data.io/erp/company/details"
      },
      {
        "name": "DATA_CORRECTION_FILTER_OPTIONS_URL",
        "value": "https://nexusapi.demodbi360.com/api/v1/company/filter-options"
      },
      {
        "name": "MONGO_DATA_CORRECTION_COLLECTION",
        "value": "organizationmaster"
      },
      {
        "name": "AWS_REGION",
        "value": "us-east-2"
      },
      {
        "name": "DATA_CORRECTION_LISTING_REFERER",
        "value": "https://www.greenjeeva.com"
      },
      {
        "name": "DATA_CORRECTION_PEOPLE_LISTING_URL",
        "value": "https://nexusapi.demodbi360.com/api/v1/people/people_search"
      },
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "AWS_BUCKET_NAME",
        "value": "testgj-developmentdoc"
      },
      {
        "name": "CLICKHOUSE_PORT",
        "value": "8443"
      },
      {
        "name": "FIND_SUPPLIERS_API_URL",
        "value": "https://findsuppliersapi.demodbi360.com/"
      },
      {
        "name": "CLOUDFRONT_URL_PRODUCT_IMG",
        "value": "https://d2jsgzwygou74k.cloudfront.net/"
      },
      {
        "name": "DATA_CORRECTION_PEOPLE_FILTER_OPTIONS_URL",
        "value": "https://nexusapi.demodbi360.com/api/v1/people/filter-options"
      },
      {
        "name": "CHATBOT_PERMISSION_IDS",
        "value": "1118,1121"
      },
      {
        "name": "MONGODB_DB_NAME",
        "value": "chatapp"
      },
      {
        "name": "CLICKHOUSE_SECURE",
        "value": "true"
      },
      {
        "name": "DATA_CORRECTION_LISTING_URL",
        "value": "https://nexusapi.demodbi360.com/api/v1/company/company_search"
      },
      {
        "name": "DATA_CORRECTION_FILTER_OPTIONS_REFERER",
        "value": "https://nexus.demodbi360.com/"
      },
      {
        "name": "SOURCE",
        "value": "demo"
      },
      {
        "name": "N8N_NOTIFICATION_URL",
        "value": "https://notificationapi.demodbi360.com/api"
      },
      {
        "name": "DATA_CORRECTION_EMAIL_VERIFIER_URL",
        "value": "https://emailverifier.nexus-data.io/verify-email"
      },
      {
        "name": "ENTITY_API_URL",
        "value": "https://entity.demodbi360.com"
      }
    ],
    "secrets": [
      {
        "name": "DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/marketing-backend-service/config:DB_HOST::"
      },
      {
        "name": "DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/marketing-backend-service/config:username::"
      },
      {
        "name": "DB_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/marketing-backend-service/config:password::"
      },
      {
        "name": "DB_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/marketing-backend-service/config:DB_NAME::"
      },
      {
        "name": "CLICKHOUSE_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/marketing-backend-service/config:CLICKHOUSE_HOST::"
      },
      {
        "name": "CLICKHOUSE_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/marketing-backend-service/config:CLICKHOUSE_USER::"
      },
      {
        "name": "CLICKHOUSE_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/marketing-backend-service/config:CLICKHOUSE_PASSWORD::"
      },
      {
        "name": "ELASTIC_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/marketing-backend-service/config:ELASTIC_HOST::"
      },
      {
        "name": "ELASTIC_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/marketing-backend-service/config:ELASTIC_USER::"
      },
      {
        "name": "ELASTIC_PASS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/marketing-backend-service/config:ELASTIC_PASS::"
      },
      {
        "name": "ENCRYPT_HEX_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/marketing-backend-service/config:ENCRYPT_HEX_KEY::"
      },
      {
        "name": "MONGODB_URI",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/marketing-backend-service/config:MONGODB_URI::"
      },
      {
        "name": "MONGO_URI",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/marketing-backend-service/config:MONGO_URI::"
      },
      {
        "name": "NEX_COMPANY_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/marketing-backend-service/config:NEX_COMPANY_KEY::"
      },
      {
        "name": "SALESFORCE_API_TOKEN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/marketing-backend-service/config:SALESFORCE_API_TOKEN::"
      },
      {
        "name": "WEBHOOKS_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/marketing-backend-service/config:WEBHOOKS_PASSWORD::"
      },
      {
        "name": "WHATSAPP_ACCESS_TOKEN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/marketing-backend-service/config:WHATSAPP_ACCESS_TOKEN::"
      },
      {
        "name": "PERMISSION_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/marketing-backend-service/config:PERMISSION_API_URL::"
      },
      {
        "name": "PERMISSION_PRODUCT_CODE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/marketing-backend-service/config:PERMISSION_PRODUCT_CODE::"
      },
      {
        "name": "DECRYPT_TOKEN_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/marketing-backend-service/config:DECRYPT_TOKEN_API::"
      },
      {
        "name": "VERIFY_TOKEN_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/marketing-backend-service/config:VERIFY_TOKEN_API::"
      },
      {
        "name": "LOCATION_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/marketing-backend-service/config:LOCATION_URL::"
      },
      {
        "name": "LOCATION_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/marketing-backend-service/config:LOCATION_API_KEY::"
      },
      {
        "name": "DEPARTMENTS_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/marketing-backend-service/config:DEPARTMENTS_API_KEY::"
      },
      {
        "name": "OPENAI_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/marketing-backend-service/config:OPENAI_API_KEY::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-marketing-backend-service",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "marketing-backend-service"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_marketing_frontend_service_r169" {
  family                   = "development-marketing-frontend-service"
  network_mode             = "awsvpc"
  cpu                      = "256"
  memory                   = "512"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "marketing-frontend-service",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/marketing-frontend-service:sha-9b74b44-37603850216",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "marketing-frontend-service",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "VITE_PRODUCT_CODE",
        "value": "25"
      },
      {
        "name": "VITE_PRICE_MATCH_API_URL",
        "value": "https://marketingapi.demodbi360.com/api"
      },
      {
        "name": "VITE_PERMISSION_URL",
        "value": "https://globalapi.demodbi360.com/api/v1/settings/access-controls/"
      },
      {
        "name": "VITE_CHATBOT_BASE_URL",
        "value": "https://intelligencechatbot.dbi360.com"
      },
      {
        "name": "VITE_API_URL",
        "value": "https://marketingapi.demodbi360.com/api"
      },
      {
        "name": "VITE_LOCATION_URL",
        "value": "https://o58c8eubk4.execute-api.us-east-2.amazonaws.com/prod/fetchLocation"
      }
    ],
    "secrets": [
      {
        "name": "VITE_LOCATION_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/marketing-frontend-service/config:VITE_LOCATION_KEY::"
      },
      {
        "name": "VITE_CHATBOT_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/marketing-frontend-service/config:VITE_CHATBOT_API_KEY::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-marketing-frontend-service",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "marketing-frontend-service"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_master_configuration_backend_r62" {
  family                   = "development-master-configuration-backend"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "master-configuration-backend",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/master-configuration-backend:sha-f12ad6b-37596105222",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "master-configuration-backend",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "development"
      }
    ],
    "secrets": [
      {
        "name": "APP_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-configuration-backend/config-MKZ8MM:APP_PORT::"
      },
      {
        "name": "AWS_BUCKET_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-configuration-backend/config-MKZ8MM:AWS_BUCKET_NAME::"
      },
      {
        "name": "AWS_REGION",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-configuration-backend/config-MKZ8MM:AWS_REGION::"
      },
      {
        "name": "CLUSTER_FOUR_MONGODB_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-configuration-backend/config-MKZ8MM:CLUSTER_FOUR_MONGODB_URL::"
      },
      {
        "name": "CORS_ORIGIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-configuration-backend/config-MKZ8MM:CORS_ORIGIN::"
      },
      {
        "name": "CREATE_CUSTOMER_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-configuration-backend/config-MKZ8MM:CREATE_CUSTOMER_API::"
      },
      {
        "name": "CRON_JOB_EMAIL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-configuration-backend/config-MKZ8MM:CRON_JOB_EMAIL::"
      },
      {
        "name": "CRON_JOB_PWD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-configuration-backend/config-MKZ8MM:CRON_JOB_PWD::"
      },
      {
        "name": "CRON_PROTECTED_EMAIL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-configuration-backend/config-MKZ8MM:CRON_PROTECTED_EMAIL::"
      },
      {
        "name": "CUSTOMER_ADMIN_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-configuration-backend/config-MKZ8MM:CUSTOMER_ADMIN_API::"
      },
      {
        "name": "DBI360_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-configuration-backend/config-MKZ8MM:DBI360_API_URL::"
      },
      {
        "name": "DB_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-configuration-backend/config-MKZ8MM:DB_PORT::"
      },
      {
        "name": "DECRYPT_TOKEN_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-configuration-backend/config-MKZ8MM:DECRYPT_TOKEN_API::"
      },
      {
        "name": "DEFAULT_DB_POLL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-configuration-backend/config-MKZ8MM:DEFAULT_DB_POLL::"
      },
      {
        "name": "DEV_AUTH_SERVER_MYSQL_DB",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-configuration-backend/config-MKZ8MM:DEV_AUTH_SERVER_MYSQL_DB::"
      },
      {
        "name": "DEV_SSO_MYSQL_DB",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-configuration-backend/config-MKZ8MM:DEV_SSO_MYSQL_DB::"
      },
      {
        "name": "ENCRYPTION_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-configuration-backend/config-MKZ8MM:ENCRYPTION_KEY::"
      },
      {
        "name": "ENCRYPT_HEX_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-hex-key/config-BGrEHQ:ENCRYPT_HEX_KEY::"
      },
      {
        "name": "FETCH_LOCATIONS_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-configuration-backend/config-MKZ8MM:FETCH_LOCATIONS_API_KEY::"
      },
      {
        "name": "FETCH_LOCATIONS_AWS_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-configuration-backend/config-MKZ8MM:FETCH_LOCATIONS_AWS_KEY::"
      },
      {
        "name": "FETCH_LOCATIONS_AWS_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-configuration-backend/config-MKZ8MM:FETCH_LOCATIONS_AWS_URL::"
      },
      {
        "name": "GJCA_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-configuration-backend/config-MKZ8MM:GJCA_API_KEY::"
      },
      {
        "name": "GJ_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-configuration-backend/config-MKZ8MM:GJ_API_KEY::"
      },
      {
        "name": "LOGIN_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-configuration-backend/config-MKZ8MM:LOGIN_API::"
      },
      {
        "name": "NEXUS_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-configuration-backend/config-MKZ8MM:NEXUS_API::"
      },
      {
        "name": "PRIVATE_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-configuration-backend/config-MKZ8MM:PRIVATE_KEY::"
      },
      {
        "name": "RELEVANCE_API_TOKEN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-configuration-backend/config-MKZ8MM:RELEVANCE_API_TOKEN::"
      },
      {
        "name": "SESSION_SECRET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-configuration-backend/config-MKZ8MM:SESSION_SECRET::"
      },
      {
        "name": "SSO_PRIVATE_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-configuration-backend/config-MKZ8MM:SSO_PRIVATE_KEY::"
      },
      {
        "name": "X_DATABASE_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-configuration-backend/config-MKZ8MM:X_DATABASE_ID::"
      },
      {
        "name": "DEV_AUTH_SERVER_DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:host::"
      },
      {
        "name": "DEV_AUTH_SERVER_DB_PASS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-configuration-backend/config-MKZ8MM:password::"
      },
      {
        "name": "DEV_AUTH_SERVER_DB_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:port::"
      },
      {
        "name": "DEV_AUTH_SERVER_DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-configuration-backend/config-MKZ8MM:username::"
      },
      {
        "name": "DEV_SSO_DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:host::"
      },
      {
        "name": "DEV_SSO_DB_PASS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-configuration-backend/config-MKZ8MM:password::"
      },
      {
        "name": "DEV_SSO_DB_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:port::"
      },
      {
        "name": "DEV_SSO_DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-configuration-backend/config-MKZ8MM:username::"
      },
      {
        "name": "RDS_CA_CERT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:RDS_CA_CERT::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-master-configuration-backend",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "master-configuration-backend"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_master_product_service_r97" {
  family                   = "development-master-product-service"
  network_mode             = "awsvpc"
  cpu                      = "1024"
  memory                   = "2048"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "master-product-service",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/master-product-service:sha-8f8e2e5-35208362367",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "master-product-service",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "production"
      }
    ],
    "secrets": [
      {
        "name": "DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config:host::"
      },
      {
        "name": "DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-product-service/config:username::"
      },
      {
        "name": "DB_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-product-service/config:password::"
      },
      {
        "name": "AWS_REGION",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-product-service/config:AWS_REGION::"
      },
      {
        "name": "AWS_BUCKET_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-product-service/config:AWS_BUCKET_NAME::"
      },
      {
        "name": "ASTER_DB_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-product-service/config:ASTER_DB_NAME::"
      },
      {
        "name": "DB_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-product-service/config:DB_NAME::"
      },
      {
        "name": "ACTIVITY_LOG_API_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-product-service/config:ACTIVITY_LOG_API_BASE_URL::"
      },
      {
        "name": "CORS_ORIGIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-product-service/config:CORS_ORIGIN::"
      },
      {
        "name": "MASTER_PROD_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-product-service/config:MASTER_PROD_API_URL::"
      },
      {
        "name": "NEXT_X_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-product-service/config:NEXT_X_API_KEY::"
      },
      {
        "name": "NEXT_PUBLIC_API_URL_PDF",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-product-service/config:NEXT_PUBLIC_API_URL_PDF::"
      },
      {
        "name": "NEXT_PUBLIC_ASTER_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-product-service/config:NEXT_PUBLIC_ASTER_API_URL::"
      },
      {
        "name": "NEXT_PUBLIC_AUTH_VMI_PRODUCT_CODE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-product-service/config:NEXT_PUBLIC_AUTH_VMI_PRODUCT_CODE::"
      },
      {
        "name": "NEXT_PUBLIC_DOMAIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-product-service/config:NEXT_PUBLIC_DOMAIN::"
      },
      {
        "name": "NEXT_PUBLIC_FRONTSITE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-product-service/config:NEXT_PUBLIC_FRONTSITE_URL::"
      },
      {
        "name": "HEX_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-hex-key/config-BGrEHQ:ENCRYPT_HEX_KEY::"
      },
      {
        "name": "NEXT_PUBLIC_MASTER_PROD_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-product-service/config:NEXT_PUBLIC_MASTER_PROD_API_URL::"
      },
      {
        "name": "NEXT_PUBLIC_N8N_NOTIFICATION_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-product-service/config:NEXT_PUBLIC_N8N_NOTIFICATION_URL::"
      },
      {
        "name": "NEXT_PUBLIC_ORIGIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-product-service/config:NEXT_PUBLIC_ORIGIN::"
      },
      {
        "name": "PROXY_RATE_LIMIT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-product-service/config:PROXY_RATE_LIMIT::"
      },
      {
        "name": "PROXY_RATE_PERIOD_MS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-product-service/config:PROXY_RATE_PERIOD_MS::"
      },
      {
        "name": "NEXT_PUBLIC_VMI_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-product-service/config:NEXT_PUBLIC_VMI_API_URL::"
      },
      {
        "name": "NEXT_PUBLIC_VMI_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-product-service/config:NEXT_PUBLIC_VMI_URL::"
      },
      {
        "name": "NEXT_PUBLIC_auth_api",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-product-service/config:NEXT_PUBLIC_auth_api::"
      },
      {
        "name": "NEXT_PUBLIC_auth_api_key",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-product-service/config:NEXT_PUBLIC_auth_api_key::"
      },
      {
        "name": "NEXT_PUBLIC_auth_product_code",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-product-service/config:NEXT_PUBLIC_auth_product_code::"
      },
      {
        "name": "NEXT_PUBLIC_ASTER_FRONTEND_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-product-service/config:NEXT_PUBLIC_ASTER_FRONTEND_URL::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-master-product-service",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "master-product-service"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_mfg_backend_r26" {
  family                   = "development-mfg-backend"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "mfg-backend",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/mfg-backend:sha-2da7ed2-37443280213",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "mfg-backend",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "NODE_ENV",
        "value": "production"
      },
      {
        "name": "AWS_REGION",
        "value": "us-east-2"
      },
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "INTERNAL_APP_PORT",
        "value": "3000"
      }
    ],
    "secrets": [
      {
        "name": "APP_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-backend/config-x9hTnb:APP_PORT::"
      },
      {
        "name": "AWS_BUCKET_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-backend/config-x9hTnb:AWS_BUCKET_NAME::"
      },
      {
        "name": "CORS_ORIGIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-backend/config-x9hTnb:CORS_ORIGIN::"
      },
      {
        "name": "DBI360_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-backend/config-x9hTnb:DBI360_API_URL::"
      },
      {
        "name": "DB_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-backend/config-x9hTnb:DB_PORT::"
      },
      {
        "name": "DECRYPT_DBI360_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-backend/config-x9hTnb:DECRYPT_DBI360_API_URL::"
      },
      {
        "name": "DEFAULT_DB_POLL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-backend/config-x9hTnb:DEFAULT_DB_POLL::"
      },
      {
        "name": "DEV_AUTH_SERVER_DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:host::"
      },
      {
        "name": "DEV_AUTH_SERVER_DB_PASS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-backend/config-x9hTnb:MYSQL_PASS::"
      },
      {
        "name": "DEV_AUTH_SERVER_DB_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:port::"
      },
      {
        "name": "DEV_AUTH_SERVER_DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-backend/config-x9hTnb:MYSQL_USER::"
      },
      {
        "name": "DEV_AUTH_SERVER_MYSQL_DB",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-backend/config-x9hTnb:DEV_AUTH_SERVER_MYSQL_DB::"
      },
      {
        "name": "DEV_SSO_DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:host::"
      },
      {
        "name": "DEV_SSO_DB_PASS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-backend/config-x9hTnb:MYSQL_PASS::"
      },
      {
        "name": "DEV_SSO_DB_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:port::"
      },
      {
        "name": "DEV_SSO_DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-backend/config-x9hTnb:MYSQL_USER::"
      },
      {
        "name": "DEV_SSO_MYSQL_DB",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-backend/config-x9hTnb:DEV_SSO_MYSQL_DB::"
      },
      {
        "name": "ENCRYPTION_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-backend/config-x9hTnb:ENCRYPTION_KEY::"
      },
      {
        "name": "FETCH_LOCATIONS_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-backend/config-x9hTnb:FETCH_LOCATIONS_API_KEY::"
      },
      {
        "name": "HEX_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-backend/config-x9hTnb:HEX_KEY::"
      },
      {
        "name": "IMAGE_CONFIG_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-backend/config-x9hTnb:IMAGE_CONFIG_API::"
      },
      {
        "name": "INVENTORY_STOCK_LEDGER_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-backend/config-x9hTnb:INVENTORY_STOCK_LEDGER_URL::"
      },
      {
        "name": "MASTER_CONFIG_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-backend/config-x9hTnb:MASTER_CONFIG_URL::"
      },
      {
        "name": "MONGO_PRODUCTS_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-backend/config-x9hTnb:MONGO_PRODUCTS_API::"
      },
      {
        "name": "PERMISSION_GATEWAY_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-backend/config-x9hTnb:PERMISSION_GATEWAY_API_KEY::"
      },
      {
        "name": "PERMISSION_GATEWAY_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-backend/config-x9hTnb:PERMISSION_GATEWAY_URL::"
      },
      {
        "name": "PERMISSION_PRODUCT_CODE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-backend/config-x9hTnb:PERMISSION_PRODUCT_CODE::"
      },
      {
        "name": "PRIVATE_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-backend/config-x9hTnb:PRIVATE_KEY::"
      },
      {
        "name": "REDIS_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-backend/config-x9hTnb:REDIS_URL::"
      },
      {
        "name": "SESSION_SECRET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-backend/config-x9hTnb:SESSION_SECRET::"
      },
      {
        "name": "SSO_PRIVATE_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-backend/config-x9hTnb:SSO_PRIVATE_KEY::"
      },
      {
        "name": "USERS_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-backend/config-x9hTnb:USERS_API_URL::"
      },
      {
        "name": "WEBSITE_GRAPH_FB_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-backend/config-x9hTnb:WEBSITE_GRAPH_FB_URL::"
      },
      {
        "name": "X_DATABASE_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-backend/config-x9hTnb:X_DATABASE_ID::"
      },
      {
        "name": "RDS_CA_CERT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:RDS_CA_CERT::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-mfg-backend",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "mfg-backend"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_mfg_frontend_r12" {
  family                   = "development-mfg-frontend"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "mfg-frontend",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/mfg-frontend:sha-05689ab",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "mfg-frontend",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "production"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-mfg-frontend",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "mfg-frontend"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_mfg_salesorder_backend_r2" {
  family                   = "development-mfg-salesorder-backend"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "mfg-salesorder-backend",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/mfg_salesorder_backend_service:latest",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp"
      }
    ],
    "secrets": [
      {
        "name": "ALLOWED_ORIGINS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-backend/config-TFd9lr:ALLOWED_ORIGINS::"
      },
      {
        "name": "APP_CONFIG",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-backend/config-TFd9lr:APP_CONFIG::"
      },
      {
        "name": "AWS_ACCESS_KEY_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-backend/config-TFd9lr:AWS_ACCESS_KEY_ID::"
      },
      {
        "name": "AWS_BUCKET_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-backend/config-TFd9lr:AWS_BUCKET_NAME::"
      },
      {
        "name": "AWS_REGION",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-backend/config-TFd9lr:AWS_REGION::"
      },
      {
        "name": "AWS_SECRET_ACCESS_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-backend/config-TFd9lr:AWS_SECRET_ACCESS_KEY::"
      },
      {
        "name": "AWS_SECRET_REGION",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-backend/config-TFd9lr:AWS_SECRET_REGION::"
      },
      {
        "name": "CURRENCY_EXCHANGE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-backend/config-TFd9lr:CURRENCY_EXCHANGE::"
      },
      {
        "name": "DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-backend/config-TFd9lr:DB_HOST::"
      },
      {
        "name": "DB_PASS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-backend/config-TFd9lr:DB_PASS::"
      },
      {
        "name": "DB_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-backend/config-TFd9lr:DB_PORT::"
      },
      {
        "name": "DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-backend/config-TFd9lr:DB_USER::"
      },
      {
        "name": "DOCUMENT_ANALYZER_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-backend/config-TFd9lr:DOCUMENT_ANALYZER_KEY::"
      },
      {
        "name": "FEDEX_CLIENT_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-backend/config-TFd9lr:FEDEX_CLIENT_KEY::"
      },
      {
        "name": "FEDEX_SECRET_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-backend/config-TFd9lr:FEDEX_SECRET_KEY::"
      },
      {
        "name": "FINANCE_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-backend/config-TFd9lr:FINANCE_API::"
      },
      {
        "name": "FINDSUPPLIER_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-backend/config-TFd9lr:FINDSUPPLIER_API::"
      },
      {
        "name": "GLOBAL_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-backend/config-TFd9lr:GLOBAL_API::"
      },
      {
        "name": "HEX_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-backend/config-TFd9lr:HEX_KEY::"
      },
      {
        "name": "HRMS_MYSQL_DB",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-backend/config-TFd9lr:HRMS_MYSQL_DB::"
      },
      {
        "name": "IMAGE_CONFIG_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-backend/config-TFd9lr:IMAGE_CONFIG_API::"
      },
      {
        "name": "INVENTORY_STOCK_LEDGER_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-backend/config-TFd9lr:INVENTORY_STOCK_LEDGER_URL::"
      },
      {
        "name": "MASTER_PRODUCT_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-backend/config-TFd9lr:MASTER_PRODUCT_URL::"
      },
      {
        "name": "MONGODB_URI",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-backend/config-TFd9lr:MONGODB_URI::"
      },
      {
        "name": "MYSQL_DB",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-backend/config-TFd9lr:MYSQL_DB::"
      },
      {
        "name": "N8N_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-backend/config-TFd9lr:N8N_PASSWORD::"
      },
      {
        "name": "N8N_USERNAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-backend/config-TFd9lr:N8N_USERNAME::"
      },
      {
        "name": "ORIGIN_RFERER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-backend/config-TFd9lr:ORIGIN_RFERER::"
      },
      {
        "name": "PERMISSION_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-backend/config-TFd9lr:PERMISSION_API_URL::"
      },
      {
        "name": "PERMISSION_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-backend/config-TFd9lr:PERMISSION_KEY::"
      },
      {
        "name": "PERMISSION_PRODUCT_CODE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-backend/config-TFd9lr:PERMISSION_PRODUCT_CODE::"
      },
      {
        "name": "POWERBI_CLIENT_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-backend/config-TFd9lr:POWERBI_CLIENT_ID::"
      },
      {
        "name": "POWERBI_CLIENT_SECRET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-backend/config-TFd9lr:POWERBI_CLIENT_SECRET::"
      },
      {
        "name": "POWERBI_TENANT_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-backend/config-TFd9lr:POWERBI_TENANT_ID::"
      },
      {
        "name": "PURCHASE_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-backend/config-TFd9lr:PURCHASE_API::"
      },
      {
        "name": "SALES_MODULE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-backend/config-TFd9lr:SALES_MODULE_URL::"
      },
      {
        "name": "SEND_EMAIL_AFTER_BOL_UPLOAD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-backend/config-TFd9lr:SEND_EMAIL_AFTER_BOL_UPLOAD::"
      },
      {
        "name": "SEND_EMAIL_TO_CLIENT_FOR_BOL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-backend/config-TFd9lr:SEND_EMAIL_TO_CLIENT_FOR_BOL::"
      },
      {
        "name": "SEND_EMAIL_TO_CLIENT_WEB_HOOK",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-backend/config-TFd9lr:SEND_EMAIL_TO_CLIENT_WEB_HOOK::"
      },
      {
        "name": "SMPMAILWEBHOOK",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-backend/config-TFd9lr:SMPMAILWEBHOOK::"
      },
      {
        "name": "SOCKET_ORIGIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-backend/config-TFd9lr:SOCKET_ORIGIN::"
      },
      {
        "name": "UNIT_OF_MEASUREMENT_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-backend/config-TFd9lr:UNIT_OF_MEASUREMENT_API::"
      },
      {
        "name": "UPS_PASSWORD_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-backend/config-TFd9lr:UPS_PASSWORD_KEY::"
      },
      {
        "name": "UPS_USER_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-backend/config-TFd9lr:UPS_USER_KEY::"
      },
      {
        "name": "VITE_FINANCE_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-backend/config-TFd9lr:VITE_FINANCE_API_URL::"
      },
      {
        "name": "VITE_MASTER_PRODUCT_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-backend/config-TFd9lr:VITE_MASTER_PRODUCT_URL::"
      },
      {
        "name": "VMI_API_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-backend/config-TFd9lr:VMI_API_BASE_URL::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-mfg-salesorder-backend",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "ecs"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_mfg_salesorder_frontend_r2" {
  family                   = "development-mfg-salesorder-frontend"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "mfg-salesorder-frontend",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/mfg_salesorder_frontend_service:latest",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp"
      }
    ],
    "secrets": [
      {
        "name": "VITE_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-frontend/config-dKq0A0:VITE_API_URL::"
      },
      {
        "name": "VITE_COOKIE_DOMAIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-frontend/config-dKq0A0:VITE_COOKIE_DOMAIN::"
      },
      {
        "name": "VITE_CUSTOMER_PREVIEW_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-frontend/config-dKq0A0:VITE_CUSTOMER_PREVIEW_URL::"
      },
      {
        "name": "VITE_DASHBOARD_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-frontend/config-dKq0A0:VITE_DASHBOARD_URL::"
      },
      {
        "name": "VITE_FEDEX_QUOTE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-frontend/config-dKq0A0:VITE_FEDEX_QUOTE_URL::"
      },
      {
        "name": "VITE_FINANCE_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-frontend/config-dKq0A0:VITE_FINANCE_API_URL::"
      },
      {
        "name": "VITE_FINANCE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-frontend/config-dKq0A0:VITE_FINANCE_URL::"
      },
      {
        "name": "VITE_FRONTSITE_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-frontend/config-dKq0A0:VITE_FRONTSITE_API_KEY::"
      },
      {
        "name": "VITE_FRONTSITE_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-frontend/config-dKq0A0:VITE_FRONTSITE_API_URL::"
      },
      {
        "name": "VITE_FRONTSITE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-frontend/config-dKq0A0:VITE_FRONTSITE_URL::"
      },
      {
        "name": "VITE_GLOBAL_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-frontend/config-dKq0A0:VITE_GLOBAL_API::"
      },
      {
        "name": "VITE_INVENTORY_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-frontend/config-dKq0A0:VITE_INVENTORY_API_URL::"
      },
      {
        "name": "VITE_LOCATION_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-frontend/config-dKq0A0:VITE_LOCATION_KEY::"
      },
      {
        "name": "VITE_LOCATION_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-frontend/config-dKq0A0:VITE_LOCATION_URL::"
      },
      {
        "name": "VITE_LOGIN_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-frontend/config-dKq0A0:VITE_LOGIN_URL::"
      },
      {
        "name": "VITE_MASTER_CONFIG_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-frontend/config-dKq0A0:VITE_MASTER_CONFIG_URL::"
      },
      {
        "name": "VITE_MASTER_PRODUCT_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-frontend/config-dKq0A0:VITE_MASTER_PRODUCT_URL::"
      },
      {
        "name": "VITE_N8N_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-frontend/config-dKq0A0:VITE_N8N_PASSWORD::"
      },
      {
        "name": "VITE_N8N_USERNAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-frontend/config-dKq0A0:VITE_N8N_USERNAME::"
      },
      {
        "name": "VITE_PACKING_LIST_PREVIEW_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-frontend/config-dKq0A0:VITE_PACKING_LIST_PREVIEW_URL::"
      },
      {
        "name": "VITE_PERMISSION_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-frontend/config-dKq0A0:VITE_PERMISSION_KEY::"
      },
      {
        "name": "VITE_PERMISSION_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-frontend/config-dKq0A0:VITE_PERMISSION_URL::"
      },
      {
        "name": "VITE_PRODUCT_CODE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-frontend/config-dKq0A0:VITE_PRODUCT_CODE::"
      },
      {
        "name": "VITE_PRODUCT_PREVIEW_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-frontend/config-dKq0A0:VITE_PRODUCT_PREVIEW_URL::"
      },
      {
        "name": "VITE_PROFILE_REDIRECT_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-frontend/config-dKq0A0:VITE_PROFILE_REDIRECT_URL::"
      },
      {
        "name": "VITE_PURCHASE_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-frontend/config-dKq0A0:VITE_PURCHASE_API_URL::"
      },
      {
        "name": "VITE_SALESORDER_PDF_WEBHOOKS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-frontend/config-dKq0A0:VITE_SALESORDER_PDF_WEBHOOKS::"
      },
      {
        "name": "VITE_SOCKET_ENDPOINT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-frontend/config-dKq0A0:VITE_SOCKET_ENDPOINT::"
      },
      {
        "name": "VITE_UPS_QUOTE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-frontend/config-dKq0A0:VITE_UPS_QUOTE_URL::"
      },
      {
        "name": "VITE_VMI_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-frontend/config-dKq0A0:VITE_VMI_API_URL::"
      },
      {
        "name": "VITE_VMI_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-frontend/config-dKq0A0:VITE_VMI_URL::"
      },
      {
        "name": "VITE_WWEX_QUOTE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/mfg-salesorder-frontend/config-dKq0A0:VITE_WWEX_QUOTE_URL::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-mfg-salesorder-frontend",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "ecs"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_my_trade_guru_backend_r26" {
  family                   = "development-my-trade-guru-backend"
  network_mode             = "awsvpc"
  cpu                      = "1024"
  memory                   = "2048"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "my-trade-guru-backend",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/my-trade-guru-backend:sha-6005d77-37596421650",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "my-trade-guru-backend",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "POWER_QUERY_SEARCH_INDEX",
        "value": "power_query_search_index"
      },
      {
        "name": "MONGO_UNIQUE_PRODUCTS_COLLECTION",
        "value": "mytradeguru_unique_products"
      },
      {
        "name": "UNIQUE_PRODUCTS_SEARCH_INDEX",
        "value": "master_product"
      },
      {
        "name": "ENV",
        "value": "development"
      },
      {
        "name": "PORT",
        "value": "8080"
      }
    ],
    "secrets": [
      {
        "name": "MONGO_URI",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/my-trade-guru-backend/config-gUklS9:MONGO_URI::"
      },
      {
        "name": "MONGO_DB_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/my-trade-guru-backend/config-gUklS9:MONGO_DB_NAME::"
      },
      {
        "name": "MONGO_COLLECTION",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/my-trade-guru-backend/config-gUklS9:MONGO_COLLECTION::"
      },
      {
        "name": "MONGO_MASTER_URI",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/my-trade-guru-backend/config-gUklS9:MONGO_MASTER_URI::"
      },
      {
        "name": "MONGO_MASTER_DB_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/my-trade-guru-backend/config-gUklS9:MONGO_MASTER_DB_NAME::"
      },
      {
        "name": "MONGO_MASTER_COLLECTION",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/my-trade-guru-backend/config-gUklS9:MONGO_MASTER_COLLECTION::"
      },
      {
        "name": "MONGO_PRODUCT_MASTER_COLLECTION",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/my-trade-guru-backend/config-gUklS9:MONGO_PRODUCT_MASTER_COLLECTION::"
      },
      {
        "name": "REDIRECT_LOGIN_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/my-trade-guru-backend/config-gUklS9:REDIRECT_LOGIN_URL::"
      },
      {
        "name": "GLOBAL_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/my-trade-guru-backend/config-gUklS9:GLOBAL_API_URL::"
      },
      {
        "name": "TOKEN_VERIFY_ENDPOINT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/my-trade-guru-backend/config-gUklS9:TOKEN_VERIFY_ENDPOINT::"
      },
      {
        "name": "COOKIE_DOMAIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/my-trade-guru-backend/config-gUklS9:COOKIE_DOMAIN::"
      },
      {
        "name": "PRODUCT_CODE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/my-trade-guru-backend/config-gUklS9:PRODUCT_CODE::"
      },
      {
        "name": "FRONTEND_ORIGIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/my-trade-guru-backend/config-gUklS9:FRONTEND_ORIGIN::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-my-trade-guru-backend",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "my-trade-guru-backend"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_my_trade_guru_frontend_r25" {
  family                   = "development-my-trade-guru-frontend"
  network_mode             = "awsvpc"
  cpu                      = "1024"
  memory                   = "2048"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "my-trade-guru-frontend",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/my-trade-guru-frontend:sha-1e80865-37596451981",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "my-trade-guru-frontend",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "development"
      }
    ],
    "secrets": [
      {
        "name": "VITE_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/my-trade-guru-frontend/config-bEqYYK:VITE_API_URL::"
      },
      {
        "name": "VITE_GLOBAL_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/my-trade-guru-frontend/config-bEqYYK:VITE_GLOBAL_API_URL::"
      },
      {
        "name": "VITE_TOKEN_VERIFY_ENDPOINT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/my-trade-guru-frontend/config-bEqYYK:VITE_TOKEN_VERIFY_ENDPOINT::"
      },
      {
        "name": "VITE_REDIRECT_LOGIN_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/my-trade-guru-frontend/config-bEqYYK:VITE_REDIRECT_LOGIN_URL::"
      },
      {
        "name": "VITE_COOKIE_DOMAIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/my-trade-guru-frontend/config-bEqYYK:VITE_COOKIE_DOMAIN::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-my-trade-guru-frontend",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "my-trade-guru-frontend"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_nexus_fast_api_r61" {
  family                   = "development-nexus-fast-api"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "nexus-fast-api",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/nexus-fast-api:sha-70fc72f-37736249145",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "nexus-fast-api",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "ENV",
        "value": "development"
      },
      {
        "name": "PORT",
        "value": "8080"
      }
    ],
    "secrets": [
      {
        "name": "API_JWT_ALGORITHM",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-fast-api/config-P9lmWa:API_JWT_ALGORITHM::"
      },
      {
        "name": "API_JWT_EXPIRY_DAYS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-fast-api/config-P9lmWa:API_JWT_EXPIRY_DAYS::"
      },
      {
        "name": "API_JWT_SECRET_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-fast-api/config-P9lmWa:API_JWT_SECRET_KEY::"
      },
      {
        "name": "API_KEY_VERIFY_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-fast-api/config-P9lmWa:API_KEY_VERIFY_URL::"
      },
      {
        "name": "COMPANY_REQUEST_EMAIL_WEBHOOK",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-fast-api/config-P9lmWa:COMPANY_REQUEST_EMAIL_WEBHOOK::"
      },
      {
        "name": "NEXT_N8N_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-fast-api/config-P9lmWa:NEXT_N8N_API::"
      },
      {
        "name": "NEXT_N8N_PASS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-fast-api/config-P9lmWa:NEXT_N8N_PASS::"
      },
      {
        "name": "NEXT_N8N_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-fast-api/config-P9lmWa:NEXT_N8N_USER::"
      },
      {
        "name": "SALES_EMAIL_WEBHOOK",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-fast-api/config-P9lmWa:SALES_EMAIL_WEBHOOK::"
      },
      {
        "name": "alias_name_api",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-fast-api/config-P9lmWa:alias_name_api::"
      },
      {
        "name": "app_name",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-fast-api/config-P9lmWa:app_name::"
      },
      {
        "name": "attribute_db",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-fast-api/config-P9lmWa:attribute_db::"
      },
      {
        "name": "company_assign_api",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-fast-api/config-P9lmWa:company_assign_api::"
      },
      {
        "name": "company_create_api",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-fast-api/config-P9lmWa:company_create_api::"
      },
      {
        "name": "company_research_db",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-fast-api/config-P9lmWa:company_research_db::"
      },
      {
        "name": "decrypt_user_api",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-fast-api/config-P9lmWa:decrypt_user_api::"
      },
      {
        "name": "domain",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-fast-api/config-P9lmWa:domain::"
      },
      {
        "name": "email_verify_api",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-fast-api/config-P9lmWa:email_verify_api::"
      },
      {
        "name": "encrypty_user_api",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-fast-api/config-P9lmWa:encrypty_user_api::"
      },
      {
        "name": "env",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-fast-api/config-P9lmWa:env::"
      },
      {
        "name": "global_api",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-fast-api/config-P9lmWa:global_api::"
      },
      {
        "name": "headers",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-fast-api/config-P9lmWa:headers::"
      },
      {
        "name": "image_bucket",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-fast-api/config-P9lmWa:image_bucket::"
      },
      {
        "name": "jwt_secret",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-fast-api/config-P9lmWa:jwt_secret::"
      },
      {
        "name": "log_level",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-fast-api/config-P9lmWa:log_level::"
      },
      {
        "name": "mongo_db",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-fast-api/config-P9lmWa:mongo_db::"
      },
      {
        "name": "mongo_db4",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-fast-api/config-P9lmWa:mongo_db4::"
      },
      {
        "name": "mongo_uri",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-fast-api/config-P9lmWa:mongo_uri::"
      },
      {
        "name": "mongo_uri0",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-fast-api/config-P9lmWa:mongo_uri0::"
      },
      {
        "name": "mongo_uri4",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-fast-api/config-P9lmWa:mongo_uri4::"
      },
      {
        "name": "nexus_db",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-fast-api/config-P9lmWa:nexus_db::"
      },
      {
        "name": "permission_api",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-fast-api/config-P9lmWa:permission_api::"
      },
      {
        "name": "redis_db",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-fast-api/config-P9lmWa:redis_db::"
      },
      {
        "name": "redis_host",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-fast-api/config-P9lmWa:redis_host::"
      },
      {
        "name": "redis_port",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-fast-api/config-P9lmWa:redis_port::"
      },
      {
        "name": "relevant_company_api",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-fast-api/config-P9lmWa:relevant_company_api::"
      },
      {
        "name": "s3_bucket",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-fast-api/config-P9lmWa:s3_bucket::"
      },
      {
        "name": "staff_id_api",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-fast-api/config-P9lmWa:staff_id_api::"
      },
      {
        "name": "stripe_secret_key",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-fast-api/config-P9lmWa:stripe_secret_key::"
      },
      {
        "name": "stripe_webhook_secret",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-fast-api/config-P9lmWa:stripe_webhook_secret::"
      },
      {
        "name": "tenant_id_mapping",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-fast-api/config-P9lmWa:tenant_id_mapping::"
      },
      {
        "name": "user_details_api",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-fast-api/config-P9lmWa:user_details_api::"
      },
      {
        "name": "verify_api",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-fast-api/config-P9lmWa:verify_api::"
      },
      {
        "name": "ENCRYPT_HEX_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-fast-api/config-P9lmWa:ENCRYPT_HEX_KEY::"
      },
      {
        "name": "OPENAI_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-fast-api/config-P9lmWa:OPENAI_KEY::"
      },
      {
        "name": "SISTER_COMPANY_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-fast-api/config-P9lmWa:SISTER_COMPANY_API::"
      },
      {
        "name": "SISTER_COMPANY_ALIAS_OVERRIDE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-fast-api/config-P9lmWa:SISTER_COMPANY_ALIAS_OVERRIDE::"
      },
      {
        "name": "trade_api_url",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-fast-api/config-P9lmWa:trade_api_url::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-nexus-fast-api",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "nexus-fast-api"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_nexus_landing_next_r57" {
  family                   = "development-nexus-landing-next"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "nexus-landing-next",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/nexus-landing-next:sha-00acd40-32949662099",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "nexus-landing-next",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "ENV",
        "value": "development"
      },
      {
        "name": "PORT",
        "value": "8080"
      }
    ],
    "secrets": [
      {
        "name": "BLOG_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-landing-next/config-gdyt0x:BLOG_API_KEY::"
      },
      {
        "name": "MONGODB_URI",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-landing-next/config-gdyt0x:MONGODB_URI::"
      },
      {
        "name": "NEXT_PUBLIC_API_BASE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-landing-next/config-gdyt0x:NEXT_PUBLIC_API_BASE::"
      },
      {
        "name": "NEXT_PUBLIC_GTM_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-landing-next/config-gdyt0x:NEXT_PUBLIC_GTM_ID::"
      },
      {
        "name": "NEXT_PUBLIC_RECAPTCHA_SITE_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-landing-next/config-gdyt0x:NEXT_PUBLIC_RECAPTCHA_SITE_KEY::"
      },
      {
        "name": "NEXT_PUBLIC_REGISTER_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-landing-next/config-gdyt0x:NEXT_PUBLIC_REGISTER_URL::"
      },
      {
        "name": "NEXT_PUBLIC_SITE_ENV",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-landing-next/config-gdyt0x:NEXT_PUBLIC_SITE_ENV::"
      },
      {
        "name": "NEXT_PUBLIC_SITE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-landing-next/config-gdyt0x:NEXT_PUBLIC_SITE_URL::"
      },
      {
        "name": "NEXT_PUBLIC_CANONICAL_HOME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-landing-next/config-gdyt0x:NEXT_PUBLIC_CANONICAL_HOME::"
      },
      {
        "name": "NEXT_INDUSTRY_IMAGE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-landing-next/config-gdyt0x:NEXT_INDUSTRY_IMAGE::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-nexus-landing-next",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "nexus-landing-next"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_nexus_react_frontend_r39" {
  family                   = "development-nexus-react-frontend"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "nexus-react-frontend",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/nexus-react-frontend:sha-d67a09b-37733767459",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "nexus-react-frontend",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "development"
      }
    ],
    "secrets": [
      {
        "name": "VITE_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-react-frontend/config-6bo4pI:VITE_API_URL::"
      },
      {
        "name": "VITE_AWS_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-react-frontend/config-6bo4pI:VITE_AWS_API_URL::"
      },
      {
        "name": "VITE_CLOUDFRONT_DOMAIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-react-frontend/config-6bo4pI:VITE_CLOUDFRONT_DOMAIN::"
      },
      {
        "name": "VITE_COOKIE_DOMAIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-react-frontend/config-6bo4pI:VITE_COOKIE_DOMAIN::"
      },
      {
        "name": "VITE_DECRYPT_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-react-frontend/config-6bo4pI:VITE_DECRYPT_API::"
      },
      {
        "name": "VITE_GLOBAL_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-react-frontend/config-6bo4pI:VITE_GLOBAL_API_URL::"
      },
      {
        "name": "VITE_MAIN_LOGIN_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-react-frontend/config-6bo4pI:VITE_MAIN_LOGIN_URL::"
      },
      {
        "name": "VITE_PEOPLE_FINDER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-react-frontend/config-6bo4pI:VITE_PEOPLE_FINDER::"
      },
      {
        "name": "VITE_PERMISSION_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-react-frontend/config-6bo4pI:VITE_PERMISSION_KEY::"
      },
      {
        "name": "VITE_PERMISSION_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-react-frontend/config-6bo4pI:VITE_PERMISSION_URL::"
      },
      {
        "name": "VITE_PRODUCT_CODE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-react-frontend/config-6bo4pI:VITE_PRODUCT_CODE::"
      },
      {
        "name": "VITE_PUBLIC_COMPANY_RESEARCH_SOCKET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-react-frontend/config-6bo4pI:VITE_PUBLIC_COMPANY_RESEARCH_SOCKET::"
      },
      {
        "name": "VITE_REDIRECT_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-react-frontend/config-6bo4pI:VITE_REDIRECT_URL::"
      },
      {
        "name": "VITE_REGISTER_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-react-frontend/config-6bo4pI:VITE_REGISTER_URL::"
      },
      {
        "name": "VITE_TOKEN_VERIFY_ENDPOINT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-react-frontend/config-6bo4pI:VITE_TOKEN_VERIFY_ENDPOINT::"
      },
      {
        "name": "VITE_X_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-react-frontend/config-6bo4pI:VITE_X_API_KEY::"
      },
      {
        "name": "VITE_AI_API_BASE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-react-frontend/config-6bo4pI:VITE_AI_API_BASE::"
      },
      {
        "name": "VITE_AI_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-react-frontend/config-6bo4pI:VITE_AI_API_KEY::"
      },
      {
        "name": "VITE_CARTO_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-react-frontend/config-6bo4pI:VITE_CARTO_API_KEY::"
      },
      {
        "name": "VITE_TRADE_GURU_APP_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-react-frontend/config-6bo4pI:VITE_TRADE_GURU_APP_URL::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-nexus-react-frontend",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "nexus-react-frontend"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_notification_backend_r24" {
  family                   = "development-notification-backend"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "notification-backend",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/notification-backend:sha-33b41f6-36383327391",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "notification-backend",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "AWS_S3_REGION",
        "value": "us-east-2"
      },
      {
        "name": "NODE_ENV",
        "value": "development"
      }
    ],
    "secrets": [
      {
        "name": "APP_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/notification-backend/config-z3W0SP:APP_PORT::"
      },
      {
        "name": "AWS_BUCKETNAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/notification-backend/config-z3W0SP:AWS_BUCKETNAME::"
      },
      {
        "name": "CORS_ORIGIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/notification-backend/config-z3W0SP:CORS_ORIGIN::"
      },
      {
        "name": "DBI360_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/notification-backend/config-z3W0SP:DBI360_API_URL::"
      },
      {
        "name": "DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:host::"
      },
      {
        "name": "DB_PASS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/notification-backend/config-z3W0SP:password::"
      },
      {
        "name": "DB_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:port::"
      },
      {
        "name": "DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/notification-backend/config-z3W0SP:username::"
      },
      {
        "name": "FEDEX_CLIENT_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/notification-backend/config-z3W0SP:FEDEX_CLIENT_KEY::"
      },
      {
        "name": "FEDEX_SECRET_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/notification-backend/config-z3W0SP:FEDEX_SECRET_KEY::"
      },
      {
        "name": "FETCH_LOCATIONS_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/notification-backend/config-z3W0SP:FETCH_LOCATIONS_API_KEY::"
      },
      {
        "name": "HEX_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-hex-key/config-BGrEHQ:ENCRYPT_HEX_KEY::"
      },
      {
        "name": "MYSQL_DB",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/notification-backend/config-z3W0SP:MYSQL_DB::"
      },
      {
        "name": "N8N_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/notification-backend/config-z3W0SP:N8N_PASSWORD::"
      },
      {
        "name": "N8N_USERNAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/notification-backend/config-z3W0SP:N8N_USERNAME::"
      },
      {
        "name": "PERMISSION_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/notification-backend/config-z3W0SP:PERMISSION_KEY::"
      },
      {
        "name": "PERMISSION_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/notification-backend/config-z3W0SP:PERMISSION_URL::"
      },
      {
        "name": "PRODUCT_CODE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/notification-backend/config-z3W0SP:PRODUCT_CODE::"
      },
      {
        "name": "REDIS_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/notification-backend/config-z3W0SP:REDIS_PORT::"
      },
      {
        "name": "SURVEY_NOTIFICATION_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/notification-backend/config-z3W0SP:SURVEY_NOTIFICATION_ID::"
      },
      {
        "name": "SURVEY_RESPONCE_WEBHOOK",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/notification-backend/config-z3W0SP:SURVEY_RESPONCE_WEBHOOK::"
      },
      {
        "name": "UPS_PASSWORD_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/notification-backend/config-z3W0SP:UPS_PASSWORD_KEY::"
      },
      {
        "name": "UPS_USER_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/notification-backend/config-z3W0SP:UPS_USER_KEY::"
      },
      {
        "name": "X_DATABASE_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/notification-backend/config-z3W0SP:X_DATABASE_ID::"
      },
      {
        "name": "N8N_CUSTOM_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/notification-backend/config-z3W0SP:N8N_CUSTOM_API_KEY::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-notification-backend",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "notification-backend"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_notification_frontend_r7" {
  family                   = "development-notification-frontend"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "notification-frontend",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/notification-frontend:sha-3697e59-37766174748",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "notification-frontend",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "development"
      }
    ],
    "secrets": [
      {
        "name": "VITE_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/notification-frontend/config-IpMv4P:VITE_BASE_URL::"
      },
      {
        "name": "VITE_GLOBAL_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/notification-frontend/config-IpMv4P:VITE_GLOBAL_API_URL::"
      },
      {
        "name": "VITE_HOME_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/notification-frontend/config-IpMv4P:VITE_HOME_URL::"
      },
      {
        "name": "VITE_MASTER_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/notification-frontend/config-IpMv4P:VITE_MASTER_URL::"
      },
      {
        "name": "VITE_PERMISSION_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/notification-frontend/config-IpMv4P:VITE_PERMISSION_KEY::"
      },
      {
        "name": "VITE_PERMISSION_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/notification-frontend/config-IpMv4P:VITE_PERMISSION_URL::"
      },
      {
        "name": "VITE_PRODUCT_CODE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/notification-frontend/config-IpMv4P:VITE_PRODUCT_CODE::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-notification-frontend",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "notification-frontend"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_pricing_engine_r5" {
  family                   = "development-pricing-engine"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "pricing-engine",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/pricing-engine:sha-087a30b",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "pricing-engine",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "production"
      }
    ],
    "secrets": [
      {
        "name": "VITE_DOMAIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/pricing-engine/config-4uv9Y0:VITE_DOMAIN::"
      },
      {
        "name": "VITE_ETL_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/pricing-engine/config-4uv9Y0:VITE_ETL_API_URL::"
      },
      {
        "name": "VITE_GLOBAL_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/pricing-engine/config-4uv9Y0:VITE_GLOBAL_API::"
      },
      {
        "name": "VITE_MASTER_PRODUCTS_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/pricing-engine/config-4uv9Y0:VITE_MASTER_PRODUCTS_API::"
      },
      {
        "name": "VITE_PERMISSION_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/pricing-engine/config-4uv9Y0:VITE_PERMISSION_KEY::"
      },
      {
        "name": "VITE_PERMISSION_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/pricing-engine/config-4uv9Y0:VITE_PERMISSION_URL::"
      },
      {
        "name": "VITE_PRODUCT_CODE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/pricing-engine/config-4uv9Y0:VITE_PRODUCT_CODE::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-pricing-engine",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "pricing-engine"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_purchase_intelligence_r32" {
  family                   = "development-purchase-intelligence"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "purchase-intelligence",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/purchase-intelligence:sha-ff30702-34441895250",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "purchase-intelligence",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "production"
      }
    ],
    "secrets": [
      {
        "name": "ASTER_GATEWAY_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-intelligence/config:ASTER_GATEWAY_API_KEY::"
      },
      {
        "name": "ASTER_SSO_USER_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-intelligence/config:ASTER_SSO_USER_ID::"
      },
      {
        "name": "CORS_ALLOW_ORIGIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-intelligence/config:CORS_ALLOW_ORIGIN::"
      },
      {
        "name": "DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:host::"
      },
      {
        "name": "DB_PASS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:password::"
      },
      {
        "name": "DB_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:port::"
      },
      {
        "name": "DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:username::"
      },
      {
        "name": "MYSQL_DB",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-backend/config-2NyRRx:MYSQL_DB::"
      },
      {
        "name": "NEXT_HEX_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-intelligence/config:NEXT_HEX_KEY::"
      },
      {
        "name": "NEXT_PUBLIC_AUTH_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-intelligence/config:NEXT_PUBLIC_AUTH_API::"
      },
      {
        "name": "NEXT_PUBLIC_AUTH_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-intelligence/config:NEXT_PUBLIC_AUTH_API_KEY::"
      },
      {
        "name": "NEXT_PUBLIC_AUTH_PRODUCT_CODE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-intelligence/config:NEXT_PUBLIC_AUTH_PRODUCT_CODE::"
      },
      {
        "name": "NEXT_PUBLIC_FINANCE_REPORTS_API_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-intelligence/config:NEXT_PUBLIC_FINANCE_REPORTS_API_BASE_URL::"
      },
      {
        "name": "NEXT_PUBLIC_PURCHASE_FRONTEND_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-intelligence/config:NEXT_PUBLIC_PURCHASE_FRONTEND_URL::"
      },
      {
        "name": "NEXT_PUBLIC_SSO_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-intelligence/config:NEXT_PUBLIC_SSO_API_URL::"
      },
      {
        "name": "NEXT_PUBLIC_SSO_FRONTEND_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-intelligence/config:NEXT_PUBLIC_SSO_FRONTEND_URL::"
      },
      {
        "name": "ASTER_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-intelligence/config:ASTER_BASE_URL::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-purchase-intelligence",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "purchase-intelligence"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_purchase_service_backend_r188" {
  family                   = "development-purchase-service-backend"
  network_mode             = "awsvpc"
  cpu                      = "1024"
  memory                   = "2048"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "purchase-service-backend",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/purchase-service-backend:sha-438f11d-37585947372",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "purchase-service-backend",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "development"
      }
    ],
    "secrets": [
      {
        "name": "APP_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-backend/config-2NyRRx:APP_PORT::"
      },
      {
        "name": "ASTER_SUPPLIER_LIST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-backend/config-2NyRRx:ASTER_SUPPLIER_LIST::"
      },
      {
        "name": "AUDIT_TRAIL_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-backend/config-2NyRRx:AUDIT_TRAIL_API_URL::"
      },
      {
        "name": "AWS_REGION",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-backend/config-2NyRRx:AWS_REGION::"
      },
      {
        "name": "COGS_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-backend/config-2NyRRx:COGS_API_URL::"
      },
      {
        "name": "CONTAINER_API_TIMEOUT_MS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-backend/config-2NyRRx:CONTAINER_API_TIMEOUT_MS::"
      },
      {
        "name": "CORS_ORIGIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-backend/config-2NyRRx:CORS_ORIGIN::"
      },
      {
        "name": "CUSTOM_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-backend/config-2NyRRx:CUSTOM_API_URL::"
      },
      {
        "name": "DBI360_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-backend/config-2NyRRx:DBI360_API_URL::"
      },
      {
        "name": "DBI_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-backend/config-2NyRRx:DBI_URL::"
      },
      {
        "name": "DB_CONNECTION_LIMIT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-backend/config-2NyRRx:DB_CONNECTION_LIMIT::"
      },
      {
        "name": "EXTERNAL_HTTP_TIMEOUT_MS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-backend/config-2NyRRx:EXTERNAL_HTTP_TIMEOUT_MS::"
      },
      {
        "name": "FETCH_LOCATIONS_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-backend/config-2NyRRx:FETCH_LOCATIONS_API_KEY::"
      },
      {
        "name": "FETCH_LOCATIONS_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-backend/config-2NyRRx:FETCH_LOCATIONS_URL::"
      },
      {
        "name": "FINANCE_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-backend/config-2NyRRx:FINANCE_API_URL::"
      },
      {
        "name": "HEX_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-hex-key/config-BGrEHQ:ENCRYPT_HEX_KEY::"
      },
      {
        "name": "INVENTORY_STOCK_LEDGER_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-backend/config-2NyRRx:INVENTORY_STOCK_LEDGER_URL::"
      },
      {
        "name": "MASTER_CONFIG",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-backend/config-2NyRRx:MASTER_CONFIG::"
      },
      {
        "name": "MYSQL_DB",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-backend/config-2NyRRx:MYSQL_DB::"
      },
      {
        "name": "FINDSUPPLIERS_DB_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-backend/config-2NyRRx:FINDSUPPLIERS_DB_NAME::"
      },
      {
        "name": "N8N_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-backend/config-2NyRRx:N8N_PASSWORD::"
      },
      {
        "name": "N8N_USERNAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-backend/config-2NyRRx:N8N_USERNAME::"
      },
      {
        "name": "ORGANIZATION_SECRET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-backend/config-2NyRRx:ORGANIZATION_SECRET::"
      },
      {
        "name": "PERMISSION_API_TIMEOUT_MS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-backend/config-2NyRRx:PERMISSION_API_TIMEOUT_MS::"
      },
      {
        "name": "PRIVATE_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-backend/config-2NyRRx:PRIVATE_KEY::"
      },
      {
        "name": "PRODUCT_CODE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-backend/config-2NyRRx:PRODUCT_CODE::"
      },
      {
        "name": "S3_BUCKET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-backend/config-2NyRRx:S3_BUCKET::"
      },
      {
        "name": "UPLOAD_MAX_CONCURRENT_REQUESTS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-backend/config-2NyRRx:UPLOAD_MAX_CONCURRENT_REQUESTS::"
      },
      {
        "name": "UPLOAD_MAX_FILES",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-backend/config-2NyRRx:UPLOAD_MAX_FILES::"
      },
      {
        "name": "UPLOAD_MAX_FILE_SIZE_MB",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-backend/config-2NyRRx:UPLOAD_MAX_FILE_SIZE_MB::"
      },
      {
        "name": "X_DATABASE_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-backend/config-2NyRRx:X_DATABASE_ID::"
      },
      {
        "name": "ZYLER_ERP_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-backend/config-2NyRRx:ZYLER_ERP_API::"
      },
      {
        "name": "DB_QUEUE_LIMIT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-backend/config-2NyRRx:DB_QUEUE_LIMIT::"
      },
      {
        "name": "DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:host::"
      },
      {
        "name": "DB_PASS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-backend/config:password::"
      },
      {
        "name": "DB_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:port::"
      },
      {
        "name": "DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-backend/config:username::"
      },
      {
        "name": "FIND_SUPPLIER_PO_APPROVAL_WEEBHOOK",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-backend/config-2NyRRx:FIND_SUPPLIER_PO_APPROVAL_WEEBHOOK::"
      },
      {
        "name": "FIND_SUPPLIER_PO_APPROVAL_WEEBHOOK_AUTH",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-backend/config-2NyRRx:FIND_SUPPLIER_PO_APPROVAL_WEEBHOOK_AUTH::"
      },
      {
        "name": "FIND_SUPPLIER_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-backend/config-2NyRRx:FIND_SUPPLIER_API::"
      },
      {
        "name": "ASTER_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-backend/config-2NyRRx:ASTER_API_URL::"
      },
      {
        "name": "ASTER_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-backend/config-2NyRRx:ASTER_API_KEY::"
      },
      {
        "name": "PI_ASTER_STATUS_NEGATIVE_CACHE_TTL_MS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-backend/config-2NyRRx:PI_ASTER_STATUS_NEGATIVE_CACHE_TTL_MS::"
      },
      {
        "name": "PI_ASTER_STATUS_CACHE_TTL_MS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-backend/config-2NyRRx:PI_ASTER_STATUS_CACHE_TTL_MS::"
      },
      {
        "name": "PURCHASE_API_RATE_LIMIT_WINDOW_MS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-backend/config-2NyRRx:PURCHASE_API_RATE_LIMIT_WINDOW_MS::"
      },
      {
        "name": "PURCHASE_API_RATE_LIMIT_MAX",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-backend/config-2NyRRx:PURCHASE_API_RATE_LIMIT_MAX::"
      },
      {
        "name": "PURCHASE_API_RATE_LIMIT_CLEANUP_MS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-backend/config-2NyRRx:PURCHASE_API_RATE_LIMIT_CLEANUP_MS::"
      },
      {
        "name": "PURCHASE_API_RATE_LIMIT_EXCLUDED_PATHS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-backend/config-2NyRRx:PURCHASE_API_RATE_LIMIT_EXCLUDED_PATHS::"
      },
      {
        "name": "NITEN_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-backend/config-2NyRRx:NITEN_URL::"
      },
      {
        "name": "VMI_INVENTORY_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-backend/config-2NyRRx:VMI_INVENTORY_API_URL::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-purchase-service-backend",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "purchase-service-backend"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_purchase_service_frontend_r132" {
  family                   = "development-purchase-service-frontend"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "purchase-service-frontend",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/purchase-service-frontend:sha-e495fbf-36096896014",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "purchase-service-frontend",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "production"
      }
    ],
    "secrets": [
      {
        "name": "VITE_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-frontend/config-lvnnq3:VITE_API_URL::"
      },
      {
        "name": "VITE_COOKIE_DOMAIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-frontend/config-lvnnq3:VITE_COOKIE_DOMAIN::"
      },
      {
        "name": "VITE_CUSTOM_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-frontend/config-lvnnq3:VITE_CUSTOM_API_URL::"
      },
      {
        "name": "VITE_DBI_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-frontend/config-lvnnq3:VITE_DBI_URL::"
      },
      {
        "name": "VITE_ENTITY_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-frontend/config-lvnnq3:VITE_ENTITY_URL::"
      },
      {
        "name": "VITE_FINANCE_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-frontend/config-lvnnq3:VITE_FINANCE_API_URL::"
      },
      {
        "name": "VITE_FINANCE_UR",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-frontend/config-lvnnq3:VITE_FINANCE_UR::"
      },
      {
        "name": "VITE_INBOUND_PROCESS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-frontend/config-lvnnq3:VITE_INBOUND_PROCESS::"
      },
      {
        "name": "VITE_INVENTORY_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-frontend/config-lvnnq3:VITE_INVENTORY_URL::"
      },
      {
        "name": "VITE_LOGIN_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-frontend/config-lvnnq3:VITE_LOGIN_URL::"
      },
      {
        "name": "VITE_MASTER_CONFIG_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-frontend/config-lvnnq3:VITE_MASTER_CONFIG_URL::"
      },
      {
        "name": "VITE_PERMISSION_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-frontend/config-lvnnq3:VITE_PERMISSION_KEY::"
      },
      {
        "name": "VITE_PERMISSION_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-frontend/config-lvnnq3:VITE_PERMISSION_URL::"
      },
      {
        "name": "VITE_PRODUCT_CODE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-frontend/config-lvnnq3:VITE_PRODUCT_CODE::"
      },
      {
        "name": "VITE_PRODUCT_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-frontend/config-lvnnq3:VITE_PRODUCT_URL::"
      },
      {
        "name": "VITE_PURCHASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-frontend/config-lvnnq3:VITE_PURCHASE_URL::"
      },
      {
        "name": "VITE_SALES_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-frontend/config-lvnnq3:VITE_SALES_API_URL::"
      },
      {
        "name": "VITE_UI_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-frontend/config-lvnnq3:VITE_UI_URL::"
      },
      {
        "name": "VITE_WMS_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-frontend/config-lvnnq3:VITE_WMS_URL::"
      },
      {
        "name": "VITE_X_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-frontend/config-lvnnq3:VITE_X_API_KEY::"
      },
      {
        "name": "check",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-frontend/config-lvnnq3:check::"
      },
      {
        "name": "VITE_N8N_NOTIFICATION_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-frontend/config-lvnnq3:VITE_N8N_NOTIFICATION_URL::"
      },
      {
        "name": "VITE_ASTER_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-frontend/config-lvnnq3:VITE_ASTER_API_URL::"
      },
      {
        "name": "VITE_FIND_SUPPLIERS_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-frontend/config-lvnnq3:VITE_FIND_SUPPLIERS_API_URL::"
      },
      {
        "name": "VITE_PRODUCT_IMAGE_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/purchase-service-frontend/config-lvnnq3:VITE_PRODUCT_IMAGE_BASE_URL::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-purchase-service-frontend",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "purchase-service-frontend"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_regos_r44" {
  family                   = "development-regos"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "regos",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/regos:sha-f5a356f-36856614215",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "regos",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "production"
      }
    ],
    "secrets": [
      {
        "name": "MARKETED_PRODUCTS_SOURCE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/regos/config:MARKETED_PRODUCTS_SOURCE::"
      },
      {
        "name": "MONGODB_URI",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/regos/config:MONGODB_URI::"
      },
      {
        "name": "MONGODB_DB_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/regos/config:MONGODB_DB_NAME::"
      },
      {
        "name": "MARKETED_PRODUCTS_MONGO_COLLECTIONS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/regos/config:MARKETED_PRODUCTS_MONGO_COLLECTIONS::"
      },
      {
        "name": "MARKETED_PRODUCTS_ATLAS_SEARCH_INDEX",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/regos/config:MARKETED_PRODUCTS_ATLAS_SEARCH_INDEX::"
      },
      {
        "name": "MARKETED_PRODUCTS_ATLAS_SEARCH_ENABLED",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/regos/config:MARKETED_PRODUCTS_ATLAS_SEARCH_ENABLED::"
      },
      {
        "name": "MASTERDB_URI",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/regos/config:MASTERDB_URI::"
      },
      {
        "name": "MASTERDB_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/regos/config:MASTERDB_NAME::"
      },
      {
        "name": "PUBMED_MONGODB_URI",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/regos/config:PUBMED_MONGODB_URI::"
      },
      {
        "name": "PUBMED_MONGODB_DB_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/regos/config:PUBMED_MONGODB_DB_NAME::"
      },
      {
        "name": "PUBMED_MONGO_COLLECTIONS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/regos/config:PUBMED_MONGO_COLLECTIONS::"
      },
      {
        "name": "PUBMED_TEXT_SEARCH_CANDIDATE_LIMIT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/regos/config:PUBMED_TEXT_SEARCH_CANDIDATE_LIMIT::"
      },
      {
        "name": "PUBMED_TEXT_SEARCH_MAX_TIME_MS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/regos/config:PUBMED_TEXT_SEARCH_MAX_TIME_MS::"
      },
      {
        "name": "ONTOLOGY_DATABASE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/regos/config:ONTOLOGY_DATABASE::"
      },
      {
        "name": "OPENAI_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/regos/config:OPENAI_API_KEY::"
      },
      {
        "name": "CLAIMS_AI_SUMMARY_ENABLED",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/regos/config:CLAIMS_AI_SUMMARY_ENABLED::"
      },
      {
        "name": "CLAIMS_AI_SUMMARY_MODEL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/regos/config:CLAIMS_AI_SUMMARY_MODEL::"
      },
      {
        "name": "CLAIMS_AI_SUMMARY_TIMEOUT_MS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/regos/config:CLAIMS_AI_SUMMARY_TIMEOUT_MS::"
      },
      {
        "name": "SUPPLIER_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/regos/config:SUPPLIER_API_KEY::"
      },
      {
        "name": "GJ_CLIENT_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/regos/config:GJ_CLIENT_ID::"
      },
      {
        "name": "GJ_CLIENT_SECRET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/regos/config:GJ_CLIENT_SECRET::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-regos",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "regos"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_reports_service_r7" {
  family                   = "development-reports-service"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "reports-service",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/reports-service:sha-877b6d5-35203157356",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "reports-service",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "3000"
      },
      {
        "name": "NODE_ENV",
        "value": "development"
      }
    ],
    "secrets": [
      {
        "name": "ALLOWED_ORIGINS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/reports-service/config-fwD4oJ:ALLOWED_ORIGINS::"
      },
      {
        "name": "DBI360_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/reports-service/config-fwD4oJ:DBI360_API_URL::"
      },
      {
        "name": "DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config:host::"
      },
      {
        "name": "DB_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/reports-service/config-fwD4oJ:DB_NAME::"
      },
      {
        "name": "DB_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config:password::"
      },
      {
        "name": "DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config:username::"
      },
      {
        "name": "ENTITY_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/reports-service/config-fwD4oJ:ENTITY_API_URL::"
      },
      {
        "name": "FINANCE_REPORTS_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/reports-service/config-fwD4oJ:FINANCE_REPORTS_API_URL::"
      },
      {
        "name": "HEX_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-hex-key/config-BGrEHQ:ENCRYPT_HEX_KEY::"
      },
      {
        "name": "INBOX_MONGODB_DB",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/reports-service/config-fwD4oJ:INBOX_MONGODB_DB::"
      },
      {
        "name": "INBOX_MONGODB_URI",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/reports-service/config-fwD4oJ:INBOX_MONGODB_URI::"
      },
      {
        "name": "MONGODB_DB",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/reports-service/config-fwD4oJ:MONGODB_DB::"
      },
      {
        "name": "MONGODB_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/reports-service/config-fwD4oJ:MONGODB_NAME::"
      },
      {
        "name": "MONGODB_URI",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/reports-service/config-fwD4oJ:MONGODB_URI::"
      },
      {
        "name": "NEXT_PUBLIC_auth_product_code",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/reports-service/config-fwD4oJ:NEXT_PUBLIC_auth_product_code::"
      },
      {
        "name": "NEXT_PUBLIC_DBI360_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/reports-service/config-fwD4oJ:DBI360_API_URL::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-reports-service",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "reports-service"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_revenue_incentive_r9" {
  family                   = "development-revenue-incentive"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "revenue-incentive",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/revenue-incentive:sha-890adc7-35332794968",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "revenue-incentive",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "ALLOW_DEV_AUTH",
        "value": "true"
      },
      {
        "name": "NODE_ENV",
        "value": "development"
      },
      {
        "name": "DEV_AUTH_EMAIL",
        "value": "user-a@example.test"
      },
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "DEV_AUTH_SUBJECT",
        "value": "user-a"
      },
      {
        "name": "DEV_AUTH_NAME",
        "value": "Plan Governance Administrator"
      }
    ],
    "secrets": [
      {
        "name": "MYSQL_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config:host::"
      },
      {
        "name": "MYSQL_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config:port::"
      },
      {
        "name": "MYSQL_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/revenue-incentive/config:username::"
      },
      {
        "name": "MYSQL_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/revenue-incentive/config:password::"
      },
      {
        "name": "MYSQL_DATABASE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/revenue-incentive/config:MYSQL_DATABASE::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-revenue-incentive",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "revenue-incentive"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_sales_clickhouse_r32" {
  family                   = "development-sales-clickhouse"
  network_mode             = "awsvpc"
  cpu                      = "2048"
  memory                   = "4096"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "sales-clickhouse",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/sales-clickhouse:sha-c49336c",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "sales-clickhouse",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "production"
      },
      {
        "name": "NEXT_TELEMETRY_DISABLED",
        "value": "1"
      }
    ],
    "secrets": [
      {
        "name": "AWS_STORAGE_BUCKET_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-clickhouse/config:AWS_STORAGE_BUCKET_NAME::"
      },
      {
        "name": "CORS_ALLOW_CREDENTIALS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-clickhouse/config:CORS_ALLOW_CREDENTIALS::"
      },
      {
        "name": "CORS_ALLOW_ORIGIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-clickhouse/config:CORS_ALLOW_ORIGIN::"
      },
      {
        "name": "MONGODB_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-clickhouse/config:MONGODB_NAME::"
      },
      {
        "name": "MONGODB_URI",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-clickhouse/config:MONGODB_URI::"
      },
      {
        "name": "NEXT_CLICKHOUSE_DATABASE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-clickhouse/config:NEXT_CLICKHOUSE_DATABASE::"
      },
      {
        "name": "NEXT_CLICKHOUSE_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-clickhouse/config:NEXT_CLICKHOUSE_HOST::"
      },
      {
        "name": "NEXT_CLICKHOUSE_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-clickhouse/config:NEXT_CLICKHOUSE_PASSWORD::"
      },
      {
        "name": "NEXT_CLICKHOUSE_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-clickhouse/config:NEXT_CLICKHOUSE_USER::"
      },
      {
        "name": "NEXT_HEX_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-hex-key/config-BGrEHQ:ENCRYPT_HEX_KEY::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-sales-clickhouse",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "sales-clickhouse"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_sales_dashboard_backend_r2" {
  family                   = "development-sales-dashboard-backend"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "sales-dashboard-backend",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/sales-dashboard-backend-service:latest",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp"
      }
    ],
    "secrets": [
      {
        "name": "DBI360_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-dashboard-backend/config-cSayZ5:DBI360_API_URL::"
      },
      {
        "name": "DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-dashboard-backend/config-cSayZ5:DB_HOST::"
      },
      {
        "name": "DB_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-dashboard-backend/config-cSayZ5:DB_NAME::"
      },
      {
        "name": "DB_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-dashboard-backend/config-cSayZ5:DB_PASSWORD::"
      },
      {
        "name": "DB_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-dashboard-backend/config-cSayZ5:DB_PORT::"
      },
      {
        "name": "DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-dashboard-backend/config-cSayZ5:DB_USER::"
      },
      {
        "name": "DOMAIN_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-dashboard-backend/config-cSayZ5:DOMAIN_NAME::"
      },
      {
        "name": "INBOX_MONGODB_URI",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-dashboard-backend/config-cSayZ5:INBOX_MONGODB_URI::"
      },
      {
        "name": "MONGODB_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-dashboard-backend/config-cSayZ5:MONGODB_NAME::"
      },
      {
        "name": "MONGODB_URI",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-dashboard-backend/config-cSayZ5:MONGODB_URI::"
      },
      {
        "name": "PERMISSION_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-dashboard-backend/config-cSayZ5:PERMISSION_API_URL::"
      },
      {
        "name": "PERMISSION_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-dashboard-backend/config-cSayZ5:PERMISSION_KEY::"
      },
      {
        "name": "PERMISSION_PRODUCT_CODE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-dashboard-backend/config-cSayZ5:PERMISSION_PRODUCT_CODE::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-sales-dashboard-backend",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "ecs"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_sales_dashboard_frontend_r3" {
  family                   = "development-sales-dashboard-frontend"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "sales-dashboard-frontend",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/sales-dashboard-frontend:sha-6113e67",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "sales-dashboard-frontend",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "production"
      }
    ],
    "secrets": [
      {
        "name": "REACT_APP_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-dashboard-frontend/config-bR3D37:REACT_APP_API_URL::"
      },
      {
        "name": "REACT_APP_DBI360_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-dashboard-frontend/config-bR3D37:REACT_APP_DBI360_API_URL::"
      },
      {
        "name": "REACT_APP_DOMAIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-dashboard-frontend/config-bR3D37:REACT_APP_DOMAIN::"
      },
      {
        "name": "REACT_APP_ENTITY_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-dashboard-frontend/config-bR3D37:REACT_APP_ENTITY_URL::"
      },
      {
        "name": "REACT_APP_PERMISSION_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-dashboard-frontend/config-bR3D37:REACT_APP_PERMISSION_KEY::"
      },
      {
        "name": "REACT_APP_PERMISSION_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-dashboard-frontend/config-bR3D37:REACT_APP_PERMISSION_URL::"
      },
      {
        "name": "REACT_APP_PRODUCT_CODE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-dashboard-frontend/config-bR3D37:REACT_APP_PRODUCT_CODE::"
      },
      {
        "name": "REACT_APP_SALES_API_BACKEND_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-dashboard-frontend/config-bR3D37:REACT_APP_SALES_API_BACKEND_URL::"
      },
      {
        "name": "REACT_APP_SALES_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-dashboard-frontend/config-bR3D37:REACT_APP_SALES_API_URL::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-sales-dashboard-frontend",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "sales-dashboard-frontend"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_sales_service_backend_r480" {
  family                   = "development-sales-service-backend"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "sales-service-backend",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/sales-service-backend:sha-b63bed4-37766779313",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "sales-service-backend",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "production"
      },
      {
        "name": "REDIS_URL",
        "value": "redis://127.0.0.1:6379"
      }
    ],
    "secrets": [
      {
        "name": "ALLOWED_ORIGINS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:ALLOWED_ORIGINS::"
      },
      {
        "name": "APP_CONFIG",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:APP_CONFIG::"
      },
      {
        "name": "ASTER_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:ASTER_API::"
      },
      {
        "name": "ASTER_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:ASTER_BASE_URL::"
      },
      {
        "name": "AWS_BUCKET_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:AWS_BUCKET_NAME::"
      },
      {
        "name": "AWS_REGION",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:AWS_REGION::"
      },
      {
        "name": "B2BADMIN_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:B2BADMIN_API_KEY::"
      },
      {
        "name": "B2BADMIN_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:B2BADMIN_API_URL::"
      },
      {
        "name": "CLICKHOUSE_CONFIG",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:CLICKHOUSE_CONFIG::"
      },
      {
        "name": "CURRENCY_EXCHANGE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:CURRENCY_EXCHANGE::"
      },
      {
        "name": "DOCUMENT_ANALYZER_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:DOCUMENT_ANALYZER_KEY::"
      },
      {
        "name": "DOMAIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:DOMAIN::"
      },
      {
        "name": "FEDEX_CLIENT_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:FEDEX_CLIENT_KEY::"
      },
      {
        "name": "FEDEX_SECRET_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:FEDEX_SECRET_KEY::"
      },
      {
        "name": "FINANCE_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:FINANCE_API::"
      },
      {
        "name": "FINDSUPPLIER_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:FINDSUPPLIER_API::"
      },
      {
        "name": "GLOBAL_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:GLOBAL_API::"
      },
      {
        "name": "GLOBAL_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:GLOBAL_API_KEY::"
      },
      {
        "name": "HEX_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-hex-key/config-BGrEHQ:ENCRYPT_HEX_KEY::"
      },
      {
        "name": "HRMS_MYSQL_DB",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:HRMS_MYSQL_DB::"
      },
      {
        "name": "MASTER_CONFIG_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:MASTER_CONFIG_API::"
      },
      {
        "name": "MONGODB_URI",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:MONGODB_URI::"
      },
      {
        "name": "MYSQL_DB",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:MYSQL_DB::"
      },
      {
        "name": "N8N_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:N8N_PASSWORD::"
      },
      {
        "name": "N8N_USERNAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:N8N_USERNAME::"
      },
      {
        "name": "OPENAI_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:OPENAI_API_KEY::"
      },
      {
        "name": "ORIGIN_RFERER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:ORIGIN_RFERER::"
      },
      {
        "name": "PERMISSION_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:PERMISSION_API_URL::"
      },
      {
        "name": "PERMISSION_PRODUCT_CODE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:PERMISSION_PRODUCT_CODE::"
      },
      {
        "name": "POWERBI_CLIENT_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:POWERBI_CLIENT_ID::"
      },
      {
        "name": "POWERBI_CLIENT_SECRET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:POWERBI_CLIENT_SECRET::"
      },
      {
        "name": "POWERBI_TENANT_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:POWERBI_TENANT_ID::"
      },
      {
        "name": "PURCHASE_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:PURCHASE_API::"
      },
      {
        "name": "SALES_MODULE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:SALES_MODULE_URL::"
      },
      {
        "name": "SMPMAILWEBHOOK",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:SMPMAILWEBHOOK::"
      },
      {
        "name": "SOCKET_ORIGIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:SOCKET_ORIGIN::"
      },
      {
        "name": "UNIT_OF_MEASUREMENT_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:UNIT_OF_MEASUREMENT_API::"
      },
      {
        "name": "UPS_PASSWORD_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:UPS_PASSWORD_KEY::"
      },
      {
        "name": "UPS_USER_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:UPS_USER_KEY::"
      },
      {
        "name": "VITE_FINANCE_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:VITE_FINANCE_API_URL::"
      },
      {
        "name": "VMI_API_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:VMI_API_BASE_URL::"
      },
      {
        "name": "WMS_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:WMS_API::"
      },
      {
        "name": "X_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:X_API_KEY::"
      },
      {
        "name": "DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config:host::"
      },
      {
        "name": "DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:MYSQL_USER::"
      },
      {
        "name": "DB_PASS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:MYSQL_PASS::"
      },
      {
        "name": "DB_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config:port::"
      },
      {
        "name": "FINANCE_PERMISSION_PRODUCT_CODE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:FINANCE_PERMISSION_PRODUCT_CODE::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-sales-service-backend",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "sales-service-backend"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_sales_service_frontend_r298" {
  family                   = "development-sales-service-frontend"
  network_mode             = "awsvpc"
  cpu                      = "256"
  memory                   = "512"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "sales-service-frontend",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/sales-service-frontend:sha-f509c36-37768171134",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "sales-service-frontend",
        "appProtocol": "http"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-sales-service-frontend",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "sales-service-frontend"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_sgl_ecommerce_backend_r3" {
  family                   = "development-sgl-ecommerce-backend"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "sgl-ecommerce-backend",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/sgl-ecommerce-backend:sha-7e2dba5-31801721960",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "sgl-ecommerce-backend",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "development"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-sgl-ecommerce-backend",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "sgl-ecommerce-backend"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_sgl_ecommerce_frontend_r9" {
  family                   = "development-sgl-ecommerce-frontend"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "sgl-ecommerce-frontend",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/sgl-ecommerce-frontend:sha-951fa75-37575278257",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "sgl-ecommerce-frontend",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "development"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-sgl-ecommerce-frontend",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "sgl-ecommerce-frontend"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_simplewebpage_r1" {
  family                   = "development-simplewebpage"
  network_mode             = "awsvpc"
  cpu                      = "256"
  memory                   = "512"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "simplewebpage",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/simplewebpage:sha-7d5e5ed",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "simplewebpage",
        "appProtocol": "http"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-simplewebpage",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "simplewebpage"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_sla_rule_engine_backend_r3" {
  family                   = "development-sla-rule-engine-backend"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "sla-rule-engine-backend",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/sla-rule-engine-backend:sha-bb01f61-37780545425",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "sla-rule-engine-backend",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "development"
      },
      {
        "name": "DJANGO_DEBUG",
        "value": "0"
      }
    ],
    "secrets": [
      {
        "name": "ALLOWED_HOSTS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sla-rule-engine-backend/config-1lQBo7:ALLOWED_HOSTS::"
      },
      {
        "name": "CORS_ORIGINS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sla-rule-engine-backend/config-1lQBo7:CORS_ORIGINS::"
      },
      {
        "name": "DJANGO_SECRET_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sla-rule-engine-backend/config-1lQBo7:DJANGO_SECRET_KEY::"
      },
      {
        "name": "DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sla-rule-engine-backend/config-1lQBo7:DB_HOST::"
      },
      {
        "name": "DB_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sla-rule-engine-backend/config-1lQBo7:DB_PORT::"
      },
      {
        "name": "DB_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sla-rule-engine-backend/config-1lQBo7:DB_NAME::"
      },
      {
        "name": "DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sla-rule-engine-backend/config-1lQBo7:DB_USER::"
      },
      {
        "name": "DB_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sla-rule-engine-backend/config-1lQBo7:DB_PASSWORD::"
      },
      {
        "name": "HRMS_DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sla-rule-engine-backend/config-1lQBo7:HRMS_DB_HOST::"
      },
      {
        "name": "HRMS_DB_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sla-rule-engine-backend/config-1lQBo7:HRMS_DB_PORT::"
      },
      {
        "name": "HRMS_DB_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sla-rule-engine-backend/config-1lQBo7:HRMS_DB_NAME::"
      },
      {
        "name": "HRMS_DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sla-rule-engine-backend/config-1lQBo7:HRMS_DB_USER::"
      },
      {
        "name": "HRMS_DB_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sla-rule-engine-backend/config-1lQBo7:HRMS_DB_PASSWORD::"
      },
      {
        "name": "SALES_DB_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sla-rule-engine-backend/config-1lQBo7:SALES_DB_NAME::"
      },
      {
        "name": "GLOBAL_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sla-rule-engine-backend/config-1lQBo7:GLOBAL_API_URL::"
      },
      {
        "name": "ENCRYPT_HEX_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sla-rule-engine-backend/config-1lQBo7:ENCRYPT_HEX_KEY::"
      },
      {
        "name": "SLA_EVENTS_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sla-rule-engine-backend/config-1lQBo7:SLA_EVENTS_KEY::"
      },
      {
        "name": "TASK_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sla-rule-engine-backend/config-1lQBo7:TASK_API_URL::"
      },
      {
        "name": "TASK_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sla-rule-engine-backend/config-1lQBo7:TASK_API_KEY::"
      },
      {
        "name": "TASK_APP_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sla-rule-engine-backend/config-1lQBo7:TASK_APP_URL::"
      },
      {
        "name": "SLA_APP_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sla-rule-engine-backend/config-1lQBo7:SLA_APP_URL::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-sla-rule-engine-backend",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "sla-rule-engine-backend"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_sla_rule_engine_frontend_r8" {
  family                   = "development-sla-rule-engine-frontend"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "sla-rule-engine-frontend",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/sla-rule-engine-frontend:sha-d2510b0-37780399170",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "sla-rule-engine-frontend",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "development"
      }
    ],
    "secrets": [
      {
        "name": "VITE_SLA_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sla-rule-engine-frontend/config-nNiEBk:VITE_SLA_API_URL::"
      },
      {
        "name": "VITE_COOKIE_DOMAIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sla-rule-engine-frontend/config-nNiEBk:VITE_COOKIE_DOMAIN::"
      },
      {
        "name": "VITE_DBI_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sla-rule-engine-frontend/config-nNiEBk:VITE_DBI_URL::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-sla-rule-engine-frontend",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "sla-rule-engine-frontend"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_sourcing_backend_service_r11" {
  family                   = "development-sourcing-backend-service"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "sourcing-backend-service",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/sourcing-backend-service:sha-63ef08b",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "sourcing-backend-service",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "production"
      }
    ],
    "secrets": [
      {
        "name": "APP_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sourcing-backend-service/config-d2czKg:APP_PORT::"
      },
      {
        "name": "AWS_BUCKETNAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sourcing-backend-service/config-d2czKg:AWS_BUCKETNAME::"
      },
      {
        "name": "AWS_S3_REGION",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sourcing-backend-service/config-d2czKg:AWS_S3_REGION::"
      },
      {
        "name": "CORS_ORIGIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sourcing-backend-service/config-d2czKg:CORS_ORIGIN::"
      },
      {
        "name": "DBI360_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sourcing-backend-service/config-d2czKg:DBI360_API_URL::"
      },
      {
        "name": "DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:host::"
      },
      {
        "name": "DB_PASS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:password::"
      },
      {
        "name": "DB_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:port::"
      },
      {
        "name": "DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:username::"
      },
      {
        "name": "FETCH_LOCATIONS_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sourcing-backend-service/config-d2czKg:FETCH_LOCATIONS_API_KEY::"
      },
      {
        "name": "HEX_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sourcing-backend-service/config-d2czKg:HEX_KEY::"
      },
      {
        "name": "MASTER_CONFIG",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sourcing-backend-service/config-d2czKg:MASTER_CONFIG::"
      },
      {
        "name": "MYSQL_DB",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sourcing-backend-service/config-d2czKg:MYSQL_DB::"
      },
      {
        "name": "N8N_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sourcing-backend-service/config-d2czKg:N8N_PASSWORD::"
      },
      {
        "name": "N8N_USERNAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sourcing-backend-service/config-d2czKg:N8N_USERNAME::"
      },
      {
        "name": "PERMISSION_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sourcing-backend-service/config-d2czKg:PERMISSION_KEY::"
      },
      {
        "name": "PERMISSION_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sourcing-backend-service/config-d2czKg:PERMISSION_URL::"
      },
      {
        "name": "PRODUCT_CODE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sourcing-backend-service/config-d2czKg:PRODUCT_CODE::"
      },
      {
        "name": "REDIS_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sourcing-backend-service/config-d2czKg:REDIS_PORT::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-sourcing-backend-service",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "sourcing-backend-service"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_sourcing_frontend_service_r12" {
  family                   = "development-sourcing-frontend-service"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "sourcing-frontend-service",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/sourcing-frontend-service:sha-50d8f94",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "sourcing-frontend-service",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "production"
      },
      {
        "name": "VITE_N8N_NOTIFICATION_URL",
        "value": "https://notificationapi.demodbi360.com/api"
      }
    ],
    "secrets": [
      {
        "name": "VITE_CUSTOMER_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sourcing-frontend-service/config-QY8bvZ:VITE_CUSTOMER_URL::"
      },
      {
        "name": "VITE_GLOBAL_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sourcing-frontend-service/config-QY8bvZ:VITE_GLOBAL_URL::"
      },
      {
        "name": "VITE_HEX_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sourcing-frontend-service/config-QY8bvZ:VITE_HEX_KEY::"
      },
      {
        "name": "VITE_HOME_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sourcing-frontend-service/config-QY8bvZ:VITE_HOME_URL::"
      },
      {
        "name": "VITE_MASTER_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sourcing-frontend-service/config-QY8bvZ:VITE_MASTER_URL::"
      },
      {
        "name": "VITE_PERMISSION_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sourcing-frontend-service/config-QY8bvZ:VITE_PERMISSION_KEY::"
      },
      {
        "name": "VITE_PERMISSION_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sourcing-frontend-service/config-QY8bvZ:VITE_PERMISSION_URL::"
      },
      {
        "name": "VITE_PRODUCT_CODE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sourcing-frontend-service/config-QY8bvZ:VITE_PRODUCT_CODE::"
      },
      {
        "name": "VITE_PRODUCT_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sourcing-frontend-service/config-QY8bvZ:VITE_PRODUCT_URL::"
      },
      {
        "name": "VITE_SALES_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sourcing-frontend-service/config-QY8bvZ:VITE_SALES_API_URL::"
      },
      {
        "name": "VITE_SOURCED_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sourcing-frontend-service/config-QY8bvZ:VITE_SOURCED_API_URL::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-sourcing-frontend-service",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "sourcing-frontend-service"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_sso_litigation_management_r3" {
  family                   = "development-sso-litigation-management"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "sso-litigation-management",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/sso-litigation-management:sha-c0c4e53",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "sso-litigation-management",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "production"
      }
    ],
    "secrets": [
      {
        "name": "VITE_API_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sso-litigation-management/config-uXt7vh:VITE_API_BASE_URL::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-sso-litigation-management",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "sso-litigation-management"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_sso_litigation_management_api_r3" {
  family                   = "development-sso-litigation-management-api"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "sso-litigation-management-api",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/sso-litigation-management-api:sha-7720cc2",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "sso-litigation-management-api",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "production"
      }
    ],
    "secrets": [
      {
        "name": "DBI360_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sso-litigation-management-api/config-5985mr:DBI360_API_URL::"
      },
      {
        "name": "DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:host::"
      },
      {
        "name": "DB_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sso-litigation-management-api/config-5985mr:DB_NAME::"
      },
      {
        "name": "DB_PASS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:password::"
      },
      {
        "name": "DB_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:port::"
      },
      {
        "name": "DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:username::"
      },
      {
        "name": "FRONTEND_ORIGIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sso-litigation-management-api/config-5985mr:FRONTEND_ORIGIN::"
      },
      {
        "name": "HEX_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sso-litigation-management-api/config-5985mr:HEX_KEY::"
      },
      {
        "name": "S3_BUCKET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sso-litigation-management-api/config-5985mr:S3_BUCKET::"
      },
      {
        "name": "X_DATABASE_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sso-litigation-management-api/config-5985mr:X_DATABASE_ID::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-sso-litigation-management-api",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "sso-litigation-management-api"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_sso_mis_r108" {
  family                   = "development-sso-mis"
  network_mode             = "awsvpc"
  cpu                      = "1024"
  memory                   = "2048"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "sso-mis",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/sso-mis:sha-c45b66f-37882988958",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "sso-mis",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "production"
      }
    ],
    "secrets": [
      {
        "name": "PRODUCT_CODE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sso-mis/config:PRODUCT_CODE::"
      },
      {
        "name": "DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:host::"
      },
      {
        "name": "DB_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:port::"
      },
      {
        "name": "DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sso-mis/config:username::"
      },
      {
        "name": "DB_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sso-mis/config:password::"
      },
      {
        "name": "DB_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sso-mis/config:DB_NAME::"
      },
      {
        "name": "DB_NAME_SSO",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sso-mis/config:DB_NAME_SSO::"
      },
      {
        "name": "AUTH_TOKEN_COOKIE_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sso-mis/config:AUTH_TOKEN_COOKIE_NAME::"
      },
      {
        "name": "MIS_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sso-mis/config:MIS_API_URL::"
      },
      {
        "name": "MASTER_CONFIG_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sso-mis/config:MASTER_CONFIG_API_URL::"
      },
      {
        "name": "SALES_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sso-mis/config:SALES_API_URL::"
      },
      {
        "name": "FIND_SUPPLIERS_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sso-mis/config:FIND_SUPPLIERS_API_URL::"
      },
      {
        "name": "PURCHASE_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sso-mis/config:PURCHASE_API_URL::"
      },
      {
        "name": "WMS_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sso-mis/config:WMS_API_URL::"
      },
      {
        "name": "ASTER_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sso-mis/config:ASTER_API_URL::"
      },
      {
        "name": "NEXT_PUBLIC_SSO_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sso-mis/config:NEXT_PUBLIC_SSO_URL::"
      },
      {
        "name": "NEXT_PUBLIC_PURCHASE_APP_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sso-mis/config:NEXT_PUBLIC_PURCHASE_APP_URL::"
      },
      {
        "name": "NEXT_PUBLIC_WMS_APP_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sso-mis/config:NEXT_PUBLIC_WMS_APP_URL::"
      },
      {
        "name": "NEXT_PUBLIC_SALES_PORTAL_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sso-mis/config:NEXT_PUBLIC_SALES_PORTAL_URL::"
      },
      {
        "name": "FINANCE_REPORTS_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sso-mis/config:FINANCE_REPORTS_API_URL::"
      },
      {
        "name": "AWS_REGION",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sso-mis/config:AWS_REGION::"
      },
      {
        "name": "AWS_BUCKET_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sso-mis/config:AWS_BUCKET_NAME::"
      },
      {
        "name": "S3_PRIVATE_PREFIX",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sso-mis/config:S3_PRIVATE_PREFIX::"
      },
      {
        "name": "S3_PUBLIC_PREFIXES",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sso-mis/config:S3_PUBLIC_PREFIXES::"
      },
      {
        "name": "NEXT_PUBLIC_PROFILE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sso-mis/config:NEXT_PUBLIC_PROFILE_URL::"
      },
      {
        "name": "CORS_ALLOWED_ORIGINS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sso-mis/config:CORS_ALLOWED_ORIGINS::"
      },
      {
        "name": "HEX_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-hex-key/config-BGrEHQ:ENCRYPT_HEX_KEY::"
      },
      {
        "name": "NEXT_X_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sso-mis/config:NEXT_X_API_KEY::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-sso-mis",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "sso-mis"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_sso_project_management_r6" {
  family                   = "development-sso-project-management"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "sso-project-management",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/sso-project-management:sha-1b568fc-32028259990",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "sso-project-management",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "development"
      }
    ],
    "secrets": [
      {
        "name": "AWS_CREDENTIALS_PATH",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sso-project-management/config-0JZAsr:AWS_CREDENTIALS_PATH::"
      },
      {
        "name": "AWS_SECRET_REGION",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sso-project-management/config-0JZAsr:AWS_SECRET_REGION::"
      },
      {
        "name": "ENCRYPT_HEX_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-hex-key/config-BGrEHQ:ENCRYPT_HEX_KEY::"
      },
      {
        "name": "NEXT_AWS_ACCESS_KEY_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sso-project-management/config-0JZAsr:NEXT_AWS_ACCESS_KEY_ID::"
      },
      {
        "name": "NEXT_AWS_BUCKET_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sso-project-management/config-0JZAsr:NEXT_AWS_BUCKET_NAME::"
      },
      {
        "name": "NEXT_AWS_REGION",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sso-project-management/config-0JZAsr:NEXT_AWS_REGION::"
      },
      {
        "name": "NEXT_AWS_SECRET_ACCESS_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sso-project-management/config-0JZAsr:NEXT_AWS_SECRET_ACCESS_KEY::"
      },
      {
        "name": "NEXT_AWS_SECRET_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sso-project-management/config-0JZAsr:NEXT_AWS_SECRET_NAME::"
      },
      {
        "name": "NEXT_MYSQL_DB",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sso-project-management/config-0JZAsr:NEXT_MYSQL_DB::"
      },
      {
        "name": "NEXT_MYSQL_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:host::"
      },
      {
        "name": "NEXT_MYSQL_PASS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:password::"
      },
      {
        "name": "NEXT_MYSQL_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:port::"
      },
      {
        "name": "NEXT_MYSQL_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:username::"
      },
      {
        "name": "NEXT_PUBLIC_DBI360_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sso-project-management/config-0JZAsr:NEXT_PUBLIC_DBI360_API_URL::"
      },
      {
        "name": "NEXT_PUBLIC_DOMAIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sso-project-management/config-0JZAsr:NEXT_PUBLIC_DOMAIN::"
      },
      {
        "name": "NEXT_PUBLIC_auth_product_code",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sso-project-management/config-0JZAsr:NEXT_PUBLIC_auth_product_code::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-sso-project-management",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "sso-project-management"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_supplier_kpi_backend_dev_r1" {
  family                   = "development-supplier-kpi-backend-dev"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "supplier-kpi-backend-dev",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/supplier-kpi-backend-dev:latest",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp"
      }
    ],
    "secrets": [
      {
        "name": "AWS_ACCESS_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/supplier-kpi-backend-dev/config-SiSVoH:AWS_ACCESS_KEY::"
      },
      {
        "name": "AWS_S3_BUCKET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/supplier-kpi-backend-dev/config-SiSVoH:AWS_S3_BUCKET::"
      },
      {
        "name": "AWS_S3_REGION",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/supplier-kpi-backend-dev/config-SiSVoH:AWS_S3_REGION::"
      },
      {
        "name": "AWS_SECRET_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/supplier-kpi-backend-dev/config-SiSVoH:AWS_SECRET_KEY::"
      },
      {
        "name": "AWS_SECRET_REGION",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/supplier-kpi-backend-dev/config-SiSVoH:AWS_SECRET_REGION::"
      },
      {
        "name": "Supplier_DB_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/supplier-kpi-backend-dev/config-SiSVoH:Supplier_DB_NAME::"
      },
      {
        "name": "api_url",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/supplier-kpi-backend-dev/config-SiSVoH:api_url::"
      },
      {
        "name": "aster_risk_url",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/supplier-kpi-backend-dev/config-SiSVoH:aster_risk_url::"
      },
      {
        "name": "aster_url",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/supplier-kpi-backend-dev/config-SiSVoH:aster_url::"
      },
      {
        "name": "cookie_domain",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/supplier-kpi-backend-dev/config-SiSVoH:cookie_domain::"
      },
      {
        "name": "db_database",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/supplier-kpi-backend-dev/config-SiSVoH:db_database::"
      },
      {
        "name": "db_hostname",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/supplier-kpi-backend-dev/config-SiSVoH:db_hostname::"
      },
      {
        "name": "db_password",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/supplier-kpi-backend-dev/config-SiSVoH:db_password::"
      },
      {
        "name": "db_username",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/supplier-kpi-backend-dev/config-SiSVoH:db_username::"
      },
      {
        "name": "isLocal",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/supplier-kpi-backend-dev/config-SiSVoH:isLocal::"
      },
      {
        "name": "n8n_url",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/supplier-kpi-backend-dev/config-SiSVoH:n8n_url::"
      },
      {
        "name": "openAI",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/supplier-kpi-backend-dev/config-SiSVoH:openAI::"
      },
      {
        "name": "sso_url",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/supplier-kpi-backend-dev/config-SiSVoH:sso_url::"
      },
      {
        "name": "sso_url_product",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/supplier-kpi-backend-dev/config-SiSVoH:sso_url_product::"
      },
      {
        "name": "token",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/supplier-kpi-backend-dev/config-SiSVoH:token::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-supplier-kpi-backend-dev",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "ecs"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_supplier_kpi_backend_v2_r5" {
  family                   = "development-supplier-kpi-backend-v2"
  network_mode             = "awsvpc"
  cpu                      = "256"
  memory                   = "512"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "supplier-kpi-backend-v2",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/supplier-kpi-backend-v2@sha256:e00e354f401260b2292860855190eedea643c21da7f8fd0e14509c8c51d2ff18",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "supplier-kpi-backend-v2",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "RUNTIME_ENVIRONMENT",
        "value": "development"
      }
    ],
    "secrets": [
      {
        "name": "DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/supplier-kpi-backend-v2/config:DB_HOST::"
      },
      {
        "name": "DB_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/supplier-kpi-backend-v2/config:DB_PORT::"
      },
      {
        "name": "DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/supplier-kpi-backend-v2/config:DB_USER::"
      },
      {
        "name": "DB_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/supplier-kpi-backend-v2/config:DB_NAME::"
      },
      {
        "name": "DB_CONNECTION_LIMIT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/supplier-kpi-backend-v2/config:DB_CONNECTION_LIMIT::"
      },
      {
        "name": "DB_SSL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/supplier-kpi-backend-v2/config:DB_SSL::"
      },
      {
        "name": "DB_SSL_REJECT_UNAUTHORIZED",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/supplier-kpi-backend-v2/config:DB_SSL_REJECT_UNAUTHORIZED::"
      },
      {
        "name": "AUTH_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/supplier-kpi-backend-v2/config:AUTH_URL::"
      },
      {
        "name": "COOKIE_DOMAIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/supplier-kpi-backend-v2/config:COOKIE_DOMAIN::"
      },
      {
        "name": "PROFILE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/supplier-kpi-backend-v2/config:PROFILE_URL::"
      },
      {
        "name": "ALLOWED_ORIGINS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/supplier-kpi-backend-v2/config:ALLOWED_ORIGINS::"
      },
      {
        "name": "N8N_RATING_WEBHOOK_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/supplier-kpi-backend-v2/config:N8N_RATING_WEBHOOK_URL::"
      },
      {
        "name": "SUPPLIER_DB_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/supplier-kpi-backend-v2/config:SUPPLIER_DB_NAME::"
      },
      {
        "name": "ASTERDOCS_DB_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/supplier-kpi-backend-v2/config:ASTERDOCS_DB_NAME::"
      },
      {
        "name": "ASTER_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/supplier-kpi-backend-v2/config:ASTER_API_URL::"
      },
      {
        "name": "ASTER_RISK_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/supplier-kpi-backend-v2/config:ASTER_RISK_API_URL::"
      },
      {
        "name": "PLATFORM_OPERATOR_DOMAIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/supplier-kpi-backend-v2/config:PLATFORM_OPERATOR_DOMAIN::"
      },
      {
        "name": "AWS_REGION",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/supplier-kpi-backend-v2/config:AWS_REGION::"
      },
      {
        "name": "AWS_S3_BUCKET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/supplier-kpi-backend-v2/config:AWS_S3_BUCKET::"
      },
      {
        "name": "UPLOAD_DIR",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/supplier-kpi-backend-v2/config:UPLOAD_DIR::"
      },
      {
        "name": "DB_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/supplier-kpi-backend-v2/config:DB_PASSWORD::"
      },
      {
        "name": "ENCRYPT_HEX_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/supplier-kpi-backend-v2/config:ENCRYPT_HEX_KEY::"
      },
      {
        "name": "OPENAI_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/supplier-kpi-backend-v2/config:OPENAI_API_KEY::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-supplier-kpi-backend-v2",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "supplier-kpi-backend-v2"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_supplier_kpi_dev_r1" {
  family                   = "development-supplier-kpi-dev"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "supplier-kpi-dev",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/supplier-kpi-dev:latest",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp"
      }
    ],
    "secrets": [
      {
        "name": "PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/supplier-kpi-dev/config-89Afeh:PORT::"
      },
      {
        "name": "app_url",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/supplier-kpi-dev/config-89Afeh:app_url::"
      },
      {
        "name": "auth_url",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/supplier-kpi-dev/config-89Afeh:auth_url::"
      },
      {
        "name": "cookie_domain",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/supplier-kpi-dev/config-89Afeh:cookie_domain::"
      },
      {
        "name": "db_database",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/supplier-kpi-dev/config-89Afeh:db_database::"
      },
      {
        "name": "db_hostname",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/supplier-kpi-dev/config-89Afeh:db_hostname::"
      },
      {
        "name": "db_password",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/supplier-kpi-dev/config-89Afeh:db_password::"
      },
      {
        "name": "db_username",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/supplier-kpi-dev/config-89Afeh:db_username::"
      },
      {
        "name": "development_url",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/supplier-kpi-dev/config-89Afeh:development_url::"
      },
      {
        "name": "isLocal",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/supplier-kpi-dev/config-89Afeh:isLocal::"
      },
      {
        "name": "n8n_url",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/supplier-kpi-dev/config-89Afeh:n8n_url::"
      },
      {
        "name": "profile_url",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/supplier-kpi-dev/config-89Afeh:profile_url::"
      },
      {
        "name": "token",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/supplier-kpi-dev/config-89Afeh:token::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-supplier-kpi-dev",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "ecs"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_supplier_kpi_frontend_r15" {
  family                   = "development-supplier-kpi-frontend"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "supplier-kpi-frontend",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/supplier-kpi-frontend@sha256:371cc8b73b4af5b25e42ffb9eafea0186976c1cd47d76e0f992eb63bafdf2e89",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "supplier-kpi-frontend",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "RUNTIME_API_URL",
        "value": ""
      },
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "RUNTIME_PROFILE_URL",
        "value": ""
      },
      {
        "name": "RUNTIME_ENVIRONMENT",
        "value": "development"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-supplier-kpi-frontend",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "supplier-kpi-frontend"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_synapsebiolab_r19" {
  family                   = "development-synapsebiolab"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "synapsebiolab",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/synapsebiolab:sha-ee31f46-34119530643",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "synapsebiolab",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "development"
      }
    ],
    "secrets": [
      {
        "name": "API_ENDPOINT_PAYMENT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/synapsebiolab/config-xCPZUI:API_ENDPOINT_PAYMENT::"
      },
      {
        "name": "APP_ENV",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/synapsebiolab/config-xCPZUI:APP_ENV::"
      },
      {
        "name": "BLOG_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/synapsebiolab/config-xCPZUI:BLOG_API_KEY::"
      },
      {
        "name": "RAZORPAY_KEY_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/synapsebiolab/config-xCPZUI:RAZORPAY_KEY_ID::"
      },
      {
        "name": "RAZORPAY_KEY_SECRET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/synapsebiolab/config-xCPZUI:RAZORPAY_KEY_SECRET::"
      },
      {
        "name": "RECAPTCHA_SECRET_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/synapsebiolab/config-xCPZUI:RECAPTCHA_SECRET_KEY::"
      },
      {
        "name": "RECAPTCHA_SITE_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/synapsebiolab/config-xCPZUI:RECAPTCHA_SITE_KEY::"
      },
      {
        "name": "N8N_NOTIFICATION_ENDPOINT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/synapsebiolab/config-xCPZUI:N8N_NOTIFICATION_ENDPOINT::"
      },
      {
        "name": "N8N_USERNAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/synapsebiolab/config-xCPZUI:N8N_USERNAME::"
      },
      {
        "name": "N8N_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/synapsebiolab/config-xCPZUI:N8N_PASSWORD::"
      },
      {
        "name": "BIOTRACE_WIDGET_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/synapsebiolab/config-xCPZUI:BIOTRACE_WIDGET_API_KEY::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-synapsebiolab",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "synapsebiolab"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_task_management_r70" {
  family                   = "development-task-management"
  network_mode             = "awsvpc"
  cpu                      = "1024"
  memory                   = "2048"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "task-management",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/task-management:sha-e0d7e57-37596119014",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "task-management",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "development"
      }
    ],
    "secrets": [
      {
        "name": "BUCKET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:BUCKET::"
      },
      {
        "name": "CLIENT_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:CLIENT_ID::"
      },
      {
        "name": "CLIENT_SECRET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:CLIENT_SECRET::"
      },
      {
        "name": "CORS_LOCAL_ORIGINS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:CORS_LOCAL_ORIGINS::"
      },
      {
        "name": "CORS_ORIGINS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:CORS_ORIGINS::"
      },
      {
        "name": "DB_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:DB_NAME::"
      },
      {
        "name": "DECRYPT_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:DECRYPT_API_URL::"
      },
      {
        "name": "DEPARTMENT_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:DEPARTMENT_API_URL::"
      },
      {
        "name": "EVENT_WORKSPACE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:EVENT_WORKSPACE::"
      },
      {
        "name": "Encrypted_USER_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:Encrypted_USER_ID::"
      },
      {
        "name": "GROUP_AUTH",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:GROUP_AUTH::"
      },
      {
        "name": "ENCRYPT_HEX_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-hex-key/config-BGrEHQ:ENCRYPT_HEX_KEY::"
      },
      {
        "name": "HIRERARCHY_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:HIRERARCHY_API::"
      },
      {
        "name": "HRMS_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:HRMS_API_URL::"
      },
      {
        "name": "LOG_OUT_DOMAIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:LOG_OUT_DOMAIN::"
      },
      {
        "name": "MAIL_WEBHOOK_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:MAIL_WEBHOOK_URL::"
      },
      {
        "name": "Mode",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:Mode::"
      },
      {
        "name": "REDIRECT_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:REDIRECT_URL::"
      },
      {
        "name": "ROLE_BASED",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:ROLE_BASED::"
      },
      {
        "name": "SECRET_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:SECRET_KEY::"
      },
      {
        "name": "SEND_MAIL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:SEND_MAIL::"
      },
      {
        "name": "SISTERS_COMPANY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:SISTERS_COMPANY::"
      },
      {
        "name": "SSO_DATABASE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:SSO_DATABASE::"
      },
      {
        "name": "SSO_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:host::"
      },
      {
        "name": "SSO_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:password::"
      },
      {
        "name": "SSO_USERNAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:username::"
      },
      {
        "name": "TASK_CONFIG_ALLOWED_COMPANIES",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:TASK_CONFIG_ALLOWED_COMPANIES::"
      },
      {
        "name": "TASK_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:TASK_URL::"
      },
      {
        "name": "FRONTEND_TASK_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:FRONTEND_TASK_URL::"
      },
      {
        "name": "TENANT_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:TENANT_ID::"
      },
      {
        "name": "TOKEN_VERIFY_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:TOKEN_VERIFY_URL::"
      },
      {
        "name": "TRACKING_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:TRACKING_API::"
      },
      {
        "name": "URI_COLLECTION_ZERO",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:URI_COLLECTION_ZERO::"
      },
      {
        "name": "USER_GROUPS_CODE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:USER_GROUPS_CODE::"
      },
      {
        "name": "USER_GROUP_INFO",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:USER_GROUP_INFO::"
      },
      {
        "name": "USER_INFO_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:USER_INFO_API::"
      },
      {
        "name": "USER_PROFILE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:USER_PROFILE::"
      },
      {
        "name": "API_KEY_VERIFY_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:API_KEY_VERIFY_URL::"
      },
      {
        "name": "API_KEY_ORIGIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:API_KEY_ORIGIN::"
      },
      {
        "name": "API_KEY_REFERER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:API_KEY_REFERER::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-task-management",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "task-management"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_task_service_frontend_r81" {
  family                   = "development-task-service-frontend"
  network_mode             = "awsvpc"
  cpu                      = "1024"
  memory                   = "2048"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "task-service-frontend",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/task-service-frontend:sha-f5043c8-37599859773",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "task-service-frontend",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "development"
      }
    ],
    "secrets": [
      {
        "name": "REACT_APP_PERMISSION_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-service-frontend/config-5aQIBz:REACT_APP_PERMISSION_URL::"
      },
      {
        "name": "REACT_APP_PERMISSION_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-service-frontend/config-5aQIBz:REACT_APP_PERMISSION_KEY::"
      },
      {
        "name": "REACT_APP_AWS_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-service-frontend/config-5aQIBz:REACT_APP_AWS_API_URL::"
      },
      {
        "name": "REACT_APP_GLOBAL_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-service-frontend/config-5aQIBz:REACT_APP_GLOBAL_API_URL::"
      },
      {
        "name": "REACT_APP_REDIRECT_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-service-frontend/config-5aQIBz:REACT_APP_REDIRECT_URL::"
      },
      {
        "name": "REACT_APP_TOKEN_VERIFY_ENDPOINT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-service-frontend/config-5aQIBz:REACT_APP_TOKEN_VERIFY_ENDPOINT::"
      },
      {
        "name": "REACT_APP_PRODUCT_CODE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-service-frontend/config-5aQIBz:REACT_APP_PRODUCT_CODE::"
      },
      {
        "name": "REACT_APP_DECRYPT_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-service-frontend/config-5aQIBz:REACT_APP_DECRYPT_API::"
      },
      {
        "name": "REACT_APP_CLOUDFRONT_DOMAIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-service-frontend/config-5aQIBz:REACT_APP_CLOUDFRONT_DOMAIN::"
      },
      {
        "name": "REACT_APP_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-service-frontend/config-5aQIBz:REACT_APP_API_URL::"
      },
      {
        "name": "REACT_APP_REGISTER_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-service-frontend/config-5aQIBz:REACT_APP_REGISTER_URL::"
      },
      {
        "name": "REACT_APP_MAIN_LOGIN_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-service-frontend/config-5aQIBz:REACT_APP_MAIN_LOGIN_URL::"
      },
      {
        "name": "REACT_APP_COOKIE_DOMAIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-service-frontend/config-5aQIBz:REACT_APP_COOKIE_DOMAIN::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-task-service-frontend",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "task-service-frontend"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_taskmanagement_website_r4" {
  family                   = "development-taskmanagement-website"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "taskmanagement-website",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/taskmanagement-website:sha-a09b4be",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "taskmanagement-website",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "development"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-taskmanagement-website",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "taskmanagement-website"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_ticketing_frontend_r12" {
  family                   = "development-ticketing-frontend"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "ticketing-frontend",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/ticketing-frontend:sha-ca056fc-37765307516",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "ticketing-frontend",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "development"
      }
    ],
    "secrets": [
      {
        "name": "VITE_API_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ticketing-frontend/config-RpQATY:VITE_API_BASE_URL::"
      },
      {
        "name": "VITE_GLOBAL_API_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ticketing-frontend/config-RpQATY:VITE_GLOBAL_API_BASE_URL::"
      },
      {
        "name": "VITE_LOGIN_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ticketing-frontend/config-RpQATY:VITE_LOGIN_URL::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-ticketing-frontend",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "ticketing-frontend"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_ticketing_system_backend_r62" {
  family                   = "development-ticketing-system-backend"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "ticketing-system-backend",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/ticketing-system-backend:sha-fb3d8f4",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp"
      }
    ],
    "secrets": [
      {
        "name": "NODE_ENV",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ticketing-system-backend/config-SMkrPi:NODE_ENV::"
      },
      {
        "name": "PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ticketing-system-backend/config-SMkrPi:PORT::"
      },
      {
        "name": "SSO_ENABLED",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ticketing-system-backend/config-SMkrPi:SSO_ENABLED::"
      },
      {
        "name": "FRONTEND_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ticketing-system-backend/config-SMkrPi:FRONTEND_URL::"
      },
      {
        "name": "ALLOWED_ORIGINS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ticketing-system-backend/config-SMkrPi:ALLOWED_ORIGINS::"
      },
      {
        "name": "COOKIE_SECURE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ticketing-system-backend/config-SMkrPi:COOKIE_SECURE::"
      },
      {
        "name": "COOKIE_SAMESITE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ticketing-system-backend/config-SMkrPi:COOKIE_SAMESITE::"
      },
      {
        "name": "DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ticketing-system-backend/config-SMkrPi:DB_HOST::"
      },
      {
        "name": "DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ticketing-system-backend/config-SMkrPi:DB_USER::"
      },
      {
        "name": "DB_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ticketing-system-backend/config-SMkrPi:DB_PASSWORD::"
      },
      {
        "name": "DB_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ticketing-system-backend/config-SMkrPi:DB_NAME::"
      },
      {
        "name": "SSO_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ticketing-system-backend/config-SMkrPi:SSO_BASE_URL::"
      },
      {
        "name": "SSO_DATABASE_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ticketing-system-backend/config-SMkrPi:SSO_DATABASE_ID::"
      },
      {
        "name": "SSO_DECRYPT_ENDPOINT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ticketing-system-backend/config-SMkrPi:SSO_DECRYPT_ENDPOINT::"
      },
      {
        "name": "S3_BUCKET_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ticketing-system-backend/config-SMkrPi:S3_BUCKET_NAME::"
      },
      {
        "name": "CF_DOMAIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ticketing-system-backend/config-SMkrPi:CF_DOMAIN::"
      },
      {
        "name": "CF_KEY_PAIR_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ticketing-system-backend/config-SMkrPi:CF_KEY_PAIR_ID::"
      },
      {
        "name": "CF_PRIVATE_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ticketing-system-backend/config-SMkrPi:CF_PRIVATE_KEY::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-ticketing-system-backend",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "ecs"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_ticketing_system_frontend_r13" {
  family                   = "development-ticketing-system-frontend"
  network_mode             = "awsvpc"
  cpu                      = "256"
  memory                   = "512"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "ticketing-system-frontend",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/ticketing-system-frontend:sha-1a5d0f6",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-ticketing-system-frontend",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "ecs"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_vmi_service_backend_r68" {
  family                   = "development-vmi-service-backend"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "vmi-service-backend",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/vmi-service-backend:sha-54aca20-36104718130",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "vmi-service-backend",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "development"
      }
    ],
    "secrets": [
      {
        "name": "ASTER_DB",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:ASTER_DB::"
      },
      {
        "name": "AWS_REGION",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:AWS_REGION::"
      },
      {
        "name": "BASE_DOMAIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:BASE_DOMAIN::"
      },
      {
        "name": "CORS_ORIGINS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:CORS_ORIGINS::"
      },
      {
        "name": "DBI360_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:DBI360_API_URL::"
      },
      {
        "name": "DB_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:DB_NAME::"
      },
      {
        "name": "DOCUSIGN_INTEGRATION_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:DOCUSIGN_INTEGRATION_KEY::"
      },
      {
        "name": "DOCUSIGN_OAUTH_BASEPATH",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:DOCUSIGN_OAUTH_BASEPATH::"
      },
      {
        "name": "DOCUSIGN_USER_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:DOCUSIGN_USER_ID::"
      },
      {
        "name": "DOCUSIGN_PRIVATE_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:DOCUSIGN_PRIVATE_KEY::"
      },
      {
        "name": "DOC_CONTACT_EMAIL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:DOC_CONTACT_EMAIL::"
      },
      {
        "name": "DOC_REQ_EMAIL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:DOC_REQ_EMAIL::"
      },
      {
        "name": "DOC_REQ_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:DOC_REQ_NAME::"
      },
      {
        "name": "HEX_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:HEX_KEY::"
      },
      {
        "name": "INVOICE_DISCOUNT_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:INVOICE_DISCOUNT_URL::"
      },
      {
        "name": "N8N_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:N8N_PASSWORD::"
      },
      {
        "name": "N8N_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:N8N_URL::"
      },
      {
        "name": "N8N_USERNAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:N8N_USERNAME::"
      },
      {
        "name": "NEXUS_API_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:NEXUS_API_BASE_URL::"
      },
      {
        "name": "NEXUS_API_TOKEN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:NEXUS_API_TOKEN::"
      },
      {
        "name": "NEXUS_COMPANY_UPDATE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:NEXUS_COMPANY_UPDATE::"
      },
      {
        "name": "PREV_USER_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:PREV_USER_ID::"
      },
      {
        "name": "PRICE_AUTO_UPDATE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:PRICE_AUTO_UPDATE_URL::"
      },
      {
        "name": "Quotation_Approve_Reject_Notification_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:Quotation_Approve_Reject_Notification_URL::"
      },
      {
        "name": "RESTRICT_CUSTOMER_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:RESTRICT_CUSTOMER_ID::"
      },
      {
        "name": "S3_BUCKET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:S3_BUCKET::"
      },
      {
        "name": "S3_SECRET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:S3_SECRET::"
      },
      {
        "name": "STRIPE_SECRET_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:STRIPE_SECRET_KEY::"
      },
      {
        "name": "STRIPE_WEBHOOK_SECRET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:STRIPE_WEBHOOK_SECRET::"
      },
      {
        "name": "VMI_BACKEND_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:VMI_BACKEND_URL::"
      },
      {
        "name": "VMI_FRONTEND_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:VMI_FRONTEND_URL::"
      },
      {
        "name": "VMI_N8N_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:VMI_N8N_URL::"
      },
      {
        "name": "VMI_SSO_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:VMI_SSO_URL::"
      },
      {
        "name": "WMS_BACKEND_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:WMS_BACKEND_URL::"
      },
      {
        "name": "PERMISSION_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:PERMISSION_URL::"
      },
      {
        "name": "PRODUCT_CODE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:PRODUCT_CODE::"
      },
      {
        "name": "PERMISSION_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:PERMISSION_KEY::"
      },
      {
        "name": "MASTERPRODUCT_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:MASTERPRODUCT_URL::"
      },
      {
        "name": "DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:host::"
      },
      {
        "name": "DB_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:port::"
      },
      {
        "name": "DB_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:password::"
      },
      {
        "name": "DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:username::"
      },
      {
        "name": "VMI_ADMIN_COMPANY_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:VMI_ADMIN_COMPANY_ID::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-vmi-service-backend",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "vmi-service-backend"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_vmi_service_frontend_r22" {
  family                   = "development-vmi-service-frontend"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "vmi-service-frontend",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/vmi-service-frontend:sha-45fb394-35715194945",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "vmi-service-frontend",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "production"
      }
    ],
    "secrets": [
      {
        "name": "VITE_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-frontend/config-YqVark:VITE_API_URL::"
      },
      {
        "name": "VITE_ASTER_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-frontend/config-YqVark:VITE_ASTER_API_KEY::"
      },
      {
        "name": "VITE_ASTER_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-frontend/config-YqVark:VITE_ASTER_API_URL::"
      },
      {
        "name": "VITE_AUTH_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-frontend/config-YqVark:VITE_AUTH_URL::"
      },
      {
        "name": "VITE_COUNTRY_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-frontend/config-YqVark:VITE_COUNTRY_API::"
      },
      {
        "name": "VITE_COUNTRY_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-frontend/config-YqVark:VITE_COUNTRY_API_KEY::"
      },
      {
        "name": "VITE_DOMAIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-frontend/config-YqVark:VITE_DOMAIN::"
      },
      {
        "name": "VITE_DOMAIN_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-frontend/config-YqVark:VITE_DOMAIN_NAME::"
      },
      {
        "name": "VITE_FINANCE_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-frontend/config-YqVark:VITE_FINANCE_API_URL::"
      },
      {
        "name": "VITE_FRONTEND_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-frontend/config-YqVark:VITE_FRONTEND_URL::"
      },
      {
        "name": "VITE_GLOBAL_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-frontend/config-YqVark:VITE_GLOBAL_API_URL::"
      },
      {
        "name": "VITE_LOCATION_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-frontend/config-YqVark:VITE_LOCATION_API::"
      },
      {
        "name": "VITE_MASTER_PRODUCT_SEARCH",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-frontend/config-YqVark:VITE_MASTER_PRODUCT_SEARCH::"
      },
      {
        "name": "VITE_PERMISSION_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-frontend/config-YqVark:VITE_PERMISSION_KEY::"
      },
      {
        "name": "VITE_PERMISSION_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-frontend/config-YqVark:VITE_PERMISSION_URL::"
      },
      {
        "name": "VITE_PRODUCT_CODE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-frontend/config-YqVark:VITE_PRODUCT_CODE::"
      },
      {
        "name": "VITE_SALES_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-frontend/config-YqVark:VITE_SALES_URL::"
      },
      {
        "name": "VITE_STRIPE_PUBLISH_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-frontend/config-YqVark:VITE_STRIPE_PUBLISH_KEY::"
      },
      {
        "name": "VITE_VENDOR_PROFILE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-frontend/config-YqVark:VITE_VENDOR_PROFILE_URL::"
      },
      {
        "name": "VITE_VMI_INVOICE_PAYMENT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-frontend/config-YqVark:VITE_VMI_INVOICE_PAYMENT::"
      },
      {
        "name": "VITE_VMI_INVOICE_PAYMENT_RECEIVE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-frontend/config-YqVark:VITE_VMI_INVOICE_PAYMENT_RECEIVE::"
      },
      {
        "name": "VITE_N8N_NOTIFICATION_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-frontend/config-YqVark:VITE_N8N_NOTIFICATION_URL::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-vmi-service-frontend",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "vmi-service-frontend"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_wms_service_backend_r97" {
  family                   = "development-wms-service-backend"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "wms-service-backend",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/wms-service-backend:sha-a5ba985-37777503255",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "wms-service-backend",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "production"
      }
    ],
    "secrets": [
      {
        "name": "APP_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/wms-service-backend/config:APP_PORT::"
      },
      {
        "name": "APP_RATE_LIMIT_WINDOW_MS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/wms-service-backend/config:APP_RATE_LIMIT_WINDOW_MS::"
      },
      {
        "name": "APP_RATE_LIMIT_MAX",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/wms-service-backend/config:APP_RATE_LIMIT_MAX::"
      },
      {
        "name": "APP_RATE_LIMIT_CLEANUP_MS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/wms-service-backend/config:APP_RATE_LIMIT_CLEANUP_MS::"
      },
      {
        "name": "APP_RATE_LIMIT_EXCLUDED_PATHS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/wms-service-backend/config:APP_RATE_LIMIT_EXCLUDED_PATHS::"
      },
      {
        "name": "AUDIT_TRAIL_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/wms-service-backend/config:AUDIT_TRAIL_API_URL::"
      },
      {
        "name": "AWS_BUCKET_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/wms-service-backend/config:AWS_BUCKET_NAME::"
      },
      {
        "name": "AWS_REGION",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/wms-service-backend/config:AWS_REGION::"
      },
      {
        "name": "BILLING_API_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/wms-service-backend/config:BILLING_API_BASE_URL::"
      },
      {
        "name": "COGS_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/wms-service-backend/config:COGS_API_URL::"
      },
      {
        "name": "CORS_ORIGIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/wms-service-backend/config:CORS_ORIGIN::"
      },
      {
        "name": "DBI360_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/wms-service-backend/config:DBI360_API_URL::"
      },
      {
        "name": "FETCH_LOCATIONS_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/wms-service-backend/config:FETCH_LOCATIONS_API_KEY::"
      },
      {
        "name": "FINANCE_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/wms-service-backend/config:FINANCE_API_URL::"
      },
      {
        "name": "FIND_SUPPLIER_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/wms-service-backend/config:FIND_SUPPLIER_API::"
      },
      {
        "name": "HEX_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-hex-key/config-BGrEHQ:ENCRYPT_HEX_KEY::"
      },
      {
        "name": "INVENTORY_STOCK_LEDGER_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/wms-service-backend/config:INVENTORY_STOCK_LEDGER_URL::"
      },
      {
        "name": "INVENTORY_STOCK_LEDGER_URL_RAW",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/wms-service-backend/config:INVENTORY_STOCK_LEDGER_URL_RAW::"
      },
      {
        "name": "LOCATION_API_TOKEN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/wms-service-backend/config:LOCATION_API_TOKEN::"
      },
      {
        "name": "LOCATION_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/wms-service-backend/config:LOCATION_URL::"
      },
      {
        "name": "MASTER_CONFIG",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/wms-service-backend/config:MASTER_CONFIG::"
      },
      {
        "name": "MFG_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/wms-service-backend/config:MFG_API_KEY::"
      },
      {
        "name": "MFG_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/wms-service-backend/config:MFG_URL::"
      },
      {
        "name": "MYSQL_DB",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/wms-service-backend/config:MYSQL_DB::"
      },
      {
        "name": "PRIVATE_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/wms-service-backend/config:PRIVATE_KEY::"
      },
      {
        "name": "RAW_SALES_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/wms-service-backend/config:RAW_SALES_API_URL::"
      },
      {
        "name": "S3_BUCKET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/wms-service-backend/config:S3_BUCKET::"
      },
      {
        "name": "SALES_API_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/wms-service-backend/config:SALES_API_BASE_URL::"
      },
      {
        "name": "SALES_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/wms-service-backend/config:SALES_API_URL::"
      },
      {
        "name": "VITE_SALES_INTELLIGENCE_TASK_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/wms-service-backend/config:VITE_SALES_INTELLIGENCE_TASK_BASE_URL::"
      },
      {
        "name": "X_DATABASE_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/wms-service-backend/config:X_DATABASE_ID::"
      },
      {
        "name": "ZYLER_ERP_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/wms-service-backend/config:ZYLER_ERP_API::"
      },
      {
        "name": "DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config:host::"
      },
      {
        "name": "DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/wms-service-backend/config:username::"
      },
      {
        "name": "DB_PASS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/wms-service-backend/config:password::"
      },
      {
        "name": "DB_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config:port::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-wms-service-backend",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "wms-service-backend"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_wms_service_frontend_r67" {
  family                   = "development-wms-service-frontend"
  network_mode             = "awsvpc"
  cpu                      = "256"
  memory                   = "512"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "wms-service-frontend",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/wms-service-frontend:sha-8671dd3-37311246002",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "wms-service-frontend",
        "appProtocol": "http"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-wms-service-frontend",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "wms-service-frontend"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}
# --- cross-module & pinned-revision TDs ---


# --- pinned-revision TDs ---

resource "aws_ecs_task_definition" "development_buyersflow_website_r2" {
  family                   = "development-buyersflow-website"
  network_mode             = "awsvpc"
  cpu                      = "256"
  memory                   = "512"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "buyersflow-website",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/buyersflow-website:sha-f78e162",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "buyersflow-website",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "production"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-buyersflow-website",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "buyersflow-website"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}


resource "aws_ecs_task_definition" "development_ticketing_system_backend_r60" {
  family                   = "development-ticketing-system-backend"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "ticketing-system-backend",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/ticketing-system-backend:sha-af0fbd3",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp"
      }
    ],
    "secrets": [
      {
        "name": "NODE_ENV",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ticketing-system-backend/config-SMkrPi:NODE_ENV::"
      },
      {
        "name": "PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ticketing-system-backend/config-SMkrPi:PORT::"
      },
      {
        "name": "SSO_ENABLED",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ticketing-system-backend/config-SMkrPi:SSO_ENABLED::"
      },
      {
        "name": "FRONTEND_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ticketing-system-backend/config-SMkrPi:FRONTEND_URL::"
      },
      {
        "name": "ALLOWED_ORIGINS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ticketing-system-backend/config-SMkrPi:ALLOWED_ORIGINS::"
      },
      {
        "name": "COOKIE_SECURE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ticketing-system-backend/config-SMkrPi:COOKIE_SECURE::"
      },
      {
        "name": "COOKIE_SAMESITE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ticketing-system-backend/config-SMkrPi:COOKIE_SAMESITE::"
      },
      {
        "name": "DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ticketing-system-backend/config-SMkrPi:DB_HOST::"
      },
      {
        "name": "DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ticketing-system-backend/config-SMkrPi:DB_USER::"
      },
      {
        "name": "DB_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ticketing-system-backend/config-SMkrPi:DB_PASSWORD::"
      },
      {
        "name": "DB_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ticketing-system-backend/config-SMkrPi:DB_NAME::"
      },
      {
        "name": "SSO_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ticketing-system-backend/config-SMkrPi:SSO_BASE_URL::"
      },
      {
        "name": "SSO_DATABASE_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ticketing-system-backend/config-SMkrPi:SSO_DATABASE_ID::"
      },
      {
        "name": "SSO_DECRYPT_ENDPOINT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ticketing-system-backend/config-SMkrPi:SSO_DECRYPT_ENDPOINT::"
      },
      {
        "name": "S3_BUCKET_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ticketing-system-backend/config-SMkrPi:S3_BUCKET_NAME::"
      },
      {
        "name": "CF_DOMAIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ticketing-system-backend/config-SMkrPi:CF_DOMAIN::"
      },
      {
        "name": "CF_KEY_PAIR_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ticketing-system-backend/config-SMkrPi:CF_KEY_PAIR_ID::"
      },
      {
        "name": "CF_PRIVATE_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/ticketing-system-backend/config-SMkrPi:CF_PRIVATE_KEY::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-ticketing-system-backend",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "ecs"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}


resource "aws_ecs_task_definition" "kafka_connect_task_fixed_r6" {
  family                   = "kafka-connect-task-fixed"
  network_mode             = "awsvpc"
  cpu                      = "1024"
  memory                   = "2048"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = jsonencode([{
    name      = "kafka-connect"
    image     = "842676018479.dkr.ecr.us-east-2.amazonaws.com/kafka:connect-2.5"
    cpu       = 0
    memory    = 0
    essential = true
    portMappings = [{ containerPort = 8083, hostPort = 8083, protocol = "tcp" }]
    logConfiguration = {
      logDriver = "awslogs"
      options = {
        "awslogs-group"         = "/ecs/kafka-connect-task"
        "awslogs-region"        = "us-east-2"
        "awslogs-stream-prefix" = "ecs"
      }
    }
  }])
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "zookeeper_task_r3" {
  family                   = "zookeeper-task"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = jsonencode([{
    name      = "zookeeper"
    image     = "842676018479.dkr.ecr.us-east-2.amazonaws.com/kafka:zookeeper-2.5"
    cpu       = 0
    memory    = 0
    essential = true
    portMappings = [{ containerPort = 2181, hostPort = 2181, protocol = "tcp" }]
    logConfiguration = {
      logDriver = "awslogs"
      options = {
        "awslogs-group"         = "/ecs/zookeeper-task"
        "awslogs-region"        = "us-east-2"
        "awslogs-stream-prefix" = "ecs"
      }
    }
  }])
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "kafka_task_fixed_r3" {
  family                   = "kafka-task-fixed"
  network_mode             = "awsvpc"
  cpu                      = "1024"
  memory                   = "2048"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = jsonencode([{
    name      = "kafka"
    image     = "842676018479.dkr.ecr.us-east-2.amazonaws.com/kafka:2.5"
    cpu       = 0
    memory    = 0
    essential = true
    portMappings = [{ containerPort = 9092, hostPort = 9092, protocol = "tcp" }]
    logConfiguration = {
      logDriver = "awslogs"
      options = {
        "awslogs-group"         = "/ecs/kafka-task"
        "awslogs-region"        = "us-east-2"
        "awslogs-stream-prefix" = "ecs"
      }
    }
  }])
  lifecycle {
    ignore_changes = [container_definitions]
  }
}


resource "aws_ecs_task_definition" "clicklens_task_final_r4" {
  family                   = "clicklens-task-final"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "clicklens",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/clickhouse:clicklens",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 3000,
        "hostPort": 3000,
        "protocol": "tcp"
      }
    ],
    "environment": [
      {
        "name": "KAFKA_HOST",
        "value": "kafka.kafka.internal"
      },
      {
        "name": "LENS_USER",
        "value": "admin"
      },
      {
        "name": "KAFKA_BROKER",
        "value": "kafka.kafka.internal:9092"
      },
      {
        "name": "CLICKHOUSE_USER",
        "value": "admin"
      },
      {
        "name": "CLICKHOUSE_HOST",
        "value": "clickhouse.kafka.internal"
      },
      {
        "name": "CLICKHOUSE_PORT",
        "value": "8123"
      },
      {
        "name": "SESSION_SECRET",
        "value": "07a10ab3831e03726ac495e656234c98acbbc08b5fd784452dad94653c16f587"
      },
      {
        "name": "CLICKHOUSE_URL",
        "value": "http://clickhouse.kafka.internal:8123"
      },
      {
        "name": "NODE_ENV",
        "value": "production"
      },
      {
        "name": "DISABLE_SECURE_COOKIES",
        "value": "true"
      },
      {
        "name": "KAFKA_PORT",
        "value": "9092"
      },
      {
        "name": "CLICKHOUSE_DATABASE",
        "value": "default"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/clicklens-task",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "ecs"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "clickhouse_task_full_r2" {
  family                   = "clickhouse-task-full"
  network_mode             = "awsvpc"
  cpu                      = "2048"
  memory                   = "8192"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "clickhouse",
    "image": "clickhouse/clickhouse-server:latest",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8123,
        "hostPort": 8123,
        "protocol": "tcp"
      },
      {
        "containerPort": 9000,
        "hostPort": 9000,
        "protocol": "tcp"
      }
    ],
    "environment": [
      {
        "name": "CLICKHOUSE_USER",
        "value": "admin"
      },
      {
        "name": "CLICKHOUSE_DEFAULT_ACCESS_MANAGEMENT",
        "value": "1"
      },
      {
        "name": "CLICKHOUSE_PASSWORD",
        "value": "clickhouse123"
      },
      {
        "name": "CLICKHOUSE_DB",
        "value": "default"
      },
      {
        "name": "KAFKA_BROKERS",
        "value": "kafka.kafka.internal:9092"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/clickhouse-task",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "ecs"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "n8n_demo_task_r15" {
  family                   = "n8n-demo-task"
  network_mode             = "awsvpc"
  cpu                      = "4096"
  memory                   = "8192"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "n8n-demo",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/n8n-stable:fixed",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "n8n-demo-8080-tcp"
      }
    ],
    "environment": [
      {
        "name": "N8N_COMMUNITY_PACKAGES_ENABLED",
        "value": "true"
      },
      {
        "name": "WEBHOOK_URL",
        "value": "https://n8n.demodbi360.com/"
      },
      {
        "name": "DB_POSTGRESDB_SSL_ENABLED",
        "value": "true"
      },
      {
        "name": "DB_POSTGRESDB_SSL_REJECT_UNAUTHORIZED",
        "value": "false"
      },
      {
        "name": "DB_POSTGRESDB_SCHEMA",
        "value": "n8n_demo"
      },
      {
        "name": "DB_POSTGRESDB_PORT",
        "value": "5432"
      },
      {
        "name": "N8N_HOST",
        "value": "n8n.demodbi360.com"
      },
      {
        "name": "N8N_BLOCK_ENV_ACCESS_IN_NODE",
        "value": "false"
      },
      {
        "name": "N8N_PORT",
        "value": "8080"
      },
      {
        "name": "N8N_PROTOCOL",
        "value": "https"
      },
      {
        "name": "DB_POSTGRESDB_HOST",
        "value": "n8n-postgres-db.cwsjkiciisk1.us-east-2.rds.amazonaws.com"
      },
      {
        "name": "EXECUTIONS_TIMEOUT_MAX",
        "value": "7200"
      },
      {
        "name": "N8N_COMMUNITY_PACKAGES",
        "value": "n8n-nodes-pdfco,n8n-nodes-qdrant"
      },
      {
        "name": "NODE_FUNCTION_ALLOW_EXTERNAL",
        "value": "xlsx"
      },
      {
        "name": "DB_POSTGRESDB_USER",
        "value": "n8nuser"
      },
      {
        "name": "EXECUTIONS_DATA_MAX_AGE",
        "value": "336"
      },
      {
        "name": "N8N_RUNNERS_ENABLED",
        "value": "true"
      },
      {
        "name": "EXECUTIONS_DATA_PRUNE",
        "value": "true"
      },
      {
        "name": "N8N_ALLOWED_ENV_VARS",
        "value": "N8N_CUSTOM_API_KEY,HEX_KEY"
      },
      {
        "name": "N8N_BASIC_AUTH_ACTIVE",
        "value": "true"
      },
      {
        "name": "GENERIC_TIMEZONE",
        "value": "UTC"
      },
      {
        "name": "N8N_SECURE_COOKIE",
        "value": "false"
      },
      {
        "name": "DB_POSTGRESDB_DATABASE",
        "value": "n8ndb"
      },
      {
        "name": "N8N_LOG_LEVEL",
        "value": "warn"
      },
      {
        "name": "N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS",
        "value": "true"
      },
      {
        "name": "EXECUTIONS_DATA_SAVE_ON_SUCCESS",
        "value": "all"
      },
      {
        "name": "N8N_RELEASE_TYPE",
        "value": "stable"
      },
      {
        "name": "EXECUTIONS_TIMEOUT",
        "value": "3600"
      },
      {
        "name": "DB_TYPE",
        "value": "postgresdb"
      },
      {
        "name": "N8N_BASIC_AUTH_USER",
        "value": "admin"
      },
      {
        "name": "EXECUTIONS_DATA_SAVE_ON_ERROR",
        "value": "all"
      },
      {
        "name": "NODE_ENV",
        "value": "production"
      },
      {
        "name": "NODE_FUNCTION_ALLOW_BUILTIN",
        "value": "*"
      },
      {
        "name": "N8N_GIT_NODE_DISABLE_BARE_REPOS",
        "value": "true"
      },
      {
        "name": "N8N_COMMUNITY_PACKAGES_ALLOW_TOOL_USAGE",
        "value": "true"
      }
    ],
    "secrets": [
      {
        "name": "DB_POSTGRESDB_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/n8n/config-0cAE3m:DB_POSTGRESDB_PASSWORD::"
      },
      {
        "name": "HEX_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/n8n/config-0cAE3m:HEX_KEY::"
      },
      {
        "name": "N8N_BASIC_AUTH_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/n8n/config-0cAE3m:N8N_BASIC_AUTH_PASSWORD::"
      },
      {
        "name": "N8N_CUSTOM_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/n8n/config-0cAE3m:N8N_CUSTOM_API_KEY::"
      },
      {
        "name": "N8N_ENCRYPTION_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/n8n/config-0cAE3m:N8N_ENCRYPTION_KEY::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-n8n-demo",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "ecs"
      }
    },
    "mountPoints": [
      {
        "sourceVolume": "n8n-efs-storage",
        "containerPath": "/home/node/.n8n",
        "readOnly": false
      }
    ]
  }
]
CONTAINER_DEF
  volume {
    name = "n8n-efs-storage"

    efs_volume_configuration {
      file_system_id          = "fs-08799681b6d516506"
      root_directory          = "/"
      transit_encryption      = "ENABLED"
      transit_encryption_port = 0

      authorization_config {
        access_point_id = "fsap-04fff2edd7b398043"
        iam             = "DISABLED"
      }
    }
  }
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_aster_node_r391" {
  family                   = "development-aster-node"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "aster-node",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/aster-node@sha256:8574f160b16010033d6f5eaea2889a627f234ae36e2f6d20ad3e182444eaab18",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "aster-node",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "development"
      },
      {
        "name": "RUNTIME_ENVIRONMENT",
        "value": "development"
      }
    ],
    "secrets": [
      {
        "name": "ASTEREMAILID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:ASTEREMAILID::"
      },
      {
        "name": "ASTER_COMPANY_CERTIFICATE_ATTACHMENTS_FOLDER_AWS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:ASTER_COMPANY_CERTIFICATE_ATTACHMENTS_FOLDER_AWS::"
      },
      {
        "name": "ASTER_COMPANY_LOGO",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:ASTER_COMPANY_LOGO::"
      },
      {
        "name": "ASTER_COMPANY_LOGO_FOLDER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:ASTER_COMPANY_LOGO_FOLDER::"
      },
      {
        "name": "ASTER_EXISTING_USER_PERMISSION",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:ASTER_EXISTING_USER_PERMISSION::"
      },
      {
        "name": "ASTER_FACILITY_CERTIFICATE_ATTACHMENTS_FOLDER_AWS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:ASTER_FACILITY_CERTIFICATE_ATTACHMENTS_FOLDER_AWS::"
      },
      {
        "name": "ASTER_FORM_CERTIFICATE_ATTACHMENTS_FOLDER_AWS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:ASTER_FORM_CERTIFICATE_ATTACHMENTS_FOLDER_AWS::"
      },
      {
        "name": "ASTER_FORM_CERTIFICATE_ATTACHMENTS_TEMP_FOLDER_AWS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:ASTER_FORM_CERTIFICATE_ATTACHMENTS_TEMP_FOLDER_AWS::"
      },
      {
        "name": "ASTER_NEW_USER_PERMISSION",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:ASTER_NEW_USER_PERMISSION::"
      },
      {
        "name": "ASTER_PDF_HEADER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:ASTER_PDF_HEADER::"
      },
      {
        "name": "ASTER_PDF_STAMP",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:ASTER_PDF_STAMP::"
      },
      {
        "name": "ASTER_PDF_WATERMARK",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:ASTER_PDF_WATERMARK::"
      },
      {
        "name": "ASTER_PRODUCT_CERTIFICATE_ATTACHMENTS_FOLDER_AWS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:ASTER_PRODUCT_CERTIFICATE_ATTACHMENTS_FOLDER_AWS::"
      },
      {
        "name": "ASTER_REFERENCE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:ASTER_REFERENCE::"
      },
      {
        "name": "ASTER_REFERENCE_TEMP",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:ASTER_REFERENCE_TEMP::"
      },
      {
        "name": "ASTER_SENDEMAIl_STATUS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:ASTER_SENDEMAIl_STATUS::"
      },
      {
        "name": "ASTER_VERIFICATION_DOCUMENTS_FOLDER_AWS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:ASTER_VERIFICATION_DOCUMENTS_FOLDER_AWS::"
      },
      {
        "name": "AUTHSERVER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:AUTHSERVER::"
      },
      {
        "name": "AWS_REGION_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:AWS_REGION_NAME::"
      },
      {
        "name": "AWS_UPLOAD_ENV",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:AWS_UPLOAD_ENV::"
      },
      {
        "name": "BUCKET_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:BUCKET_NAME::"
      },
      {
        "name": "CLICKHOUSE_DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:CLICKHOUSE_DB_HOST::"
      },
      {
        "name": "CLICKHOUSE_DB_PASS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:CLICKHOUSE_DB_PASS::"
      },
      {
        "name": "CLICKHOUSE_DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:CLICKHOUSE_DB_USER::"
      },
      {
        "name": "CLICKHOUSE_MYSQL_DB",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:CLICKHOUSE_MYSQL_DB::"
      },
      {
        "name": "COA_COUNT_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:COA_COUNT_API::"
      },
      {
        "name": "COA_UNAPPROVE_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:COA_UNAPPROVE_API::"
      },
      {
        "name": "COUNTRY_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:COUNTRY_API::"
      },
      {
        "name": "GLOBAL_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:GLOBAL_API::"
      },
      {
        "name": "ENCRYPT_HEX_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-hex-key/config:ENCRYPT_HEX_KEY::"
      },
      {
        "name": "KPIDATABASE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:KPIDATABASE::"
      },
      {
        "name": "MYSQL_DB",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:MYSQL_DB::"
      },
      {
        "name": "NDA_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:NDA_API::"
      },
      {
        "name": "N8N_EMAIL_WEBHOOK_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:N8N_EMAIL_WEBHOOK_URL::"
      },
      {
        "name": "WORLD_MYSQL_DB",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:WORLD_MYSQL_DB::"
      },
      {
        "name": "X_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:X_API_KEY::"
      },
      {
        "name": "ENTITY_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:ENTITY_URL::"
      },
      {
        "name": "KPI_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:KPI_API::"
      },
      {
        "name": "GRAPH_CLIENT_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:GRAPH_CLIENT_ID::"
      },
      {
        "name": "GRAPH_CLIENT_SECRETE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:GRAPH_CLIENT_SECRETE::"
      },
      {
        "name": "SALES_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:SALES_API::"
      },
      {
        "name": "GRAPH_TENANT_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:GRAPH_TENANT_ID::"
      },
      {
        "name": "GRAPH_REDIRECT_URI",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:GRAPH_REDIRECT_URI::"
      },
      {
        "name": "FRONTEND_APP_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:FRONTEND_APP_URL::"
      },
      {
        "name": "stripe_api_key",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:stripe_api_key::"
      },
      {
        "name": "stripe_publishable_key",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:stripe_publishable_key::"
      },
      {
        "name": "stripe_currency",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:stripe_currency::"
      },
      {
        "name": "stripe_webhook_key",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:stripe_webhook_key::"
      },
      {
        "name": "VALIDTO_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:VALIDTO_API_KEY::"
      },
      {
        "name": "DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config:host::"
      },
      {
        "name": "DB_PASS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:password::"
      },
      {
        "name": "DB_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config:port::"
      },
      {
        "name": "DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:username::"
      },
      {
        "name": "WORLD_DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config:host::"
      },
      {
        "name": "WORLD_DB_PASS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config:password::"
      },
      {
        "name": "WORLD_DB_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config:port::"
      },
      {
        "name": "WORLD_DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config:username::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-aster-node",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "aster-node"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_asterdocs_frontend_r451" {
  family                   = "development-asterdocs-frontend"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "asterdocs-frontend",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/asterdocs-frontend@sha256:7376ccb9af71a59d8489cde86697857737dfb0d5148d3d789ac4b93343244b39",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "asterdocs-frontend",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "development"
      },
      {
        "name": "RUNTIME_ENVIRONMENT",
        "value": "development"
      }
    ],
    "secrets": [
      {
        "name": "VITE_API_TOKEN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_API_TOKEN::"
      },
      {
        "name": "VITE_ASTER_BACKEND_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_ASTER_BACKEND_URL::"
      },
      {
        "name": "VITE_ASTER_BACKEND_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_ASTER_BACKEND_API_URL::"
      },
      {
        "name": "VITE_ASTER_DOMAIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_ASTER_DOMAIN::"
      },
      {
        "name": "VITE_AUTH_PRODUCT_CODE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_AUTH_PRODUCT_CODE::"
      },
      {
        "name": "VITE_BASE_DOMAIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_BASE_DOMAIN::"
      },
      {
        "name": "VITE_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_BASE_URL::"
      },
      {
        "name": "VITE_CHECK_PRODUCT_EXIST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_CHECK_PRODUCT_EXIST::"
      },
      {
        "name": "VITE_COMPARE_FILES",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_COMPARE_FILES::"
      },
      {
        "name": "VITE_COUNTRY_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_COUNTRY_API_KEY::"
      },
      {
        "name": "VITE_EXTRACT_SPEC",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_EXTRACT_SPEC::"
      },
      {
        "name": "VITE_FIND_SUPPLIERS_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_FIND_SUPPLIERS_API_URL::"
      },
      {
        "name": "VITE_GET_PRODUCT_LIST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_GET_PRODUCT_LIST::"
      },
      {
        "name": "VITE_INVENTORY_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_INVENTORY_URL::"
      },
      {
        "name": "VITE_LOCATION_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_LOCATION_API::"
      },
      {
        "name": "VITE_N8N_WEBHOOK_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_N8N_WEBHOOK_BASE_URL::"
      },
      {
        "name": "VITE_SALES_BACKEND_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_SALES_BACKEND_API::"
      },
      {
        "name": "VITE_TASK_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_TASK_URL::"
      },
      {
        "name": "VITE_USER_M_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_USER_M_URL::"
      },
      {
        "name": "VITE_VERIFY_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_VERIFY_API_URL::"
      },
      {
        "name": "VITE_WITHOUT_TEMPLATE_COA",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_WITHOUT_TEMPLATE_COA::"
      },
      {
        "name": "VITE_MASTERCONFIG_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_MASTERCONFIG_API_URL::"
      },
      {
        "name": "VITE_GLOBALAPI_MASTERTABLES_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_GLOBALAPI_MASTERTABLES_URL::"
      },
      {
        "name": "VITE_ADMIN_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_ADMIN_BASE_URL::"
      },
      {
        "name": "VITE_ADMIN_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_ADMIN_URL::"
      },
      {
        "name": "VITE_ASTER_ADMIN_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_ASTER_ADMIN_URL::"
      },
      {
        "name": "VITE_AWS_UPLOAD_ENV",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_AWS_UPLOAD_ENV::"
      },
      {
        "name": "VITE_ENTITY_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_ENTITY_API_URL::"
      },
      {
        "name": "VITE_GLOBALAPI_COUNTRIES_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_GLOBALAPI_COUNTRIES_URL::"
      },
      {
        "name": "VITE_IMAGE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_IMAGE_URL::"
      },
      {
        "name": "VITE_MASTER_PRODUCT_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_MASTER_PRODUCT_API::"
      },
      {
        "name": "VITE_MASTERPRODUCT_IMAGE_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_MASTERPRODUCT_IMAGE_BASE_URL::"
      },
      {
        "name": "VITE_PERMISSION_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_PERMISSION_URL::"
      },
      {
        "name": "VITE_PURCHASE_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_PURCHASE_API_URL::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-asterdocs-frontend",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "asterdocs-frontend"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_authserver_backend_r252" {
  family                   = "development-authserver-backend"
  network_mode             = "awsvpc"
  cpu                      = "1024"
  memory                   = "2048"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "authserver-backend",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/authserver-backend@sha256:4e83ca83a57d9cb568a255fffc81ea4d2697b36f2ec30bef81bb1bca879626f0",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "authserver-backend",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "OTEL_SERVICE_NAME",
        "value": "SSO"
      },
      {
        "name": "OTEL_EXPORTER_OTLP_PROTOCOL",
        "value": "http/protobuf"
      },
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "OTEL_PYTHON_DJANGO_MIDDLEWARE_POSITION",
        "value": "1"
      },
      {
        "name": "RUNTIME_ENVIRONMENT",
        "value": "development"
      },
      {
        "name": "OTEL_ENABLED",
        "value": "True"
      },
      {
        "name": "OTEL_DEPLOYMENT_ENV",
        "value": "development"
      },
      {
        "name": "OTEL_EXPORTER_OTLP_ENDPOINT",
        "value": "http://apimonitor.dbi360.com:4318"
      }
    ],
    "secrets": [
      {
        "name": "ALLOWED_API_DOMAINS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:ALLOWED_API_DOMAINS::"
      },
      {
        "name": "AWS_STORAGE_BUCKET_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:AWS_STORAGE_BUCKET_NAME::"
      },
      {
        "name": "DJANGO_ALLOWED_HOSTS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:DJANGO_ALLOWED_HOSTS::"
      },
      {
        "name": "DJANGO_DEBUG",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:DJANGO_DEBUG::"
      },
      {
        "name": "DJANGO_SECRET_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:DJANGO_SECRET_KEY::"
      },
      {
        "name": "DJANGO_SETTINGS_MODULE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:DJANGO_SETTINGS_MODULE::"
      },
      {
        "name": "ECOMM_SECRET_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:ECOMM_SECRET_KEY::"
      },
      {
        "name": "EMAIL_FROM",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:EMAIL_FROM::"
      },
      {
        "name": "EMAIL_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:EMAIL_HOST::"
      },
      {
        "name": "EMAIL_HOST_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:EMAIL_HOST_PASSWORD::"
      },
      {
        "name": "EMAIL_HOST_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:EMAIL_HOST_USER::"
      },
      {
        "name": "EMAIL_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:EMAIL_PORT::"
      },
      {
        "name": "EMAIL_USE_TLS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:EMAIL_USE_TLS::"
      },
      {
        "name": "ENCRYPT_HEX_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-hex-key/config:ENCRYPT_HEX_KEY::"
      },
      {
        "name": "FRONTEND_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:FRONTEND_URL::"
      },
      {
        "name": "GOOGLE_OIDC_CLIENT_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:GOOGLE_OIDC_CLIENT_ID::"
      },
      {
        "name": "GOOGLE_OIDC_CLIENT_SECRET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:GOOGLE_OIDC_CLIENT_SECRET::"
      },
      {
        "name": "GOOGLE_OIDC_REDIRECT_URI",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:GOOGLE_OIDC_REDIRECT_URI::"
      },
      {
        "name": "GRAPH_MAIL_WEBHOOK_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:GRAPH_MAIL_WEBHOOK_URL::"
      },
      {
        "name": "MICROSOFT_OIDC_CLIENT_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:MICROSOFT_OIDC_CLIENT_ID::"
      },
      {
        "name": "MICROSOFT_OIDC_CLIENT_SECRET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:MICROSOFT_OIDC_CLIENT_SECRET::"
      },
      {
        "name": "MICROSOFT_OIDC_REDIRECT_URI",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:MICROSOFT_OIDC_REDIRECT_URI::"
      },
      {
        "name": "MONGO_CLIENT_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:MONGO_CLIENT_HOST::"
      },
      {
        "name": "MONGO_DB_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:MONGO_DB_NAME::"
      },
      {
        "name": "MYSQL_AUTH_DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config:host::"
      },
      {
        "name": "MYSQL_AUTH_DB_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:MYSQL_AUTH_DB_NAME::"
      },
      {
        "name": "MYSQL_AUTH_DB_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:password::"
      },
      {
        "name": "MYSQL_AUTH_DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:username::"
      },
      {
        "name": "MYSQL_DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config:host::"
      },
      {
        "name": "MYSQL_DB_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:MYSQL_DB_NAME::"
      },
      {
        "name": "MYSQL_DB_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:password::"
      },
      {
        "name": "MYSQL_DB_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config:port::"
      },
      {
        "name": "MYSQL_DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:username::"
      },
      {
        "name": "MYSQL_HRMS_DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config:host::"
      },
      {
        "name": "MYSQL_HRMS_DB_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:MYSQL_HRMS_DB_NAME::"
      },
      {
        "name": "MYSQL_HRMS_DB_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:password::"
      },
      {
        "name": "MYSQL_HRMS_DB_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config:port::"
      },
      {
        "name": "MYSQL_HRMS_DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:username::"
      },
      {
        "name": "MYSQL_ZYLER_DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config:host::"
      },
      {
        "name": "MYSQL_ZYLER_DB_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:MYSQL_ZYLER_DB_NAME::"
      },
      {
        "name": "MYSQL_ZYLER_DB_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:password::"
      },
      {
        "name": "MYSQL_ZYLER_DB_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config:port::"
      },
      {
        "name": "MYSQL_ZYLER_DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:username::"
      },
      {
        "name": "NEXT_CLICKHOUSE_DATABASE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:NEXT_CLICKHOUSE_DATABASE::"
      },
      {
        "name": "NEXT_CLICKHOUSE_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:NEXT_CLICKHOUSE_HOST::"
      },
      {
        "name": "NEXT_CLICKHOUSE_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:NEXT_CLICKHOUSE_PASSWORD::"
      },
      {
        "name": "NEXT_CLICKHOUSE_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:NEXT_CLICKHOUSE_USER::"
      },
      {
        "name": "WORK_FLOW_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:WORK_FLOW_URL::"
      },
      {
        "name": "SERVICE_TOKEN_TTL_SECONDS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:SERVICE_TOKEN_TTL_SECONDS::"
      },
      {
        "name": "INTERNAL_SERVICE_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-backend/config:INTERNAL_SERVICE_API_KEY::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-authserver-backend",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "authserver-backend"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_authserver_frontend_r107" {
  family                   = "development-authserver-frontend"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "authserver-frontend",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/authserver-frontend@sha256:2aa924b1eb0a68cab51059343a4adf19b33a55d4a39d5305e1f21c872d005953",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "authserver-frontend",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "development"
      },
      {
        "name": "RUNTIME_ENVIRONMENT",
        "value": "development"
      }
    ],
    "secrets": [
      {
        "name": "VITE_APP_RUNNER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_APP_RUNNER::"
      },
      {
        "name": "VITE_CLOUDFRONT_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_CLOUDFRONT_URL::"
      },
      {
        "name": "VITE_COOKIE_DOMAIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_COOKIE_DOMAIN::"
      },
      {
        "name": "VITE_COOKIE_SAME_SITE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_COOKIE_SAME_SITE::"
      },
      {
        "name": "VITE_COOKIE_SECURE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_COOKIE_SECURE::"
      },
      {
        "name": "VITE_DEFAULT_COOKIE_DOMAIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_DEFAULT_COOKIE_DOMAIN::"
      },
      {
        "name": "VITE_DOMAIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_DOMAIN::"
      },
      {
        "name": "VITE_ETL_API_AUTH_TOKEN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_ETL_API_AUTH_TOKEN::"
      },
      {
        "name": "VITE_ETL_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_ETL_API_URL::"
      },
      {
        "name": "VITE_FINANCE_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_FINANCE_API::"
      },
      {
        "name": "VITE_ASTER_API_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_ASTER_API_BASE_URL::"
      },
      {
        "name": "VITE_GLOBAL_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_GLOBAL_API::"
      },
      {
        "name": "VITE_GOOGLE_MAPS_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_GOOGLE_MAPS_API_KEY::"
      },
      {
        "name": "VITE_HRMS_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_HRMS_API::"
      },
      {
        "name": "VITE_INVENTORY_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_INVENTORY_API::"
      },
      {
        "name": "VITE_MASTER_CONFIG_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_MASTER_CONFIG_URL::"
      },
      {
        "name": "VITE_MASTER_PRODUCT_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_MASTER_PRODUCT_URL::"
      },
      {
        "name": "VITE_MICROSOFT_SSO_ENABLED",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_MICROSOFT_SSO_ENABLED::"
      },
      {
        "name": "VITE_NEXUS_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_NEXUS_API_URL::"
      },
      {
        "name": "VITE_PERMISSION_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_PERMISSION_KEY::"
      },
      {
        "name": "VITE_PERMISSION_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_PERMISSION_URL::"
      },
      {
        "name": "VITE_PRODUCT_CODE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_PRODUCT_CODE::"
      },
      {
        "name": "VITE_PRODUCT_URL_1",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_PRODUCT_URL_1::"
      },
      {
        "name": "VITE_PRODUCT_URL_10",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_PRODUCT_URL_10::"
      },
      {
        "name": "VITE_PRODUCT_URL_12",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_PRODUCT_URL_12::"
      },
      {
        "name": "VITE_PRODUCT_URL_16",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_PRODUCT_URL_16::"
      },
      {
        "name": "VITE_PRODUCT_URL_3",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_PRODUCT_URL_3::"
      },
      {
        "name": "VITE_PRODUCT_URL_33",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_PRODUCT_URL_33::"
      },
      {
        "name": "VITE_PURCHSE_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_PURCHSE_API::"
      },
      {
        "name": "VITE_SALES_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_SALES_API::"
      },
      {
        "name": "VITE_SOURCING_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_SOURCING_API::"
      },
      {
        "name": "VITE_SUPPLIERS_DISCOVERY_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_SUPPLIERS_DISCOVERY_API::"
      },
      {
        "name": "VITE_SUPPLIER_API_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_SUPPLIER_API_BASE_URL::"
      },
      {
        "name": "VITE_VMI_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_VMI_API_URL::"
      },
      {
        "name": "VITE_VMI_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-frontend/config:VITE_VMI_URL::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-authserver-frontend",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "authserver-frontend"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_dbi_chat_area_r219" {
  family                   = "development-dbi-chat-area"
  network_mode             = "awsvpc"
  cpu                      = "1024"
  memory                   = "2048"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "dbi-chat-area",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/dbi-chat-area:sha-2998302-37883914916",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "dbi-chat-area",
        "appProtocol": "http"
      }
    ],
    "secrets": [
      {
        "name": "VITE_SOCKET_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/dbi-chat-area/config:VITE_SOCKET_URL::"
      },
      {
        "name": "VITE_NOTIFICATION_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/dbi-chat-area/config:VITE_NOTIFICATION_API_URL::"
      },
      {
        "name": "VITE_GLOBAL_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/dbi-chat-area/config:VITE_GLOBAL_URL::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-dbi-chat-area",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "dbi-chat-area"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}


resource "aws_ecs_task_definition" "development_findsuppliers_frontend_r271" {
  family                   = "development-findsuppliers-frontend"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "256"
  memory                   = "512"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  container_definitions    = jsonencode([
    {
        "name": "findsuppliers-frontend",
        "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/findsuppliers-frontend@sha256:2d311c8e935a5de32aad299dd1bc5fe634f763450151fd8930e481d41ad9a37a",
        "cpu": 0,
        "portMappings": [
            {
                "containerPort": 8080,
                "hostPort": 8080,
                "protocol": "tcp",
                "name": "findsuppliers-frontend",
                "appProtocol": "http"
            }
        ],
        "essential": true,
        "environment": [
            {
                "name": "PORT",
                "value": "8080"
            },
            {
                "name": "NODE_ENV",
                "value": "production"
            },
            {
                "name": "RUNTIME_ENVIRONMENT",
                "value": "development"
            }
        ],
        "mountPoints": [],
        "volumesFrom": [],
        "secrets": [
            {
                "name": "VITE_API_APP_URL",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-frontend/config:VITE_API_APP_URL::"
            },
            {
                "name": "VITE_API_GLOBAL_URL",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-frontend/config:VITE_API_GLOBAL_URL::"
            },
            {
                "name": "VITE_APP_URL",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-frontend/config:VITE_APP_URL::"
            },
            {
                "name": "VITE_ASTER_VERIFICATION_API",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-frontend/config:VITE_ASTER_VERIFICATION_API::"
            },
            {
                "name": "VITE_BUYERSFLOW_API_BASE_URL",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-frontend/config:VITE_BUYERSFLOW_API_BASE_URL::"
            },
            {
                "name": "VITE_DATABASE_ID",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-frontend/config:VITE_DATABASE_ID::"
            },
            {
                "name": "VITE_DOMAIN",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-frontend/config:VITE_DOMAIN::"
            },
            {
                "name": "VITE_ENTITY_URL",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-frontend/config:VITE_ENTITY_URL::"
            },
            {
                "name": "VITE_FIND_SUPPLIERS_WEBSITE",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-frontend/config:VITE_FIND_SUPPLIERS_WEBSITE::"
            },
            {
                "name": "VITE_FIRE_BASE_MESSAGE_COLLECTION",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-frontend/config:VITE_FIRE_BASE_MESSAGE_COLLECTION::"
            },
            {
                "name": "VITE_FIRE_BASE_USERLOGIN_COLLECTION",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-frontend/config:VITE_FIRE_BASE_USERLOGIN_COLLECTION::"
            },
            {
                "name": "VITE_MARKETING_API_BASE_URL",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-frontend/config:VITE_MARKETING_API_BASE_URL::"
            },
            {
                "name": "VITE_MASTER_CONFIG_API_URL",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-frontend/config:VITE_MASTER_CONFIG_API_URL::"
            },
            {
                "name": "VITE_AUTH_PRODUCT_CODE",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-frontend/config:VITE_AUTH_PRODUCT_CODE::"
            },
            {
                "name": "VITE_PURCHASE_API_BASE_URL",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-frontend/config:VITE_PURCHASE_API_BASE_URL::"
            },
            {
                "name": "VITE_SALES_API_URL",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-frontend/config:VITE_SALES_API_URL::"
            },
            {
                "name": "VITE_SALES_INTELLIGENCE_BASE_URL",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-frontend/config:VITE_SALES_INTELLIGENCE_BASE_URL::"
            },
            {
                "name": "VITE_SOURCING_API_BASE_URL",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-frontend/config:VITE_SOURCING_API_BASE_URL::"
            },
            {
                "name": "VITE_SUPABASE_EMAIL_DOMAIN",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-frontend/config:VITE_SUPABASE_EMAIL_DOMAIN::"
            },
            {
                "name": "VITE_SUPABASE_KEY",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-frontend/config:VITE_SUPABASE_KEY::"
            },
            {
                "name": "VITE_SUPABASE_URL",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-frontend/config:VITE_SUPABASE_URL::"
            },
            {
                "name": "VITE_SUPPLIER_QUALIFICATION_BASE_URL",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-frontend/config:VITE_SUPPLIER_QUALIFICATION_BASE_URL::"
            },
            {
                "name": "VITE_TASK_MANAGEMENT_BASE_URL",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-frontend/config:VITE_TASK_MANAGEMENT_BASE_URL::"
            },
            {
                "name": "VITE_N8N_NOTIFICATION_URL",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-frontend/config:VITE_N8N_NOTIFICATION_URL::"
            }
        ],
        "user": "1001",
        "logConfiguration": {
            "logDriver": "awslogs",
            "options": {
                "awslogs-group": "/ecs/development-findsuppliers-frontend",
                "awslogs-region": "us-east-2",
                "awslogs-stream-prefix": "findsuppliers-frontend"
            }
        },
        "healthCheck": {
            "command": [
                "CMD-SHELL",
                "wget -qO- http://localhost:8080/health >/dev/null 2>&1 || curl -fsS http://localhost:8080/health >/dev/null 2>&1 || python3 -c \"import urllib.request; urllib.request.urlopen('http://localhost:8080/health', timeout=4)\" >/dev/null 2>&1 || exit 1"
            ],
            "interval": 15,
            "timeout": 5,
            "retries": 3,
            "startPeriod": 60
        },
        "systemControls": []
    }
])
}

resource "aws_ecs_task_definition" "development_master_configuration_backend_r63" {
  family                   = "development-master-configuration-backend"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "master-configuration-backend",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/master-configuration-backend:sha-f12ad6b-37596105222",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "master-configuration-backend",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "development"
      }
    ],
    "secrets": [
      {
        "name": "APP_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-configuration-backend/config-MKZ8MM:APP_PORT::"
      },
      {
        "name": "AWS_BUCKET_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-configuration-backend/config-MKZ8MM:AWS_BUCKET_NAME::"
      },
      {
        "name": "AWS_REGION",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-configuration-backend/config-MKZ8MM:AWS_REGION::"
      },
      {
        "name": "CLUSTER_FOUR_MONGODB_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-configuration-backend/config-MKZ8MM:CLUSTER_FOUR_MONGODB_URL::"
      },
      {
        "name": "CORS_ORIGIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-configuration-backend/config-MKZ8MM:CORS_ORIGIN::"
      },
      {
        "name": "CREATE_CUSTOMER_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-configuration-backend/config-MKZ8MM:CREATE_CUSTOMER_API::"
      },
      {
        "name": "CRON_JOB_EMAIL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-configuration-backend/config-MKZ8MM:CRON_JOB_EMAIL::"
      },
      {
        "name": "CRON_JOB_PWD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-configuration-backend/config-MKZ8MM:CRON_JOB_PWD::"
      },
      {
        "name": "CRON_PROTECTED_EMAIL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-configuration-backend/config-MKZ8MM:CRON_PROTECTED_EMAIL::"
      },
      {
        "name": "CUSTOMER_ADMIN_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-configuration-backend/config-MKZ8MM:CUSTOMER_ADMIN_API::"
      },
      {
        "name": "DBI360_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-configuration-backend/config-MKZ8MM:DBI360_API_URL::"
      },
      {
        "name": "DB_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-configuration-backend/config-MKZ8MM:DB_PORT::"
      },
      {
        "name": "DECRYPT_TOKEN_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-configuration-backend/config-MKZ8MM:DECRYPT_TOKEN_API::"
      },
      {
        "name": "DEFAULT_DB_POLL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-configuration-backend/config-MKZ8MM:DEFAULT_DB_POLL::"
      },
      {
        "name": "DEV_AUTH_SERVER_MYSQL_DB",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-configuration-backend/config-MKZ8MM:DEV_AUTH_SERVER_MYSQL_DB::"
      },
      {
        "name": "DEV_SSO_MYSQL_DB",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-configuration-backend/config-MKZ8MM:DEV_SSO_MYSQL_DB::"
      },
      {
        "name": "ENCRYPTION_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-configuration-backend/config-MKZ8MM:ENCRYPTION_KEY::"
      },
      {
        "name": "ENCRYPT_HEX_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-hex-key/config-BGrEHQ:ENCRYPT_HEX_KEY::"
      },
      {
        "name": "FETCH_LOCATIONS_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-configuration-backend/config-MKZ8MM:FETCH_LOCATIONS_API_KEY::"
      },
      {
        "name": "FETCH_LOCATIONS_AWS_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-configuration-backend/config-MKZ8MM:FETCH_LOCATIONS_AWS_KEY::"
      },
      {
        "name": "FETCH_LOCATIONS_AWS_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-configuration-backend/config-MKZ8MM:FETCH_LOCATIONS_AWS_URL::"
      },
      {
        "name": "GJCA_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-configuration-backend/config-MKZ8MM:GJCA_API_KEY::"
      },
      {
        "name": "GJ_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-configuration-backend/config-MKZ8MM:GJ_API_KEY::"
      },
      {
        "name": "LOGIN_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-configuration-backend/config-MKZ8MM:LOGIN_API::"
      },
      {
        "name": "NEXUS_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-configuration-backend/config-MKZ8MM:NEXUS_API::"
      },
      {
        "name": "PRIVATE_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-configuration-backend/config-MKZ8MM:PRIVATE_KEY::"
      },
      {
        "name": "RELEVANCE_API_TOKEN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-configuration-backend/config-MKZ8MM:RELEVANCE_API_TOKEN::"
      },
      {
        "name": "SESSION_SECRET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-configuration-backend/config-MKZ8MM:SESSION_SECRET::"
      },
      {
        "name": "SSO_PRIVATE_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-configuration-backend/config-MKZ8MM:SSO_PRIVATE_KEY::"
      },
      {
        "name": "X_DATABASE_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-configuration-backend/config-MKZ8MM:X_DATABASE_ID::"
      },
      {
        "name": "DEV_AUTH_SERVER_DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:host::"
      },
      {
        "name": "DEV_AUTH_SERVER_DB_PASS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-configuration-backend/config-MKZ8MM:password::"
      },
      {
        "name": "DEV_AUTH_SERVER_DB_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:port::"
      },
      {
        "name": "DEV_AUTH_SERVER_DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-configuration-backend/config-MKZ8MM:username::"
      },
      {
        "name": "DEV_SSO_DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:host::"
      },
      {
        "name": "DEV_SSO_DB_PASS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-configuration-backend/config-MKZ8MM:password::"
      },
      {
        "name": "DEV_SSO_DB_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:port::"
      },
      {
        "name": "DEV_SSO_DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/master-configuration-backend/config-MKZ8MM:username::"
      },
      {
        "name": "RDS_CA_CERT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:RDS_CA_CERT::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-master-configuration-backend",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "master-configuration-backend"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_nexus_react_frontend_r40" {
  family                   = "development-nexus-react-frontend"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "nexus-react-frontend",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/nexus-react-frontend:sha-d67a09b-37733767459",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "nexus-react-frontend",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "development"
      }
    ],
    "secrets": [
      {
        "name": "VITE_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-react-frontend/config-6bo4pI:VITE_API_URL::"
      },
      {
        "name": "VITE_AWS_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-react-frontend/config-6bo4pI:VITE_AWS_API_URL::"
      },
      {
        "name": "VITE_CLOUDFRONT_DOMAIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-react-frontend/config-6bo4pI:VITE_CLOUDFRONT_DOMAIN::"
      },
      {
        "name": "VITE_COOKIE_DOMAIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-react-frontend/config-6bo4pI:VITE_COOKIE_DOMAIN::"
      },
      {
        "name": "VITE_DECRYPT_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-react-frontend/config-6bo4pI:VITE_DECRYPT_API::"
      },
      {
        "name": "VITE_GLOBAL_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-react-frontend/config-6bo4pI:VITE_GLOBAL_API_URL::"
      },
      {
        "name": "VITE_MAIN_LOGIN_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-react-frontend/config-6bo4pI:VITE_MAIN_LOGIN_URL::"
      },
      {
        "name": "VITE_PEOPLE_FINDER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-react-frontend/config-6bo4pI:VITE_PEOPLE_FINDER::"
      },
      {
        "name": "VITE_PERMISSION_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-react-frontend/config-6bo4pI:VITE_PERMISSION_KEY::"
      },
      {
        "name": "VITE_PERMISSION_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-react-frontend/config-6bo4pI:VITE_PERMISSION_URL::"
      },
      {
        "name": "VITE_PRODUCT_CODE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-react-frontend/config-6bo4pI:VITE_PRODUCT_CODE::"
      },
      {
        "name": "VITE_PUBLIC_COMPANY_RESEARCH_SOCKET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-react-frontend/config-6bo4pI:VITE_PUBLIC_COMPANY_RESEARCH_SOCKET::"
      },
      {
        "name": "VITE_REDIRECT_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-react-frontend/config-6bo4pI:VITE_REDIRECT_URL::"
      },
      {
        "name": "VITE_REGISTER_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-react-frontend/config-6bo4pI:VITE_REGISTER_URL::"
      },
      {
        "name": "VITE_TOKEN_VERIFY_ENDPOINT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-react-frontend/config-6bo4pI:VITE_TOKEN_VERIFY_ENDPOINT::"
      },
      {
        "name": "VITE_X_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-react-frontend/config-6bo4pI:VITE_X_API_KEY::"
      },
      {
        "name": "VITE_AI_API_BASE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-react-frontend/config-6bo4pI:VITE_AI_API_BASE::"
      },
      {
        "name": "VITE_AI_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-react-frontend/config-6bo4pI:VITE_AI_API_KEY::"
      },
      {
        "name": "VITE_CARTO_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-react-frontend/config-6bo4pI:VITE_CARTO_API_KEY::"
      },
      {
        "name": "VITE_TRADE_GURU_APP_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/nexus-react-frontend/config-6bo4pI:VITE_TRADE_GURU_APP_URL::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-nexus-react-frontend",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "nexus-react-frontend"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_sales_service_backend_r481" {
  family                   = "development-sales-service-backend"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "sales-service-backend",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/sales-service-backend:sha-b63bed4-37766779313",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "sales-service-backend",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "production"
      },
      {
        "name": "REDIS_URL",
        "value": "redis://127.0.0.1:6379"
      }
    ],
    "secrets": [
      {
        "name": "ALLOWED_ORIGINS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:ALLOWED_ORIGINS::"
      },
      {
        "name": "APP_CONFIG",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:APP_CONFIG::"
      },
      {
        "name": "ASTER_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:ASTER_API::"
      },
      {
        "name": "ASTER_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:ASTER_BASE_URL::"
      },
      {
        "name": "AWS_BUCKET_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:AWS_BUCKET_NAME::"
      },
      {
        "name": "AWS_REGION",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:AWS_REGION::"
      },
      {
        "name": "B2BADMIN_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:B2BADMIN_API_KEY::"
      },
      {
        "name": "B2BADMIN_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:B2BADMIN_API_URL::"
      },
      {
        "name": "CLICKHOUSE_CONFIG",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:CLICKHOUSE_CONFIG::"
      },
      {
        "name": "CURRENCY_EXCHANGE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:CURRENCY_EXCHANGE::"
      },
      {
        "name": "DOCUMENT_ANALYZER_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:DOCUMENT_ANALYZER_KEY::"
      },
      {
        "name": "DOMAIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:DOMAIN::"
      },
      {
        "name": "FEDEX_CLIENT_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:FEDEX_CLIENT_KEY::"
      },
      {
        "name": "FEDEX_SECRET_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:FEDEX_SECRET_KEY::"
      },
      {
        "name": "FINANCE_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:FINANCE_API::"
      },
      {
        "name": "FINDSUPPLIER_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:FINDSUPPLIER_API::"
      },
      {
        "name": "GLOBAL_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:GLOBAL_API::"
      },
      {
        "name": "GLOBAL_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:GLOBAL_API_KEY::"
      },
      {
        "name": "HEX_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-hex-key/config-BGrEHQ:ENCRYPT_HEX_KEY::"
      },
      {
        "name": "HRMS_MYSQL_DB",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:HRMS_MYSQL_DB::"
      },
      {
        "name": "MASTER_CONFIG_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:MASTER_CONFIG_API::"
      },
      {
        "name": "MONGODB_URI",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:MONGODB_URI::"
      },
      {
        "name": "MYSQL_DB",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:MYSQL_DB::"
      },
      {
        "name": "N8N_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:N8N_PASSWORD::"
      },
      {
        "name": "N8N_USERNAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:N8N_USERNAME::"
      },
      {
        "name": "OPENAI_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:OPENAI_API_KEY::"
      },
      {
        "name": "ORIGIN_RFERER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:ORIGIN_RFERER::"
      },
      {
        "name": "PERMISSION_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:PERMISSION_API_URL::"
      },
      {
        "name": "PERMISSION_PRODUCT_CODE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:PERMISSION_PRODUCT_CODE::"
      },
      {
        "name": "POWERBI_CLIENT_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:POWERBI_CLIENT_ID::"
      },
      {
        "name": "POWERBI_CLIENT_SECRET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:POWERBI_CLIENT_SECRET::"
      },
      {
        "name": "POWERBI_TENANT_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:POWERBI_TENANT_ID::"
      },
      {
        "name": "PURCHASE_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:PURCHASE_API::"
      },
      {
        "name": "SALES_MODULE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:SALES_MODULE_URL::"
      },
      {
        "name": "SMPMAILWEBHOOK",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:SMPMAILWEBHOOK::"
      },
      {
        "name": "SOCKET_ORIGIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:SOCKET_ORIGIN::"
      },
      {
        "name": "UNIT_OF_MEASUREMENT_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:UNIT_OF_MEASUREMENT_API::"
      },
      {
        "name": "UPS_PASSWORD_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:UPS_PASSWORD_KEY::"
      },
      {
        "name": "UPS_USER_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:UPS_USER_KEY::"
      },
      {
        "name": "VITE_FINANCE_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:VITE_FINANCE_API_URL::"
      },
      {
        "name": "VMI_API_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:VMI_API_BASE_URL::"
      },
      {
        "name": "WMS_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:WMS_API::"
      },
      {
        "name": "X_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:X_API_KEY::"
      },
      {
        "name": "DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config:host::"
      },
      {
        "name": "DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:MYSQL_USER::"
      },
      {
        "name": "DB_PASS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:MYSQL_PASS::"
      },
      {
        "name": "DB_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config:port::"
      },
      {
        "name": "FINANCE_PERMISSION_PRODUCT_CODE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sales-service-backend/config:FINANCE_PERMISSION_PRODUCT_CODE::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-sales-service-backend",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "sales-service-backend"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_sso_mis_r111" {
  family                   = "development-sso-mis"
  network_mode             = "awsvpc"
  cpu                      = "1024"
  memory                   = "2048"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "sso-mis",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/sso-mis:sha-c45b66f-37882988958",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "sso-mis",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "production"
      }
    ],
    "secrets": [
      {
        "name": "PRODUCT_CODE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sso-mis/config:PRODUCT_CODE::"
      },
      {
        "name": "DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:host::"
      },
      {
        "name": "DB_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:port::"
      },
      {
        "name": "DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sso-mis/config:username::"
      },
      {
        "name": "DB_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sso-mis/config:password::"
      },
      {
        "name": "DB_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sso-mis/config:DB_NAME::"
      },
      {
        "name": "DB_NAME_SSO",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sso-mis/config:DB_NAME_SSO::"
      },
      {
        "name": "AUTH_TOKEN_COOKIE_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sso-mis/config:AUTH_TOKEN_COOKIE_NAME::"
      },
      {
        "name": "MIS_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sso-mis/config:MIS_API_URL::"
      },
      {
        "name": "MASTER_CONFIG_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sso-mis/config:MASTER_CONFIG_API_URL::"
      },
      {
        "name": "SALES_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sso-mis/config:SALES_API_URL::"
      },
      {
        "name": "FIND_SUPPLIERS_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sso-mis/config:FIND_SUPPLIERS_API_URL::"
      },
      {
        "name": "PURCHASE_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sso-mis/config:PURCHASE_API_URL::"
      },
      {
        "name": "WMS_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sso-mis/config:WMS_API_URL::"
      },
      {
        "name": "ASTER_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sso-mis/config:ASTER_API_URL::"
      },
      {
        "name": "NEXT_PUBLIC_SSO_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sso-mis/config:NEXT_PUBLIC_SSO_URL::"
      },
      {
        "name": "NEXT_PUBLIC_PURCHASE_APP_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sso-mis/config:NEXT_PUBLIC_PURCHASE_APP_URL::"
      },
      {
        "name": "NEXT_PUBLIC_WMS_APP_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sso-mis/config:NEXT_PUBLIC_WMS_APP_URL::"
      },
      {
        "name": "NEXT_PUBLIC_SALES_PORTAL_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sso-mis/config:NEXT_PUBLIC_SALES_PORTAL_URL::"
      },
      {
        "name": "FINANCE_REPORTS_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sso-mis/config:FINANCE_REPORTS_API_URL::"
      },
      {
        "name": "AWS_REGION",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sso-mis/config:AWS_REGION::"
      },
      {
        "name": "AWS_BUCKET_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sso-mis/config:AWS_BUCKET_NAME::"
      },
      {
        "name": "S3_PRIVATE_PREFIX",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sso-mis/config:S3_PRIVATE_PREFIX::"
      },
      {
        "name": "S3_PUBLIC_PREFIXES",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sso-mis/config:S3_PUBLIC_PREFIXES::"
      },
      {
        "name": "NEXT_PUBLIC_PROFILE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sso-mis/config:NEXT_PUBLIC_PROFILE_URL::"
      },
      {
        "name": "CORS_ALLOWED_ORIGINS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sso-mis/config:CORS_ALLOWED_ORIGINS::"
      },
      {
        "name": "HEX_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-hex-key/config-BGrEHQ:ENCRYPT_HEX_KEY::"
      },
      {
        "name": "NEXT_X_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/sso-mis/config:NEXT_X_API_KEY::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-sso-mis",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "sso-mis"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_task_management_r71" {
  family                   = "development-task-management"
  network_mode             = "awsvpc"
  cpu                      = "1024"
  memory                   = "2048"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "task-management",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/task-management:sha-e0d7e57-37596119014",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "task-management",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "development"
      }
    ],
    "secrets": [
      {
        "name": "BUCKET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:BUCKET::"
      },
      {
        "name": "CLIENT_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:CLIENT_ID::"
      },
      {
        "name": "CLIENT_SECRET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:CLIENT_SECRET::"
      },
      {
        "name": "CORS_LOCAL_ORIGINS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:CORS_LOCAL_ORIGINS::"
      },
      {
        "name": "CORS_ORIGINS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:CORS_ORIGINS::"
      },
      {
        "name": "DB_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:DB_NAME::"
      },
      {
        "name": "DECRYPT_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:DECRYPT_API_URL::"
      },
      {
        "name": "DEPARTMENT_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:DEPARTMENT_API_URL::"
      },
      {
        "name": "EVENT_WORKSPACE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:EVENT_WORKSPACE::"
      },
      {
        "name": "Encrypted_USER_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:Encrypted_USER_ID::"
      },
      {
        "name": "GROUP_AUTH",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:GROUP_AUTH::"
      },
      {
        "name": "ENCRYPT_HEX_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-hex-key/config-BGrEHQ:ENCRYPT_HEX_KEY::"
      },
      {
        "name": "HIRERARCHY_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:HIRERARCHY_API::"
      },
      {
        "name": "HRMS_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:HRMS_API_URL::"
      },
      {
        "name": "LOG_OUT_DOMAIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:LOG_OUT_DOMAIN::"
      },
      {
        "name": "MAIL_WEBHOOK_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:MAIL_WEBHOOK_URL::"
      },
      {
        "name": "Mode",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:Mode::"
      },
      {
        "name": "REDIRECT_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:REDIRECT_URL::"
      },
      {
        "name": "ROLE_BASED",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:ROLE_BASED::"
      },
      {
        "name": "SECRET_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:SECRET_KEY::"
      },
      {
        "name": "SEND_MAIL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:SEND_MAIL::"
      },
      {
        "name": "SISTERS_COMPANY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:SISTERS_COMPANY::"
      },
      {
        "name": "SSO_DATABASE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:SSO_DATABASE::"
      },
      {
        "name": "SSO_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:host::"
      },
      {
        "name": "SSO_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:password::"
      },
      {
        "name": "SSO_USERNAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:username::"
      },
      {
        "name": "TASK_CONFIG_ALLOWED_COMPANIES",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:TASK_CONFIG_ALLOWED_COMPANIES::"
      },
      {
        "name": "TASK_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:TASK_URL::"
      },
      {
        "name": "FRONTEND_TASK_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:FRONTEND_TASK_URL::"
      },
      {
        "name": "TENANT_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:TENANT_ID::"
      },
      {
        "name": "TOKEN_VERIFY_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:TOKEN_VERIFY_URL::"
      },
      {
        "name": "TRACKING_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:TRACKING_API::"
      },
      {
        "name": "URI_COLLECTION_ZERO",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:URI_COLLECTION_ZERO::"
      },
      {
        "name": "USER_GROUPS_CODE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:USER_GROUPS_CODE::"
      },
      {
        "name": "USER_GROUP_INFO",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:USER_GROUP_INFO::"
      },
      {
        "name": "USER_INFO_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:USER_INFO_API::"
      },
      {
        "name": "USER_PROFILE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:USER_PROFILE::"
      },
      {
        "name": "API_KEY_VERIFY_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:API_KEY_VERIFY_URL::"
      },
      {
        "name": "API_KEY_ORIGIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:API_KEY_ORIGIN::"
      },
      {
        "name": "API_KEY_REFERER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-management/config-RMAIYk:API_KEY_REFERER::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-task-management",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "task-management"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_task_service_frontend_r82" {
  family                   = "development-task-service-frontend"
  network_mode             = "awsvpc"
  cpu                      = "1024"
  memory                   = "2048"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "task-service-frontend",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/task-service-frontend:sha-f5043c8-37599859773",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "task-service-frontend",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "development"
      }
    ],
    "secrets": [
      {
        "name": "REACT_APP_PERMISSION_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-service-frontend/config-5aQIBz:REACT_APP_PERMISSION_URL::"
      },
      {
        "name": "REACT_APP_PERMISSION_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-service-frontend/config-5aQIBz:REACT_APP_PERMISSION_KEY::"
      },
      {
        "name": "REACT_APP_AWS_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-service-frontend/config-5aQIBz:REACT_APP_AWS_API_URL::"
      },
      {
        "name": "REACT_APP_GLOBAL_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-service-frontend/config-5aQIBz:REACT_APP_GLOBAL_API_URL::"
      },
      {
        "name": "REACT_APP_REDIRECT_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-service-frontend/config-5aQIBz:REACT_APP_REDIRECT_URL::"
      },
      {
        "name": "REACT_APP_TOKEN_VERIFY_ENDPOINT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-service-frontend/config-5aQIBz:REACT_APP_TOKEN_VERIFY_ENDPOINT::"
      },
      {
        "name": "REACT_APP_PRODUCT_CODE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-service-frontend/config-5aQIBz:REACT_APP_PRODUCT_CODE::"
      },
      {
        "name": "REACT_APP_DECRYPT_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-service-frontend/config-5aQIBz:REACT_APP_DECRYPT_API::"
      },
      {
        "name": "REACT_APP_CLOUDFRONT_DOMAIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-service-frontend/config-5aQIBz:REACT_APP_CLOUDFRONT_DOMAIN::"
      },
      {
        "name": "REACT_APP_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-service-frontend/config-5aQIBz:REACT_APP_API_URL::"
      },
      {
        "name": "REACT_APP_REGISTER_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-service-frontend/config-5aQIBz:REACT_APP_REGISTER_URL::"
      },
      {
        "name": "REACT_APP_MAIN_LOGIN_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-service-frontend/config-5aQIBz:REACT_APP_MAIN_LOGIN_URL::"
      },
      {
        "name": "REACT_APP_COOKIE_DOMAIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/task-service-frontend/config-5aQIBz:REACT_APP_COOKIE_DOMAIN::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-task-service-frontend",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "task-service-frontend"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_vmi_service_backend_r69" {
  family                   = "development-vmi-service-backend"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "vmi-service-backend",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/vmi-service-backend:sha-54aca20-36104718130",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "vmi-service-backend",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "development"
      }
    ],
    "secrets": [
      {
        "name": "ASTER_DB",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:ASTER_DB::"
      },
      {
        "name": "AWS_REGION",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:AWS_REGION::"
      },
      {
        "name": "BASE_DOMAIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:BASE_DOMAIN::"
      },
      {
        "name": "CORS_ORIGINS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:CORS_ORIGINS::"
      },
      {
        "name": "DBI360_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:DBI360_API_URL::"
      },
      {
        "name": "DB_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:DB_NAME::"
      },
      {
        "name": "DOCUSIGN_INTEGRATION_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:DOCUSIGN_INTEGRATION_KEY::"
      },
      {
        "name": "DOCUSIGN_OAUTH_BASEPATH",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:DOCUSIGN_OAUTH_BASEPATH::"
      },
      {
        "name": "DOCUSIGN_USER_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:DOCUSIGN_USER_ID::"
      },
      {
        "name": "DOCUSIGN_PRIVATE_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:DOCUSIGN_PRIVATE_KEY::"
      },
      {
        "name": "DOC_CONTACT_EMAIL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:DOC_CONTACT_EMAIL::"
      },
      {
        "name": "DOC_REQ_EMAIL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:DOC_REQ_EMAIL::"
      },
      {
        "name": "DOC_REQ_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:DOC_REQ_NAME::"
      },
      {
        "name": "HEX_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:HEX_KEY::"
      },
      {
        "name": "INVOICE_DISCOUNT_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:INVOICE_DISCOUNT_URL::"
      },
      {
        "name": "N8N_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:N8N_PASSWORD::"
      },
      {
        "name": "N8N_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:N8N_URL::"
      },
      {
        "name": "N8N_USERNAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:N8N_USERNAME::"
      },
      {
        "name": "NEXUS_API_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:NEXUS_API_BASE_URL::"
      },
      {
        "name": "NEXUS_API_TOKEN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:NEXUS_API_TOKEN::"
      },
      {
        "name": "NEXUS_COMPANY_UPDATE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:NEXUS_COMPANY_UPDATE::"
      },
      {
        "name": "PREV_USER_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:PREV_USER_ID::"
      },
      {
        "name": "PRICE_AUTO_UPDATE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:PRICE_AUTO_UPDATE_URL::"
      },
      {
        "name": "Quotation_Approve_Reject_Notification_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:Quotation_Approve_Reject_Notification_URL::"
      },
      {
        "name": "RESTRICT_CUSTOMER_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:RESTRICT_CUSTOMER_ID::"
      },
      {
        "name": "S3_BUCKET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:S3_BUCKET::"
      },
      {
        "name": "S3_SECRET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:S3_SECRET::"
      },
      {
        "name": "STRIPE_SECRET_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:STRIPE_SECRET_KEY::"
      },
      {
        "name": "STRIPE_WEBHOOK_SECRET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:STRIPE_WEBHOOK_SECRET::"
      },
      {
        "name": "VMI_BACKEND_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:VMI_BACKEND_URL::"
      },
      {
        "name": "VMI_FRONTEND_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:VMI_FRONTEND_URL::"
      },
      {
        "name": "VMI_N8N_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:VMI_N8N_URL::"
      },
      {
        "name": "VMI_SSO_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:VMI_SSO_URL::"
      },
      {
        "name": "WMS_BACKEND_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:WMS_BACKEND_URL::"
      },
      {
        "name": "PERMISSION_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:PERMISSION_URL::"
      },
      {
        "name": "PRODUCT_CODE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:PRODUCT_CODE::"
      },
      {
        "name": "PERMISSION_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:PERMISSION_KEY::"
      },
      {
        "name": "MASTERPRODUCT_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:MASTERPRODUCT_URL::"
      },
      {
        "name": "DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:host::"
      },
      {
        "name": "DB_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config-LFBqVS:port::"
      },
      {
        "name": "DB_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:password::"
      },
      {
        "name": "DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:username::"
      },
      {
        "name": "VMI_ADMIN_COMPANY_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-backend/config-655H80:VMI_ADMIN_COMPANY_ID::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-vmi-service-backend",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "vmi-service-backend"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}

resource "aws_ecs_task_definition" "development_vmi_service_frontend_r23" {
  family                   = "development-vmi-service-frontend"
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  requires_compatibilities = ["FARGATE"]
  container_definitions    = <<CONTAINER_DEF
[
  {
    "name": "vmi-service-frontend",
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/vmi-service-frontend:sha-45fb394-35715194945",
    "cpu": 0,
    "memory": 0,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 8080,
        "hostPort": 8080,
        "protocol": "tcp",
        "name": "vmi-service-frontend",
        "appProtocol": "http"
      }
    ],
    "environment": [
      {
        "name": "PORT",
        "value": "8080"
      },
      {
        "name": "NODE_ENV",
        "value": "production"
      }
    ],
    "secrets": [
      {
        "name": "VITE_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-frontend/config-YqVark:VITE_API_URL::"
      },
      {
        "name": "VITE_ASTER_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-frontend/config-YqVark:VITE_ASTER_API_KEY::"
      },
      {
        "name": "VITE_ASTER_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-frontend/config-YqVark:VITE_ASTER_API_URL::"
      },
      {
        "name": "VITE_AUTH_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-frontend/config-YqVark:VITE_AUTH_URL::"
      },
      {
        "name": "VITE_COUNTRY_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-frontend/config-YqVark:VITE_COUNTRY_API::"
      },
      {
        "name": "VITE_COUNTRY_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-frontend/config-YqVark:VITE_COUNTRY_API_KEY::"
      },
      {
        "name": "VITE_DOMAIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-frontend/config-YqVark:VITE_DOMAIN::"
      },
      {
        "name": "VITE_DOMAIN_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-frontend/config-YqVark:VITE_DOMAIN_NAME::"
      },
      {
        "name": "VITE_FINANCE_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-frontend/config-YqVark:VITE_FINANCE_API_URL::"
      },
      {
        "name": "VITE_FRONTEND_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-frontend/config-YqVark:VITE_FRONTEND_URL::"
      },
      {
        "name": "VITE_GLOBAL_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-frontend/config-YqVark:VITE_GLOBAL_API_URL::"
      },
      {
        "name": "VITE_LOCATION_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-frontend/config-YqVark:VITE_LOCATION_API::"
      },
      {
        "name": "VITE_MASTER_PRODUCT_SEARCH",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-frontend/config-YqVark:VITE_MASTER_PRODUCT_SEARCH::"
      },
      {
        "name": "VITE_PERMISSION_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-frontend/config-YqVark:VITE_PERMISSION_KEY::"
      },
      {
        "name": "VITE_PERMISSION_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-frontend/config-YqVark:VITE_PERMISSION_URL::"
      },
      {
        "name": "VITE_PRODUCT_CODE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-frontend/config-YqVark:VITE_PRODUCT_CODE::"
      },
      {
        "name": "VITE_SALES_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-frontend/config-YqVark:VITE_SALES_URL::"
      },
      {
        "name": "VITE_STRIPE_PUBLISH_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-frontend/config-YqVark:VITE_STRIPE_PUBLISH_KEY::"
      },
      {
        "name": "VITE_VENDOR_PROFILE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-frontend/config-YqVark:VITE_VENDOR_PROFILE_URL::"
      },
      {
        "name": "VITE_VMI_INVOICE_PAYMENT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-frontend/config-YqVark:VITE_VMI_INVOICE_PAYMENT::"
      },
      {
        "name": "VITE_VMI_INVOICE_PAYMENT_RECEIVE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-frontend/config-YqVark:VITE_VMI_INVOICE_PAYMENT_RECEIVE::"
      },
      {
        "name": "VITE_N8N_NOTIFICATION_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/vmi-service-frontend/config-YqVark:VITE_N8N_NOTIFICATION_URL::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/development-vmi-service-frontend",
        "awslogs-region": "us-east-2",
        "awslogs-stream-prefix": "vmi-service-frontend"
      }
    }
  }
]
CONTAINER_DEF
  lifecycle {
    ignore_changes = [container_definitions]
  }
}



resource "aws_ecs_task_definition" "development_aster_node_r392" {
  family                   = "development-aster-node"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  container_definitions    = jsonencode([
    {
        "name": "aster-node",
        "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/aster-node@sha256:11b0e2544009ed100b86844736d5fde5aae2d0c6ee28e02fb6f77d511caaceff",
        "cpu": 0,
        "portMappings": [
            {
                "containerPort": 8080,
                "hostPort": 8080,
                "protocol": "tcp",
                "name": "aster-node",
                "appProtocol": "http"
            }
        ],
        "essential": true,
        "environment": [
            {
                "name": "PORT",
                "value": "8080"
            },
            {
                "name": "NODE_ENV",
                "value": "development"
            },
            {
                "name": "RUNTIME_ENVIRONMENT",
                "value": "development"
            }
        ],
        "mountPoints": [],
        "volumesFrom": [],
        "secrets": [
            {
                "name": "ASTEREMAILID",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:ASTEREMAILID::"
            },
            {
                "name": "ASTER_COMPANY_CERTIFICATE_ATTACHMENTS_FOLDER_AWS",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:ASTER_COMPANY_CERTIFICATE_ATTACHMENTS_FOLDER_AWS::"
            },
            {
                "name": "ASTER_COMPANY_LOGO",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:ASTER_COMPANY_LOGO::"
            },
            {
                "name": "ASTER_COMPANY_LOGO_FOLDER",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:ASTER_COMPANY_LOGO_FOLDER::"
            },
            {
                "name": "ASTER_EXISTING_USER_PERMISSION",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:ASTER_EXISTING_USER_PERMISSION::"
            },
            {
                "name": "ASTER_FACILITY_CERTIFICATE_ATTACHMENTS_FOLDER_AWS",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:ASTER_FACILITY_CERTIFICATE_ATTACHMENTS_FOLDER_AWS::"
            },
            {
                "name": "ASTER_FORM_CERTIFICATE_ATTACHMENTS_FOLDER_AWS",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:ASTER_FORM_CERTIFICATE_ATTACHMENTS_FOLDER_AWS::"
            },
            {
                "name": "ASTER_FORM_CERTIFICATE_ATTACHMENTS_TEMP_FOLDER_AWS",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:ASTER_FORM_CERTIFICATE_ATTACHMENTS_TEMP_FOLDER_AWS::"
            },
            {
                "name": "ASTER_NEW_USER_PERMISSION",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:ASTER_NEW_USER_PERMISSION::"
            },
            {
                "name": "ASTER_PDF_HEADER",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:ASTER_PDF_HEADER::"
            },
            {
                "name": "ASTER_PDF_STAMP",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:ASTER_PDF_STAMP::"
            },
            {
                "name": "ASTER_PDF_WATERMARK",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:ASTER_PDF_WATERMARK::"
            },
            {
                "name": "ASTER_PRODUCT_CERTIFICATE_ATTACHMENTS_FOLDER_AWS",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:ASTER_PRODUCT_CERTIFICATE_ATTACHMENTS_FOLDER_AWS::"
            },
            {
                "name": "ASTER_REFERENCE",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:ASTER_REFERENCE::"
            },
            {
                "name": "ASTER_REFERENCE_TEMP",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:ASTER_REFERENCE_TEMP::"
            },
            {
                "name": "ASTER_SENDEMAIl_STATUS",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:ASTER_SENDEMAIl_STATUS::"
            },
            {
                "name": "ASTER_VERIFICATION_DOCUMENTS_FOLDER_AWS",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:ASTER_VERIFICATION_DOCUMENTS_FOLDER_AWS::"
            },
            {
                "name": "AUTHSERVER",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:AUTHSERVER::"
            },
            {
                "name": "AWS_REGION_NAME",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:AWS_REGION_NAME::"
            },
            {
                "name": "AWS_UPLOAD_ENV",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:AWS_UPLOAD_ENV::"
            },
            {
                "name": "BUCKET_NAME",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:BUCKET_NAME::"
            },
            {
                "name": "CLICKHOUSE_DB_HOST",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:CLICKHOUSE_DB_HOST::"
            },
            {
                "name": "CLICKHOUSE_DB_PASS",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:CLICKHOUSE_DB_PASS::"
            },
            {
                "name": "CLICKHOUSE_DB_USER",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:CLICKHOUSE_DB_USER::"
            },
            {
                "name": "CLICKHOUSE_MYSQL_DB",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:CLICKHOUSE_MYSQL_DB::"
            },
            {
                "name": "COA_COUNT_API",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:COA_COUNT_API::"
            },
            {
                "name": "COA_UNAPPROVE_API",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:COA_UNAPPROVE_API::"
            },
            {
                "name": "COUNTRY_API",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:COUNTRY_API::"
            },
            {
                "name": "GLOBAL_API",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:GLOBAL_API::"
            },
            {
                "name": "ENCRYPT_HEX_KEY",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-hex-key/config:ENCRYPT_HEX_KEY::"
            },
            {
                "name": "KPIDATABASE",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:KPIDATABASE::"
            },
            {
                "name": "MYSQL_DB",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:MYSQL_DB::"
            },
            {
                "name": "NDA_API",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:NDA_API::"
            },
            {
                "name": "N8N_EMAIL_WEBHOOK_URL",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:N8N_EMAIL_WEBHOOK_URL::"
            },
            {
                "name": "WORLD_MYSQL_DB",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:WORLD_MYSQL_DB::"
            },
            {
                "name": "X_API_KEY",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:X_API_KEY::"
            },
            {
                "name": "ENTITY_URL",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:ENTITY_URL::"
            },
            {
                "name": "KPI_API",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:KPI_API::"
            },
            {
                "name": "GRAPH_CLIENT_ID",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:GRAPH_CLIENT_ID::"
            },
            {
                "name": "GRAPH_CLIENT_SECRETE",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:GRAPH_CLIENT_SECRETE::"
            },
            {
                "name": "SALES_API",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:SALES_API::"
            },
            {
                "name": "GRAPH_TENANT_ID",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:GRAPH_TENANT_ID::"
            },
            {
                "name": "GRAPH_REDIRECT_URI",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:GRAPH_REDIRECT_URI::"
            },
            {
                "name": "FRONTEND_APP_URL",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:FRONTEND_APP_URL::"
            },
            {
                "name": "stripe_api_key",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:stripe_api_key::"
            },
            {
                "name": "stripe_publishable_key",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:stripe_publishable_key::"
            },
            {
                "name": "stripe_currency",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:stripe_currency::"
            },
            {
                "name": "stripe_webhook_key",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:stripe_webhook_key::"
            },
            {
                "name": "VALIDTO_API_KEY",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:VALIDTO_API_KEY::"
            },
            {
                "name": "DB_HOST",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config:host::"
            },
            {
                "name": "DB_PASS",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:password::"
            },
            {
                "name": "DB_PORT",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config:port::"
            },
            {
                "name": "DB_USER",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/aster-node/config:username::"
            },
            {
                "name": "WORLD_DB_HOST",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config:host::"
            },
            {
                "name": "WORLD_DB_PASS",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config:password::"
            },
            {
                "name": "WORLD_DB_PORT",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config:port::"
            },
            {
                "name": "WORLD_DB_USER",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config:username::"
            }
        ],
        "user": "1001",
        "logConfiguration": {
            "logDriver": "awslogs",
            "options": {
                "awslogs-group": "/ecs/development-aster-node",
                "awslogs-region": "us-east-2",
                "awslogs-stream-prefix": "aster-node"
            }
        },
        "healthCheck": {
            "command": [
                "CMD-SHELL",
                "wget -qO- http://localhost:8080/health >/dev/null 2>&1 || curl -fsS http://localhost:8080/health >/dev/null 2>&1 || python3 -c \"import urllib.request; urllib.request.urlopen('http://localhost:8080/health', timeout=4)\" >/dev/null 2>&1 || exit 1"
            ],
            "interval": 15,
            "timeout": 5,
            "retries": 3,
            "startPeriod": 60
        },
        "systemControls": []
    }
])
}

resource "aws_ecs_task_definition" "development_asterdocs_frontend_r452" {
  family                   = "development-asterdocs-frontend"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  container_definitions    = jsonencode([
    {
        "name": "asterdocs-frontend",
        "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/asterdocs-frontend@sha256:248d76db23794428439bcfe01028d07760d2c8f66a4b50b473ee9df754269a5a",
        "cpu": 0,
        "portMappings": [
            {
                "containerPort": 8080,
                "hostPort": 8080,
                "protocol": "tcp",
                "name": "asterdocs-frontend",
                "appProtocol": "http"
            }
        ],
        "essential": true,
        "environment": [
            {
                "name": "PORT",
                "value": "8080"
            },
            {
                "name": "NODE_ENV",
                "value": "development"
            },
            {
                "name": "RUNTIME_ENVIRONMENT",
                "value": "development"
            }
        ],
        "mountPoints": [],
        "volumesFrom": [],
        "secrets": [
            {
                "name": "VITE_API_TOKEN",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_API_TOKEN::"
            },
            {
                "name": "VITE_ASTER_BACKEND_URL",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_ASTER_BACKEND_URL::"
            },
            {
                "name": "VITE_ASTER_BACKEND_API_URL",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_ASTER_BACKEND_API_URL::"
            },
            {
                "name": "VITE_ASTER_DOMAIN",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_ASTER_DOMAIN::"
            },
            {
                "name": "VITE_AUTH_PRODUCT_CODE",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_AUTH_PRODUCT_CODE::"
            },
            {
                "name": "VITE_BASE_DOMAIN",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_BASE_DOMAIN::"
            },
            {
                "name": "VITE_BASE_URL",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_BASE_URL::"
            },
            {
                "name": "VITE_CHECK_PRODUCT_EXIST",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_CHECK_PRODUCT_EXIST::"
            },
            {
                "name": "VITE_COMPARE_FILES",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_COMPARE_FILES::"
            },
            {
                "name": "VITE_COUNTRY_API_KEY",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_COUNTRY_API_KEY::"
            },
            {
                "name": "VITE_EXTRACT_SPEC",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_EXTRACT_SPEC::"
            },
            {
                "name": "VITE_FIND_SUPPLIERS_API_URL",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_FIND_SUPPLIERS_API_URL::"
            },
            {
                "name": "VITE_GET_PRODUCT_LIST",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_GET_PRODUCT_LIST::"
            },
            {
                "name": "VITE_INVENTORY_URL",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_INVENTORY_URL::"
            },
            {
                "name": "VITE_LOCATION_API",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_LOCATION_API::"
            },
            {
                "name": "VITE_N8N_WEBHOOK_BASE_URL",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_N8N_WEBHOOK_BASE_URL::"
            },
            {
                "name": "VITE_SALES_BACKEND_API",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_SALES_BACKEND_API::"
            },
            {
                "name": "VITE_TASK_URL",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_TASK_URL::"
            },
            {
                "name": "VITE_USER_M_URL",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_USER_M_URL::"
            },
            {
                "name": "VITE_VERIFY_API_URL",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_VERIFY_API_URL::"
            },
            {
                "name": "VITE_WITHOUT_TEMPLATE_COA",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_WITHOUT_TEMPLATE_COA::"
            },
            {
                "name": "VITE_MASTERCONFIG_API_URL",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_MASTERCONFIG_API_URL::"
            },
            {
                "name": "VITE_GLOBALAPI_MASTERTABLES_URL",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_GLOBALAPI_MASTERTABLES_URL::"
            },
            {
                "name": "VITE_ADMIN_BASE_URL",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_ADMIN_BASE_URL::"
            },
            {
                "name": "VITE_ADMIN_URL",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_ADMIN_URL::"
            },
            {
                "name": "VITE_ASTER_ADMIN_URL",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_ASTER_ADMIN_URL::"
            },
            {
                "name": "VITE_AWS_UPLOAD_ENV",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_AWS_UPLOAD_ENV::"
            },
            {
                "name": "VITE_ENTITY_API_URL",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_ENTITY_API_URL::"
            },
            {
                "name": "VITE_GLOBALAPI_COUNTRIES_URL",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_GLOBALAPI_COUNTRIES_URL::"
            },
            {
                "name": "VITE_IMAGE_URL",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_IMAGE_URL::"
            },
            {
                "name": "VITE_MASTER_PRODUCT_API",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_MASTER_PRODUCT_API::"
            },
            {
                "name": "VITE_MASTERPRODUCT_IMAGE_BASE_URL",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_MASTERPRODUCT_IMAGE_BASE_URL::"
            },
            {
                "name": "VITE_PERMISSION_URL",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_PERMISSION_URL::"
            },
            {
                "name": "VITE_PURCHASE_API_URL",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/asterdocs-frontend/config:VITE_PURCHASE_API_URL::"
            }
        ],
        "user": "1001",
        "logConfiguration": {
            "logDriver": "awslogs",
            "options": {
                "awslogs-group": "/ecs/development-asterdocs-frontend",
                "awslogs-region": "us-east-2",
                "awslogs-stream-prefix": "asterdocs-frontend"
            }
        },
        "healthCheck": {
            "command": [
                "CMD-SHELL",
                "wget -qO- http://localhost:8080/health >/dev/null 2>&1 || curl -fsS http://localhost:8080/health >/dev/null 2>&1 || python3 -c \"import urllib.request; urllib.request.urlopen('http://localhost:8080/health', timeout=4)\" >/dev/null 2>&1 || exit 1"
            ],
            "interval": 15,
            "timeout": 5,
            "retries": 3,
            "startPeriod": 60
        },
        "systemControls": []
    }
])
}

resource "aws_ecs_task_definition" "development_findsuppliers_backend_r296" {
  family                   = "development-findsuppliers-backend"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "512"
  memory                   = "1024"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  container_definitions    = jsonencode([
    {
        "name": "findsuppliers-backend",
        "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/findsuppliers-backend@sha256:956669297527aab645dcd6a8a9552d4c6caeeca1ef69662371f2a44dd329853e",
        "cpu": 0,
        "portMappings": [
            {
                "containerPort": 8080,
                "hostPort": 8080,
                "protocol": "tcp",
                "name": "findsuppliers-backend",
                "appProtocol": "http"
            }
        ],
        "essential": true,
        "environment": [
            {
                "name": "QUICK_QUOTE_BASE_URL",
                "value": "https://findsupplierai.demodbi360.com/"
            },
            {
                "name": "NODE_ENV",
                "value": "production"
            },
            {
                "name": "ZOHO_RETURN_HOSTS",
                "value": "demodbi360.com"
            },
            {
                "name": "PORT",
                "value": "8080"
            },
            {
                "name": "RUNTIME_ENVIRONMENT",
                "value": "development"
            }
        ],
        "mountPoints": [],
        "volumesFrom": [],
        "secrets": [
            {
                "name": "ALLOWED_HOSTS",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config:ALLOWED_HOSTS::"
            },
            {
                "name": "API_KEYS_JSON",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config:API_KEYS_JSON::"
            },
            {
                "name": "API_SECRET_KEY",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config:API_SECRET_KEY::"
            },
            {
                "name": "APP_URLS_JSON",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config:APP_URLS_JSON::"
            },
            {
                "name": "ASTER_API_URL",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config:ASTER_API_URL::"
            },
            {
                "name": "AUTH_API_KEY",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config:AUTH_API_KEY::"
            },
            {
                "name": "AWS_CONFIG_JSON",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config:AWS_CONFIG_JSON::"
            },
            {
                "name": "CLICKHOUSE_CONFIG_JSON",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config:CLICKHOUSE_CONFIG_JSON::"
            },
            {
                "name": "COMPLIANCE_DOCS_S3_BUCKET",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config:COMPLIANCE_DOCS_S3_BUCKET::"
            },
            {
                "name": "COMPLIANCE_DOCS_S3_REGION",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config:COMPLIANCE_DOCS_S3_REGION::"
            },
            {
                "name": "CORS_ORIGIN_ALLOW_ALL",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config:CORS_ORIGIN_ALLOW_ALL::"
            },
            {
                "name": "DB_DEFAULT_JSON",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config:DB_DEFAULT_JSON::"
            },
            {
                "name": "DB_GLOBAL_JSON",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config:DB_GLOBAL_JSON::"
            },
            {
                "name": "DB_HOST",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config:host::"
            },
            {
                "name": "DB_PASS",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config:password::"
            },
            {
                "name": "DB_PORT",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config:port::"
            },
            {
                "name": "DB_USER",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config:username::"
            },
            {
                "name": "DEBUG",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config:DEBUG::"
            },
            {
                "name": "DEFAULT_FROM_EMAIL",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config:DEFAULT_FROM_EMAIL::"
            },
            {
                "name": "DEFAULT_FROM_EMAIL_OUTLOOK",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config:DEFAULT_FROM_EMAIL_OUTLOOK::"
            },
            {
                "name": "EMAIL_CONFIG_JSON",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config:EMAIL_CONFIG_JSON::"
            },
            {
                "name": "ENCRYPT_HEX_KEY",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-hex-key/config:ENCRYPT_HEX_KEY::"
            },
            {
                "name": "FIREBASE_SERVICE_ACCOUNT_JSON",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config:FIREBASE_SERVICE_ACCOUNT_JSON::"
            },
            {
                "name": "INTEGRATIONS_CONFIG_JSON",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config:INTEGRATIONS_CONFIG_JSON::"
            },
            {
                "name": "LOCATION_CONFIG_JSON",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config:LOCATION_CONFIG_JSON::"
            },
            {
                "name": "MAILCHIMP_CONFIG_JSON",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config:MAILCHIMP_CONFIG_JSON::"
            },
            {
                "name": "MICROSOFT_OAUTH_CLIENT_ID",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config:MICROSOFT_OAUTH_CLIENT_ID::"
            },
            {
                "name": "MICROSOFT_OAUTH_CLIENT_SECRET",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config:MICROSOFT_OAUTH_CLIENT_SECRET::"
            },
            {
                "name": "MICROSOFT_OAUTH_REDIRECT_URI",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config:MICROSOFT_OAUTH_REDIRECT_URI::"
            },
            {
                "name": "MONGO_CONFIG_JSON",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config:MONGO_CONFIG_JSON::"
            },
            {
                "name": "MONGO_EMAIL_CONFIG_JSON",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config:MONGO_EMAIL_CONFIG_JSON::"
            },
            {
                "name": "MS_GRAPH_APP_CLIENT_ID",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config:MS_GRAPH_APP_CLIENT_ID::"
            },
            {
                "name": "MS_GRAPH_APP_CLIENT_SECRET",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config:MS_GRAPH_APP_CLIENT_SECRET::"
            },
            {
                "name": "MS_GRAPH_APP_TENANT_ID",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config:MS_GRAPH_APP_TENANT_ID::"
            },
            {
                "name": "N8N_WEBHOOK_URL",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config:N8N_WEBHOOK_URL::"
            },
            {
                "name": "NEXT_CLICKHOUSE_JSON",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config:NEXT_CLICKHOUSE_JSON::"
            },
            {
                "name": "NEXUS_URL",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config:NEXUS_URL::"
            },
            {
                "name": "PURCHASE_API_BASE_URL",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config:PURCHASE_API_BASE_URL::"
            },
            {
                "name": "RABBITMQ_CONFIG_JSON",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config:RABBITMQ_CONFIG_JSON::"
            },
            {
                "name": "SUPABASE_CONFIG_JSON",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config:SUPABASE_CONFIG_JSON::"
            },
            {
                "name": "SECRET_KEY",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config:SECRET_KEY::"
            },
            {
                "name": "DOCUMENT_ANALYZER_ENDPOINT",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config:DOCUMENT_ANALYZER_ENDPOINT::"
            },
            {
                "name": "SALES_BASE_URL",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config:SALES_BASE_URL::"
            },
            {
                "name": "SOURCING_AWS_ACCESS_KEY_ID",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config:SOURCING_AWS_ACCESS_KEY_ID::"
            },
            {
                "name": "SOURCING_AWS_SECRET_ACCESS_KEY",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config:SOURCING_AWS_SECRET_ACCESS_KEY::"
            },
            {
                "name": "SOURCING_AWS_S3_REGION",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config:SOURCING_AWS_S3_REGION::"
            },
            {
                "name": "SOURCING_AWS_SECRET_REGION",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config:SOURCING_AWS_SECRET_REGION::"
            },
            {
                "name": "SOURCING_AWS_BUCKETNAME",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config:SOURCING_AWS_BUCKETNAME::"
            },
            {
                "name": "MASTERPRODUCT_IMAGE_BASE_URL",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/findsuppliers-backend/config:MASTERPRODUCT_IMAGE_BASE_URL::"
            },
            {
                "name": "RDS_CA_CERT",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/zylerpreliv-rds/config:RDS_CA_CERT::"
            }
        ],
        "user": "1001",
        "logConfiguration": {
            "logDriver": "awslogs",
            "options": {
                "awslogs-group": "/ecs/development-findsuppliers-backend",
                "awslogs-region": "us-east-2",
                "awslogs-stream-prefix": "findsuppliers-backend"
            }
        },
        "healthCheck": {
            "command": [
                "CMD-SHELL",
                "wget -qO- http://localhost:8080/health >/dev/null 2>&1 || curl -fsS http://localhost:8080/health >/dev/null 2>&1 || python3 -c \"import urllib.request; urllib.request.urlopen('http://localhost:8080/health', timeout=4)\" >/dev/null 2>&1 || exit 1"
            ],
            "interval": 15,
            "timeout": 5,
            "retries": 3,
            "startPeriod": 60
        },
        "systemControls": []
    }
])
}

resource "aws_ecs_task_definition" "development_dbi_websocket_r251" {
  family                   = "development-dbi-websocket"
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu                      = "1024"
  memory                   = "2048"
  execution_role_arn       = "arn:aws:iam::842676018479:role/SecurityECSTaskExecutionRole"
  task_role_arn            = "arn:aws:iam::842676018479:role/SecurityECSTaskRole"
  container_definitions    = jsonencode([
    {
        "name": "dbi-websocket",
        "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/dbi-websocket:sha-553a3be-37923408308",
        "cpu": 0,
        "portMappings": [
            {
                "containerPort": 8080,
                "hostPort": 8080,
                "protocol": "tcp",
                "name": "dbi-websocket",
                "appProtocol": "http"
            }
        ],
        "essential": true,
        "environment": [
            {
                "name": "SOCKET_AUTH_ENFORCE",
                "value": "true"
            },
            {
                "name": "RATE_LIMIT_MAX",
                "value": "1000"
            },
            {
                "name": "OPENAI_EMBED_MODEL",
                "value": "text-embedding-ada-002"
            },
            {
                "name": "PORT",
                "value": "8080"
            },
            {
                "name": "DB_PORT",
                "value": "3306"
            },
            {
                "name": "MS_LOGIN_URL",
                "value": "https://login.microsoftonline.com"
            },
            {
                "name": "MS_GRAPH_URL",
                "value": "https://graph.microsoft.com/v1.0"
            },
            {
                "name": "RATE_LIMIT_IP_MAX",
                "value": "20000"
            },
            {
                "name": "ROLE_PERMISSION_USERS_URL",
                "value": "https://rolespermissions.demodbi360.com"
            },
            {
                "name": "REDIS_LOG",
                "value": "false"
            },
            {
                "name": "CHATBOT_PRODUCT_CODE",
                "value": "40"
            },
            {
                "name": "OPENAI_MODEL",
                "value": "gpt-4o-mini"
            },
            {
                "name": "REDIS_URL",
                "value": "redis://localhost:6379"
            },
            {
                "name": "RATE_LIMIT_VERIFY_MAX",
                "value": "120"
            }
        ],
        "mountPoints": [],
        "volumesFrom": [],
        "secrets": [
            {
                "name": "N8N_BASE_URL",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/dbi-websocket/config:N8N_BASE_URL::"
            },
            {
                "name": "N8N_USERNAME",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/dbi-websocket/config:N8N_USERNAME::"
            },
            {
                "name": "N8N_PASSWORD",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/dbi-websocket/config:N8N_PASSWORD::"
            },
            {
                "name": "N8N_CUSTOM_API_KEY",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/dbi-websocket/config:N8N_CUSTOM_API_KEY::"
            },
            {
                "name": "DB_HOST",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/dbi-websocket/config:DB_HOST::"
            },
            {
                "name": "DB_USER",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/dbi-websocket/config:username::"
            },
            {
                "name": "DB_PASSWORD",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/dbi-websocket/config:password::"
            },
            {
                "name": "DB_NAME",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/dbi-websocket/config:DB_NAME::"
            },
            {
                "name": "ALLOWED_ORIGINS",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/dbi-websocket/config:ALLOWED_ORIGINS::"
            },
            {
                "name": "ACCESS_TOKEN_SECRET",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/dbi-websocket/config:ACCESS_TOKEN_SECRET::"
            },
            {
                "name": "ACCESS_TOKEN_EXPIRES_IN",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/dbi-websocket/config:ACCESS_TOKEN_EXPIRES_IN::"
            },
            {
                "name": "MONGODB_URI",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/dbi-websocket/config:MONGODB_URI::"
            },
            {
                "name": "MONGODB_DB_NAME",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/dbi-websocket/config:MONGODB_DB_NAME::"
            },
            {
                "name": "GLOBAL_API_URL",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/dbi-websocket/config:GLOBAL_API_URL::"
            },
            {
                "name": "ENCRYPT_HEX_KEY",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/authserver-hex-key/config-BGrEHQ:ENCRYPT_HEX_KEY::"
            },
            {
                "name": "ORIGIN_SOURCE",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/dbi-websocket/config:ORIGIN_SOURCE::"
            },
            {
                "name": "AWS_BUCKET_NAME",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/dbi-websocket/config:AWS_BUCKET_NAME::"
            },
            {
                "name": "AWS_REGION",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/dbi-websocket/config:AWS_REGION::"
            },
            {
                "name": "PERMISSION_URL",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/dbi-websocket/config:PERMISSION_URL::"
            },
            {
                "name": "PERMISSION_KEY",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/dbi-websocket/config:PERMISSION_KEY::"
            },
            {
                "name": "OPENAI_API_KEY",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/dbi-websocket/config:OPENAI_API_KEY::"
            },
            {
                "name": "QDRANT_URL",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/dbi-websocket/config:QDRANT_URL::"
            },
            {
                "name": "QDRANT_API_KEY",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/dbi-websocket/config:QDRANT_API_KEY::"
            },
            {
                "name": "STRIPE_PUB_KEY",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/dbi-websocket/config:STRIPE_PUB_KEY::"
            },
            {
                "name": "STRIPE_SECRET_KEY",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/dbi-websocket/config:STRIPE_SECRET_KEY::"
            },
            {
                "name": "STRIPE_WEBHOOK_SECRET",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/dbi-websocket/config:STRIPE_WEBHOOK_SECRET::"
            },
            {
                "name": "GLOBAL_API_DATABASE_ID",
                "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:dev/dbi-websocket/config:GLOBAL_API_DATABASE_ID::"
            }
        ],
        "dependsOn": [
            {
                "containerName": "redis",
                "condition": "HEALTHY"
            }
        ],
        "user": "1001",
        "logConfiguration": {
            "logDriver": "awslogs",
            "options": {
                "awslogs-group": "/ecs/development-dbi-websocket",
                "awslogs-region": "us-east-2",
                "awslogs-stream-prefix": "dbi-websocket"
            }
        },
        "healthCheck": {
            "command": [
                "CMD-SHELL",
                "wget -qO- http://127.0.0.1:8080/health > /dev/null || exit 1"
            ],
            "interval": 15,
            "timeout": 5,
            "retries": 3,
            "startPeriod": 60
        },
        "systemControls": []
    },
    {
        "name": "redis",
        "image": "redis:7-alpine@sha256:e7723ff73d963f5cc6d9c4643ea3d989527a402a319239054e9472a7fb9219a2",
        "cpu": 128,
        "memory": 256,
        "portMappings": [],
        "essential": true,
        "command": [
            "redis-server",
            "--appendonly",
            "no",
            "--maxmemory",
            "192mb",
            "--maxmemory-policy",
            "allkeys-lru"
        ],
        "environment": [],
        "mountPoints": [],
        "volumesFrom": [],
        "logConfiguration": {
            "logDriver": "awslogs",
            "options": {
                "awslogs-group": "/ecs/development-dbi-websocket",
                "awslogs-region": "us-east-2",
                "awslogs-stream-prefix": "redis"
            }
        },
        "healthCheck": {
            "command": [
                "CMD-SHELL",
                "redis-cli ping | grep PONG"
            ],
            "interval": 10,
            "timeout": 5,
            "retries": 3,
            "startPeriod": 10
        },
        "systemControls": []
    }
])
}
