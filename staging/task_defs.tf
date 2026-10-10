# Latest revision per family

resource "aws_ecs_task_definition" "staging_aster_node_r3" {
  family                   = "staging-aster-node"
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
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/aster-node@sha256:b335709a724461aa6868940af340cf7239769afd2aa7ef208e2e1e27fe802432",
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
        "value": "staging"
      }
    ],
    "secrets": [
      {
        "name": "ASTEREMAILID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/aster-node/config:ASTEREMAILID::"
      },
      {
        "name": "ASTER_COMPANY_CERTIFICATE_ATTACHMENTS_FOLDER_AWS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/aster-node/config:ASTER_COMPANY_CERTIFICATE_ATTACHMENTS_FOLDER_AWS::"
      },
      {
        "name": "ASTER_COMPANY_LOGO",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/aster-node/config:ASTER_COMPANY_LOGO::"
      },
      {
        "name": "ASTER_COMPANY_LOGO_FOLDER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/aster-node/config:ASTER_COMPANY_LOGO_FOLDER::"
      },
      {
        "name": "ASTER_EXISTING_USER_PERMISSION",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/aster-node/config:ASTER_EXISTING_USER_PERMISSION::"
      },
      {
        "name": "ASTER_FACILITY_CERTIFICATE_ATTACHMENTS_FOLDER_AWS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/aster-node/config:ASTER_FACILITY_CERTIFICATE_ATTACHMENTS_FOLDER_AWS::"
      },
      {
        "name": "ASTER_FORM_CERTIFICATE_ATTACHMENTS_FOLDER_AWS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/aster-node/config:ASTER_FORM_CERTIFICATE_ATTACHMENTS_FOLDER_AWS::"
      },
      {
        "name": "ASTER_FORM_CERTIFICATE_ATTACHMENTS_TEMP_FOLDER_AWS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/aster-node/config:ASTER_FORM_CERTIFICATE_ATTACHMENTS_TEMP_FOLDER_AWS::"
      },
      {
        "name": "ASTER_NEW_USER_PERMISSION",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/aster-node/config:ASTER_NEW_USER_PERMISSION::"
      },
      {
        "name": "ASTER_PDF_HEADER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/aster-node/config:ASTER_PDF_HEADER::"
      },
      {
        "name": "ASTER_PDF_STAMP",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/aster-node/config:ASTER_PDF_STAMP::"
      },
      {
        "name": "ASTER_PDF_WATERMARK",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/aster-node/config:ASTER_PDF_WATERMARK::"
      },
      {
        "name": "ASTER_PRODUCT_CERTIFICATE_ATTACHMENTS_FOLDER_AWS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/aster-node/config:ASTER_PRODUCT_CERTIFICATE_ATTACHMENTS_FOLDER_AWS::"
      },
      {
        "name": "ASTER_REFERENCE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/aster-node/config:ASTER_REFERENCE::"
      },
      {
        "name": "ASTER_REFERENCE_TEMP",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/aster-node/config:ASTER_REFERENCE_TEMP::"
      },
      {
        "name": "ASTER_SENDEMAIl_STATUS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/aster-node/config:ASTER_SENDEMAIl_STATUS::"
      },
      {
        "name": "ASTER_VERIFICATION_DOCUMENTS_FOLDER_AWS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/aster-node/config:ASTER_VERIFICATION_DOCUMENTS_FOLDER_AWS::"
      },
      {
        "name": "AUTHSERVER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/aster-node/config:AUTHSERVER::"
      },
      {
        "name": "AWS_REGION_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/aster-node/config:AWS_REGION_NAME::"
      },
      {
        "name": "AWS_UPLOAD_ENV",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/aster-node/config:AWS_UPLOAD_ENV::"
      },
      {
        "name": "BUCKET_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/aster-node/config:BUCKET_NAME::"
      },
      {
        "name": "CLICKHOUSE_DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/aster-node/config:CLICKHOUSE_DB_HOST::"
      },
      {
        "name": "CLICKHOUSE_DB_PASS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/aster-node/config:CLICKHOUSE_DB_PASS::"
      },
      {
        "name": "CLICKHOUSE_DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/aster-node/config:CLICKHOUSE_DB_USER::"
      },
      {
        "name": "CLICKHOUSE_MYSQL_DB",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/aster-node/config:CLICKHOUSE_MYSQL_DB::"
      },
      {
        "name": "COA_COUNT_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/aster-node/config:COA_COUNT_API::"
      },
      {
        "name": "COA_UNAPPROVE_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/aster-node/config:COA_UNAPPROVE_API::"
      },
      {
        "name": "COUNTRY_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/aster-node/config:COUNTRY_API::"
      },
      {
        "name": "GLOBAL_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/aster-node/config:GLOBAL_API::"
      },
      {
        "name": "ENCRYPT_HEX_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-hex-key/config:ENCRYPT_HEX_KEY::"
      },
      {
        "name": "KPIDATABASE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/aster-node/config:KPIDATABASE::"
      },
      {
        "name": "MYSQL_DB",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/aster-node/config:MYSQL_DB::"
      },
      {
        "name": "NDA_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/aster-node/config:NDA_API::"
      },
      {
        "name": "N8N_EMAIL_WEBHOOK_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/aster-node/config:N8N_EMAIL_WEBHOOK_URL::"
      },
      {
        "name": "WORLD_MYSQL_DB",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/aster-node/config:WORLD_MYSQL_DB::"
      },
      {
        "name": "X_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/aster-node/config:X_API_KEY::"
      },
      {
        "name": "ENTITY_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/aster-node/config:ENTITY_URL::"
      },
      {
        "name": "KPI_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/aster-node/config:KPI_API::"
      },
      {
        "name": "GRAPH_CLIENT_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/aster-node/config:GRAPH_CLIENT_ID::"
      },
      {
        "name": "GRAPH_CLIENT_SECRETE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/aster-node/config:GRAPH_CLIENT_SECRETE::"
      },
      {
        "name": "SALES_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/aster-node/config:SALES_API::"
      },
      {
        "name": "GRAPH_TENANT_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/aster-node/config:GRAPH_TENANT_ID::"
      },
      {
        "name": "GRAPH_REDIRECT_URI",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/aster-node/config:GRAPH_REDIRECT_URI::"
      },
      {
        "name": "FRONTEND_APP_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/aster-node/config:FRONTEND_APP_URL::"
      },
      {
        "name": "DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/zylerpreliv-rds/config:host::"
      },
      {
        "name": "DB_PASS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/aster-node/config:password::"
      },
      {
        "name": "DB_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/zylerpreliv-rds/config:port::"
      },
      {
        "name": "DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/aster-node/config:username::"
      },
      {
        "name": "WORLD_DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/zylerpreliv-rds/config:host::"
      },
      {
        "name": "WORLD_DB_PASS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/zylerpreliv-rds/config:password::"
      },
      {
        "name": "WORLD_DB_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/zylerpreliv-rds/config:port::"
      },
      {
        "name": "WORLD_DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/zylerpreliv-rds/config:username::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/staging-aster-node",
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

resource "aws_ecs_task_definition" "staging_asterdocs_frontend_r4" {
  family                   = "staging-asterdocs-frontend"
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
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/asterdocs-frontend@sha256:063fae65950af6e26c19c77337485838d44bbc78d77f7c4696974032b3e4ca68",
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
        "value": "staging"
      }
    ],
    "secrets": [
      {
        "name": "VITE_API_TOKEN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/asterdocs-frontend/config:VITE_API_TOKEN::"
      },
      {
        "name": "VITE_ASTER_BACKEND_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/asterdocs-frontend/config:VITE_ASTER_BACKEND_URL::"
      },
      {
        "name": "VITE_ASTER_BACKEND_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/asterdocs-frontend/config:VITE_ASTER_BACKEND_API_URL::"
      },
      {
        "name": "VITE_ASTER_DOMAIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/asterdocs-frontend/config:VITE_ASTER_DOMAIN::"
      },
      {
        "name": "VITE_AUTH_PRODUCT_CODE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/asterdocs-frontend/config:VITE_AUTH_PRODUCT_CODE::"
      },
      {
        "name": "VITE_BASE_DOMAIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/asterdocs-frontend/config:VITE_BASE_DOMAIN::"
      },
      {
        "name": "VITE_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/asterdocs-frontend/config:VITE_BASE_URL::"
      },
      {
        "name": "VITE_CHECK_PRODUCT_EXIST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/asterdocs-frontend/config:VITE_CHECK_PRODUCT_EXIST::"
      },
      {
        "name": "VITE_COMPARE_FILES",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/asterdocs-frontend/config:VITE_COMPARE_FILES::"
      },
      {
        "name": "VITE_COUNTRY_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/asterdocs-frontend/config:VITE_COUNTRY_API_KEY::"
      },
      {
        "name": "VITE_EXTRACT_SPEC",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/asterdocs-frontend/config:VITE_EXTRACT_SPEC::"
      },
      {
        "name": "VITE_FIND_SUPPLIERS_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/asterdocs-frontend/config:VITE_FIND_SUPPLIERS_API_URL::"
      },
      {
        "name": "VITE_GET_PRODUCT_LIST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/asterdocs-frontend/config:VITE_GET_PRODUCT_LIST::"
      },
      {
        "name": "VITE_INVENTORY_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/asterdocs-frontend/config:VITE_INVENTORY_URL::"
      },
      {
        "name": "VITE_LOCATION_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/asterdocs-frontend/config:VITE_LOCATION_API::"
      },
      {
        "name": "VITE_SALES_BACKEND_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/asterdocs-frontend/config:VITE_SALES_BACKEND_API::"
      },
      {
        "name": "VITE_TASK_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/asterdocs-frontend/config:VITE_TASK_URL::"
      },
      {
        "name": "VITE_USER_M_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/asterdocs-frontend/config:VITE_USER_M_URL::"
      },
      {
        "name": "VITE_VERIFY_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/asterdocs-frontend/config:VITE_VERIFY_API_URL::"
      },
      {
        "name": "VITE_WITHOUT_TEMPLATE_COA",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/asterdocs-frontend/config:VITE_WITHOUT_TEMPLATE_COA::"
      },
      {
        "name": "VITE_MASTERCONFIG_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/asterdocs-frontend/config:VITE_MASTERCONFIG_API_URL::"
      },
      {
        "name": "VITE_GLOBALAPI_MASTERTABLES_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/asterdocs-frontend/config:VITE_GLOBALAPI_MASTERTABLES_URL::"
      },
      {
        "name": "VITE_ADMIN_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/asterdocs-frontend/config:VITE_ADMIN_BASE_URL::"
      },
      {
        "name": "VITE_ADMIN_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/asterdocs-frontend/config:VITE_ADMIN_URL::"
      },
      {
        "name": "VITE_ASTER_ADMIN_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/asterdocs-frontend/config:VITE_ASTER_ADMIN_URL::"
      },
      {
        "name": "VITE_AWS_UPLOAD_ENV",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/asterdocs-frontend/config:VITE_AWS_UPLOAD_ENV::"
      },
      {
        "name": "VITE_ENTITY_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/asterdocs-frontend/config:VITE_ENTITY_API_URL::"
      },
      {
        "name": "VITE_GLOBALAPI_COUNTRIES_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/asterdocs-frontend/config:VITE_GLOBALAPI_COUNTRIES_URL::"
      },
      {
        "name": "VITE_IMAGE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/asterdocs-frontend/config:VITE_IMAGE_URL::"
      },
      {
        "name": "VITE_MASTER_PRODUCT_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/asterdocs-frontend/config:VITE_MASTER_PRODUCT_API::"
      },
      {
        "name": "VITE_MASTERPRODUCT_IMAGE_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/asterdocs-frontend/config:VITE_MASTERPRODUCT_IMAGE_BASE_URL::"
      },
      {
        "name": "VITE_PERMISSION_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/asterdocs-frontend/config:VITE_PERMISSION_URL::"
      },
      {
        "name": "VITE_PURCHASE_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/asterdocs-frontend/config:VITE_PURCHASE_API_URL::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/staging-asterdocs-frontend",
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

resource "aws_ecs_task_definition" "staging_authserver_backend_r5" {
  family                   = "staging-authserver-backend"
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
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/authserver-backend@sha256:c6150e8e1de98f1706c0901cfdadfcc113b41bc1bc17493e2760207b8d68b417",
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
        "value": "staging"
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
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-backend/config:ALLOWED_API_DOMAINS::"
      },
      {
        "name": "AWS_STORAGE_BUCKET_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-backend/config:AWS_STORAGE_BUCKET_NAME::"
      },
      {
        "name": "DJANGO_ALLOWED_HOSTS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-backend/config:DJANGO_ALLOWED_HOSTS::"
      },
      {
        "name": "DJANGO_DEBUG",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-backend/config:DJANGO_DEBUG::"
      },
      {
        "name": "DJANGO_SECRET_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-backend/config:DJANGO_SECRET_KEY::"
      },
      {
        "name": "DJANGO_SETTINGS_MODULE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-backend/config:DJANGO_SETTINGS_MODULE::"
      },
      {
        "name": "ECOMM_SECRET_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-backend/config:ECOMM_SECRET_KEY::"
      },
      {
        "name": "EMAIL_FROM",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-backend/config:EMAIL_FROM::"
      },
      {
        "name": "EMAIL_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-backend/config:EMAIL_HOST::"
      },
      {
        "name": "EMAIL_HOST_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-backend/config:EMAIL_HOST_PASSWORD::"
      },
      {
        "name": "EMAIL_HOST_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-backend/config:EMAIL_HOST_USER::"
      },
      {
        "name": "EMAIL_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-backend/config:EMAIL_PORT::"
      },
      {
        "name": "EMAIL_USE_TLS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-backend/config:EMAIL_USE_TLS::"
      },
      {
        "name": "ENCRYPT_HEX_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-hex-key/config:ENCRYPT_HEX_KEY::"
      },
      {
        "name": "FRONTEND_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-backend/config:FRONTEND_URL::"
      },
      {
        "name": "GRAPH_MAIL_WEBHOOK_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-backend/config:GRAPH_MAIL_WEBHOOK_URL::"
      },
      {
        "name": "MICROSOFT_OIDC_CLIENT_ID",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-backend/config:MICROSOFT_OIDC_CLIENT_ID::"
      },
      {
        "name": "MICROSOFT_OIDC_CLIENT_SECRET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-backend/config:MICROSOFT_OIDC_CLIENT_SECRET::"
      },
      {
        "name": "MICROSOFT_OIDC_REDIRECT_URI",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-backend/config:MICROSOFT_OIDC_REDIRECT_URI::"
      },
      {
        "name": "MONGO_CLIENT_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-backend/config:MONGO_CLIENT_HOST::"
      },
      {
        "name": "MONGO_DB_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-backend/config:MONGO_DB_NAME::"
      },
      {
        "name": "MYSQL_AUTH_DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/zylerpreliv-rds/config:host::"
      },
      {
        "name": "MYSQL_AUTH_DB_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-backend/config:MYSQL_AUTH_DB_NAME::"
      },
      {
        "name": "MYSQL_AUTH_DB_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-backend/config:password::"
      },
      {
        "name": "MYSQL_AUTH_DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-backend/config:username::"
      },
      {
        "name": "MYSQL_DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/zylerpreliv-rds/config:host::"
      },
      {
        "name": "MYSQL_DB_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-backend/config:MYSQL_DB_NAME::"
      },
      {
        "name": "MYSQL_DB_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-backend/config:password::"
      },
      {
        "name": "MYSQL_DB_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/zylerpreliv-rds/config:port::"
      },
      {
        "name": "MYSQL_DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-backend/config:username::"
      },
      {
        "name": "MYSQL_HRMS_DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/zylerpreliv-rds/config:host::"
      },
      {
        "name": "MYSQL_HRMS_DB_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-backend/config:MYSQL_HRMS_DB_NAME::"
      },
      {
        "name": "MYSQL_HRMS_DB_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-backend/config:password::"
      },
      {
        "name": "MYSQL_HRMS_DB_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/zylerpreliv-rds/config:port::"
      },
      {
        "name": "MYSQL_HRMS_DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-backend/config:username::"
      },
      {
        "name": "MYSQL_ZYLER_DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/zylerpreliv-rds/config:host::"
      },
      {
        "name": "MYSQL_ZYLER_DB_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-backend/config:MYSQL_ZYLER_DB_NAME::"
      },
      {
        "name": "MYSQL_ZYLER_DB_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-backend/config:password::"
      },
      {
        "name": "MYSQL_ZYLER_DB_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/zylerpreliv-rds/config:port::"
      },
      {
        "name": "MYSQL_ZYLER_DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-backend/config:username::"
      },
      {
        "name": "NEXT_CLICKHOUSE_DATABASE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-backend/config:NEXT_CLICKHOUSE_DATABASE::"
      },
      {
        "name": "NEXT_CLICKHOUSE_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-backend/config:NEXT_CLICKHOUSE_HOST::"
      },
      {
        "name": "NEXT_CLICKHOUSE_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-backend/config:NEXT_CLICKHOUSE_PASSWORD::"
      },
      {
        "name": "NEXT_CLICKHOUSE_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-backend/config:NEXT_CLICKHOUSE_USER::"
      },
      {
        "name": "WORK_FLOW_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-backend/config:WORK_FLOW_URL::"
      },
      {
        "name": "SERVICE_TOKEN_TTL_SECONDS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-backend/config:SERVICE_TOKEN_TTL_SECONDS::"
      },
      {
        "name": "INTERNAL_SERVICE_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-backend/config:INTERNAL_SERVICE_API_KEY::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/staging-authserver-backend",
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

resource "aws_ecs_task_definition" "staging_authserver_frontend_r5" {
  family                   = "staging-authserver-frontend"
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
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/authserver-frontend@sha256:33cb9aee61b2f9b6550a8a63a09cd397bb05dc58cf51f4ee7300c9fe68acba2e",
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
        "value": "staging"
      }
    ],
    "secrets": [
      {
        "name": "VITE_APP_RUNNER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-frontend/config:VITE_APP_RUNNER::"
      },
      {
        "name": "VITE_CLOUDFRONT_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-frontend/config:VITE_CLOUDFRONT_URL::"
      },
      {
        "name": "VITE_COOKIE_DOMAIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-frontend/config:VITE_COOKIE_DOMAIN::"
      },
      {
        "name": "VITE_COOKIE_SAME_SITE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-frontend/config:VITE_COOKIE_SAME_SITE::"
      },
      {
        "name": "VITE_COOKIE_SECURE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-frontend/config:VITE_COOKIE_SECURE::"
      },
      {
        "name": "VITE_DEFAULT_COOKIE_DOMAIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-frontend/config:VITE_DEFAULT_COOKIE_DOMAIN::"
      },
      {
        "name": "VITE_DOMAIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-frontend/config:VITE_DOMAIN::"
      },
      {
        "name": "VITE_ETL_API_AUTH_TOKEN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-frontend/config:VITE_ETL_API_AUTH_TOKEN::"
      },
      {
        "name": "VITE_ETL_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-frontend/config:VITE_ETL_API_URL::"
      },
      {
        "name": "VITE_FINANCE_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-frontend/config:VITE_FINANCE_API::"
      },
      {
        "name": "VITE_ASTER_API_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-frontend/config:VITE_ASTER_API_BASE_URL::"
      },
      {
        "name": "VITE_GLOBAL_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-frontend/config:VITE_GLOBAL_API::"
      },
      {
        "name": "VITE_GOOGLE_MAPS_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-frontend/config:VITE_GOOGLE_MAPS_API_KEY::"
      },
      {
        "name": "VITE_HRMS_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-frontend/config:VITE_HRMS_API::"
      },
      {
        "name": "VITE_INVENTORY_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-frontend/config:VITE_INVENTORY_API::"
      },
      {
        "name": "VITE_MASTER_CONFIG_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-frontend/config:VITE_MASTER_CONFIG_URL::"
      },
      {
        "name": "VITE_MASTER_PRODUCT_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-frontend/config:VITE_MASTER_PRODUCT_URL::"
      },
      {
        "name": "VITE_MICROSOFT_SSO_ENABLED",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-frontend/config:VITE_MICROSOFT_SSO_ENABLED::"
      },
      {
        "name": "VITE_NEXUS_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-frontend/config:VITE_NEXUS_API_URL::"
      },
      {
        "name": "VITE_PERMISSION_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-frontend/config:VITE_PERMISSION_KEY::"
      },
      {
        "name": "VITE_PERMISSION_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-frontend/config:VITE_PERMISSION_URL::"
      },
      {
        "name": "VITE_PRODUCT_CODE",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-frontend/config:VITE_PRODUCT_CODE::"
      },
      {
        "name": "VITE_PRODUCT_URL_1",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-frontend/config:VITE_PRODUCT_URL_1::"
      },
      {
        "name": "VITE_PRODUCT_URL_10",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-frontend/config:VITE_PRODUCT_URL_10::"
      },
      {
        "name": "VITE_PRODUCT_URL_12",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-frontend/config:VITE_PRODUCT_URL_12::"
      },
      {
        "name": "VITE_PRODUCT_URL_16",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-frontend/config:VITE_PRODUCT_URL_16::"
      },
      {
        "name": "VITE_PRODUCT_URL_3",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-frontend/config:VITE_PRODUCT_URL_3::"
      },
      {
        "name": "VITE_PRODUCT_URL_33",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-frontend/config:VITE_PRODUCT_URL_33::"
      },
      {
        "name": "VITE_PURCHSE_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-frontend/config:VITE_PURCHSE_API::"
      },
      {
        "name": "VITE_SALES_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-frontend/config:VITE_SALES_API::"
      },
      {
        "name": "VITE_SOURCING_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-frontend/config:VITE_SOURCING_API::"
      },
      {
        "name": "VITE_SUPPLIERS_DISCOVERY_API",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-frontend/config:VITE_SUPPLIERS_DISCOVERY_API::"
      },
      {
        "name": "VITE_SUPPLIER_API_BASE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-frontend/config:VITE_SUPPLIER_API_BASE_URL::"
      },
      {
        "name": "VITE_VMI_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-frontend/config:VITE_VMI_API_URL::"
      },
      {
        "name": "VITE_VMI_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/authserver-frontend/config:VITE_VMI_URL::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/staging-authserver-frontend",
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

resource "aws_ecs_task_definition" "staging_supplier_kpi_backend_v2_r1" {
  family                   = "staging-supplier-kpi-backend-v2"
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
        "value": "staging"
      }
    ],
    "secrets": [
      {
        "name": "DB_HOST",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/supplier-kpi-backend-v2/config:DB_HOST::"
      },
      {
        "name": "DB_PORT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/supplier-kpi-backend-v2/config:DB_PORT::"
      },
      {
        "name": "DB_USER",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/supplier-kpi-backend-v2/config:DB_USER::"
      },
      {
        "name": "DB_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/supplier-kpi-backend-v2/config:DB_NAME::"
      },
      {
        "name": "DB_CONNECTION_LIMIT",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/supplier-kpi-backend-v2/config:DB_CONNECTION_LIMIT::"
      },
      {
        "name": "DB_SSL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/supplier-kpi-backend-v2/config:DB_SSL::"
      },
      {
        "name": "DB_SSL_REJECT_UNAUTHORIZED",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/supplier-kpi-backend-v2/config:DB_SSL_REJECT_UNAUTHORIZED::"
      },
      {
        "name": "AUTH_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/supplier-kpi-backend-v2/config:AUTH_URL::"
      },
      {
        "name": "COOKIE_DOMAIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/supplier-kpi-backend-v2/config:COOKIE_DOMAIN::"
      },
      {
        "name": "PROFILE_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/supplier-kpi-backend-v2/config:PROFILE_URL::"
      },
      {
        "name": "ALLOWED_ORIGINS",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/supplier-kpi-backend-v2/config:ALLOWED_ORIGINS::"
      },
      {
        "name": "N8N_RATING_WEBHOOK_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/supplier-kpi-backend-v2/config:N8N_RATING_WEBHOOK_URL::"
      },
      {
        "name": "SUPPLIER_DB_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/supplier-kpi-backend-v2/config:SUPPLIER_DB_NAME::"
      },
      {
        "name": "ASTERDOCS_DB_NAME",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/supplier-kpi-backend-v2/config:ASTERDOCS_DB_NAME::"
      },
      {
        "name": "ASTER_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/supplier-kpi-backend-v2/config:ASTER_API_URL::"
      },
      {
        "name": "ASTER_RISK_API_URL",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/supplier-kpi-backend-v2/config:ASTER_RISK_API_URL::"
      },
      {
        "name": "PLATFORM_OPERATOR_DOMAIN",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/supplier-kpi-backend-v2/config:PLATFORM_OPERATOR_DOMAIN::"
      },
      {
        "name": "AWS_REGION",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/supplier-kpi-backend-v2/config:AWS_REGION::"
      },
      {
        "name": "AWS_S3_BUCKET",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/supplier-kpi-backend-v2/config:AWS_S3_BUCKET::"
      },
      {
        "name": "UPLOAD_DIR",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/supplier-kpi-backend-v2/config:UPLOAD_DIR::"
      },
      {
        "name": "DB_PASSWORD",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/supplier-kpi-backend-v2/config:DB_PASSWORD::"
      },
      {
        "name": "ENCRYPT_HEX_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/supplier-kpi-backend-v2/config:ENCRYPT_HEX_KEY::"
      },
      {
        "name": "OPENAI_API_KEY",
        "valueFrom": "arn:aws:secretsmanager:us-east-2:842676018479:secret:stg/supplier-kpi-backend-v2/config:OPENAI_API_KEY::"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/staging-supplier-kpi-backend-v2",
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

resource "aws_ecs_task_definition" "staging_supplier_kpi_frontend_r12" {
  family                   = "staging-supplier-kpi-frontend"
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
    "image": "842676018479.dkr.ecr.us-east-2.amazonaws.com/supplier-kpi-frontend@sha256:9164afe2745197841ca41a0a5ee28f000197f1adb0c69716d1122c4ba7599de5",
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
        "value": "staging"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/staging-supplier-kpi-frontend",
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
