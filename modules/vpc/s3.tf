# ════════════════════════════════════════════════════════════════
# S3 Buckets — us-east-2 (26 buckets, default provider)
# ════════════════════════════════════════════════════════════════

resource "aws_s3_bucket" "application_security_dbi360" {
  bucket = "application-security-dbi360"
}

resource "aws_s3_bucket" "automatic_s3_upload_test_2026" {
  bucket = "automatic-s3-upload-test-2026"
}
resource "aws_s3_bucket_versioning" "automatic_s3_upload_test_2026" {
  bucket = "automatic-s3-upload-test-2026"
  versioning_configuration { status = "Enabled" }
}

resource "aws_s3_bucket" "aws_cloudtrail_logs_842676018479_19295366" {
  bucket = "aws-cloudtrail-logs-842676018479-19295366"
}

resource "aws_s3_bucket" "aws_config_bucket_842676018479" {
  bucket = "aws-config-bucket-842676018479"
}

resource "aws_s3_bucket" "cf_templates_1wuppkhriq7j1_us_east_2" {
  bucket = "cf-templates-1wuppkhriq7j1-us-east-2"
}

resource "aws_s3_bucket" "clickhouse_test_dbi360" {
  bucket = "clickhouse-test-dbi360"
}

resource "aws_s3_bucket" "dbi_central_object_vault_media" {
  bucket = "dbi-central-object-vault-media"
}

resource "aws_s3_bucket" "dbi_findsuppliers_dev" {
  bucket = "dbi-findsuppliers-dev"
}

resource "aws_s3_bucket" "dbi_sso_demo" {
  bucket = "dbi-sso-demo"
}

resource "aws_s3_bucket" "dbi_taskmanagement" {
  bucket = "dbi-taskmanagement"
}

resource "aws_s3_bucket" "dbi360_cloudtrail_logs" {
  bucket = "dbi360-cloudtrail-logs"
}

resource "aws_s3_bucket" "dbi360_devtest_terraform_state" {
  bucket = "dbi360-devtest-terraform-state"
}
resource "aws_s3_bucket_versioning" "dbi360_devtest_terraform_state" {
  bucket = "dbi360-devtest-terraform-state"
  versioning_configuration { status = "Enabled" }
}

resource "aws_s3_bucket" "dev_nexus_data_downloads" {
  bucket = "dev-nexus-data-downloads"
}

resource "aws_s3_bucket" "dietary_business_intelligence_security_packages_20250809" {
  bucket = "dietary-business-intelligence-security-packages-20250809"
}
resource "aws_s3_bucket_versioning" "dietary_business_intelligence_security_packages_20250809" {
  bucket = "dietary-business-intelligence-security-packages-20250809"
  versioning_configuration { status = "Enabled" }
}

resource "aws_s3_bucket" "etl_entity_images" {
  bucket = "etl-entity-images"
}
resource "aws_s3_bucket_versioning" "etl_entity_images" {
  bucket = "etl-entity-images"
  versioning_configuration { status = "Enabled" }
}

resource "aws_s3_bucket" "greenjeeva_documents" {
  bucket = "greenjeeva-documents"
}

resource "aws_s3_bucket" "management_api_activity_cloudtrail" {
  bucket = "management-api-activity-cloudtrail"
}

resource "aws_s3_bucket" "nexus_devpipeline" {
  bucket = "nexus-devpipeline"
}

resource "aws_s3_bucket" "nexusdata_dev" {
  bucket = "nexusdata-dev"
}

resource "aws_s3_bucket" "nexusdev_pipeline" {
  bucket = "nexusdev-pipeline"
}
resource "aws_s3_bucket_versioning" "nexusdev_pipeline" {
  bucket = "nexusdev-pipeline"
  versioning_configuration { status = "Enabled" }
}

resource "aws_s3_bucket" "samplepre" {
  bucket = "samplepre"
}

resource "aws_s3_bucket" "sso_sourcing_documents" {
  bucket = "sso-sourcing-documents"
}
resource "aws_s3_bucket_versioning" "sso_sourcing_documents" {
  bucket = "sso-sourcing-documents"
  versioning_configuration { status = "Enabled" }
}

resource "aws_s3_bucket" "test_company_offboarding_backups" {
  bucket = "test-company-offboarding-backups"
}
resource "aws_s3_bucket_versioning" "test_company_offboarding_backups" {
  bucket = "test-company-offboarding-backups"
  versioning_configuration { status = "Enabled" }
}

resource "aws_s3_bucket" "testdbdackup" {
  bucket = "testdbdackup"
}
resource "aws_s3_bucket_versioning" "testdbdackup" {
  bucket = "testdbdackup"
  versioning_configuration { status = "Enabled" }
}

resource "aws_s3_bucket" "testgj_developmentdoc" {
  bucket = "testgj-developmentdoc"
}
resource "aws_s3_bucket_versioning" "testgj_developmentdoc" {
  bucket = "testgj-developmentdoc"
  versioning_configuration { status = "Enabled" }
}

resource "aws_s3_bucket" "ticketing_system_media" {
  bucket = "ticketing-system-media"
}
resource "aws_s3_bucket_versioning" "ticketing_system_media" {
  bucket = "ticketing-system-media"
  versioning_configuration { status = "Enabled" }
}

# ════════════════════════════════════════════════════════════════
# S3 Buckets — us-east-1 (5 buckets)
# ════════════════════════════════════════════════════════════════

resource "aws_s3_bucket" "cf_templates_1wuppkhriq7j1_us_east_1" {
  provider = aws.us_east_1
  bucket   = "cf-templates-1wuppkhriq7j1-us-east-1"
}

resource "aws_s3_bucket" "dbi_findsuppliers" {
  provider = aws.us_east_1
  bucket   = "dbi-findsuppliers"
}



resource "aws_s3_bucket" "test_jeeva_python_test" {
  provider = aws.us_east_1
  bucket   = "test-jeeva-python-test"
}

# ════════════════════════════════════════════════════════════════
# S3 Buckets — ap-south-1 (5 buckets)
# ════════════════════════════════════════════════════════════════

resource "aws_s3_bucket" "aster_test" {
  provider = aws.ap_south_1
  bucket   = "aster-test"
}
resource "aws_s3_bucket_versioning" "aster_test" {
  provider = aws.ap_south_1
  bucket   = "aster-test"
  versioning_configuration { status = "Enabled" }
}

resource "aws_s3_bucket" "audit_demo_dbi" {
  provider = aws.ap_south_1
  bucket   = "audit-demo-dbi"
}
resource "aws_s3_bucket_versioning" "audit_demo_dbi" {
  provider = aws.ap_south_1
  bucket   = "audit-demo-dbi"
  versioning_configuration { status = "Enabled" }
}

resource "aws_s3_bucket" "demohrms" {
  provider = aws.ap_south_1
  bucket   = "demohrms"
}

resource "aws_s3_bucket" "users_backup_data_dbi360" {
  provider = aws.ap_south_1
  bucket   = "users-backup-data-dbi360"
}

# ════════════════════════════════════════════════════════════════
# S3 Buckets — us-west-1 (1 bucket)
# ════════════════════════════════════════════════════════════════

resource "aws_s3_bucket" "jhcare" {
  provider = aws.us_west_1
  bucket   = "jhcare"
}
resource "aws_s3_bucket_versioning" "jhcare" {
  provider = aws.us_west_1
  bucket   = "jhcare"
  versioning_configuration { status = "Enabled" }
}

# ════════════════════════════════════════════════════════════════
# S3 Buckets — us-west-2 (2 buckets)
# ════════════════════════════════════════════════════════════════

resource "aws_s3_bucket" "jeevagurukul" {
  provider = aws.us_west_2
  bucket   = "jeevagurukul"
}

resource "aws_s3_bucket" "ssopublic_objects" {
  provider = aws.us_west_2
  bucket   = "ssopublic-objects"
}
