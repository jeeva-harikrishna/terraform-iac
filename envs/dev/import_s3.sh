#!/bin/bash
set -e
cd ~/terraform-iac/envs/dev

# ── us-east-2 (26) ──────────────────────────────────────────────
terraform import 'module.vpc.aws_s3_bucket.application_security_dbi360'                                    application-security-dbi360
terraform import 'module.vpc.aws_s3_bucket.automatic_s3_upload_test_2026'                                  automatic-s3-upload-test-2026
terraform import 'module.vpc.aws_s3_bucket_versioning.automatic_s3_upload_test_2026'                       automatic-s3-upload-test-2026
terraform import 'module.vpc.aws_s3_bucket.aws_cloudtrail_logs_842676018479_19295366'                      aws-cloudtrail-logs-842676018479-19295366
terraform import 'module.vpc.aws_s3_bucket.aws_config_bucket_842676018479'                                 aws-config-bucket-842676018479
terraform import 'module.vpc.aws_s3_bucket.cf_templates_1wuppkhriq7j1_us_east_2'                           cf-templates-1wuppkhriq7j1-us-east-2
terraform import 'module.vpc.aws_s3_bucket.clickhouse_test_dbi360'                                         clickhouse-test-dbi360
terraform import 'module.vpc.aws_s3_bucket.dbi_central_object_vault_media'                                 dbi-central-object-vault-media
terraform import 'module.vpc.aws_s3_bucket.dbi_findsuppliers_dev'                                          dbi-findsuppliers-dev
terraform import 'module.vpc.aws_s3_bucket.dbi_sso_demo'                                                   dbi-sso-demo
terraform import 'module.vpc.aws_s3_bucket.dbi_taskmanagement'                                             dbi-taskmanagement
terraform import 'module.vpc.aws_s3_bucket.dbi360_cloudtrail_logs'                                         dbi360-cloudtrail-logs
terraform import 'module.vpc.aws_s3_bucket.dbi360_devtest_terraform_state'                                 dbi360-devtest-terraform-state
terraform import 'module.vpc.aws_s3_bucket_versioning.dbi360_devtest_terraform_state'                      dbi360-devtest-terraform-state
terraform import 'module.vpc.aws_s3_bucket.dev_nexus_data_downloads'                                       dev-nexus-data-downloads
terraform import 'module.vpc.aws_s3_bucket.dietary_business_intelligence_security_packages_20250809'       dietary-business-intelligence-security-packages-20250809
terraform import 'module.vpc.aws_s3_bucket_versioning.dietary_business_intelligence_security_packages_20250809' dietary-business-intelligence-security-packages-20250809
terraform import 'module.vpc.aws_s3_bucket.etl_entity_images'                                              etl-entity-images
terraform import 'module.vpc.aws_s3_bucket_versioning.etl_entity_images'                                   etl-entity-images
terraform import 'module.vpc.aws_s3_bucket.greenjeeva_documents'                                           greenjeeva-documents
terraform import 'module.vpc.aws_s3_bucket.management_api_activity_cloudtrail'                             management-api-activity-cloudtrail
terraform import 'module.vpc.aws_s3_bucket.nexus_devpipeline'                                              nexus-devpipeline
terraform import 'module.vpc.aws_s3_bucket.nexusdata_dev'                                                  nexusdata-dev
terraform import 'module.vpc.aws_s3_bucket.nexusdev_pipeline'                                              nexusdev-pipeline
terraform import 'module.vpc.aws_s3_bucket_versioning.nexusdev_pipeline'                                   nexusdev-pipeline
terraform import 'module.vpc.aws_s3_bucket.samplepre'                                                      samplepre
terraform import 'module.vpc.aws_s3_bucket.sso_sourcing_documents'                                         sso-sourcing-documents
terraform import 'module.vpc.aws_s3_bucket_versioning.sso_sourcing_documents'                              sso-sourcing-documents
terraform import 'module.vpc.aws_s3_bucket.test_company_offboarding_backups'                               test-company-offboarding-backups
terraform import 'module.vpc.aws_s3_bucket_versioning.test_company_offboarding_backups'                    test-company-offboarding-backups
terraform import 'module.vpc.aws_s3_bucket.testdbdackup'                                                   testdbdackup
terraform import 'module.vpc.aws_s3_bucket_versioning.testdbdackup'                                        testdbdackup
terraform import 'module.vpc.aws_s3_bucket.testgj_developmentdoc'                                          testgj-developmentdoc
terraform import 'module.vpc.aws_s3_bucket_versioning.testgj_developmentdoc'                               testgj-developmentdoc
terraform import 'module.vpc.aws_s3_bucket.ticketing_system_media'                                         ticketing-system-media
terraform import 'module.vpc.aws_s3_bucket_versioning.ticketing_system_media'                              ticketing-system-media

# ── us-east-1 (5) ───────────────────────────────────────────────
terraform import 'module.vpc.aws_s3_bucket.cf_templates_1wuppkhriq7j1_us_east_1'   cf-templates-1wuppkhriq7j1-us-east-1
terraform import 'module.vpc.aws_s3_bucket.dbi_findsuppliers'                       dbi-findsuppliers
terraform import 'module.vpc.aws_s3_bucket.jeeva_exit_employees_data'               jeeva-exit-employees-data
terraform import 'module.vpc.aws_s3_bucket.test_dbi_jeeva_kartik'                   test-dbi-jeeva-kartik
terraform import 'module.vpc.aws_s3_bucket.test_jeeva_python_test'                  test-jeeva-python-test

# ── ap-south-1 (5) ──────────────────────────────────────────────
terraform import 'module.vpc.aws_s3_bucket.aster_test'                              aster-test
terraform import 'module.vpc.aws_s3_bucket_versioning.aster_test'                   aster-test
terraform import 'module.vpc.aws_s3_bucket.audit_demo_dbi'                          audit-demo-dbi
terraform import 'module.vpc.aws_s3_bucket_versioning.audit_demo_dbi'               audit-demo-dbi
terraform import 'module.vpc.aws_s3_bucket.demohrms'                                demohrms
terraform import 'module.vpc.aws_s3_bucket.test_dbi_kartik'                         test-dbi-kartik
terraform import 'module.vpc.aws_s3_bucket.users_backup_data_dbi360'                users-backup-data-dbi360

# ── us-west-1 (1) ───────────────────────────────────────────────
terraform import 'module.vpc.aws_s3_bucket.jhcare'                                  jhcare
terraform import 'module.vpc.aws_s3_bucket_versioning.jhcare'                       jhcare

# ── us-west-2 (2) ───────────────────────────────────────────────
terraform import 'module.vpc.aws_s3_bucket.jeevagurukul'                            jeevagurukul
terraform import 'module.vpc.aws_s3_bucket.ssopublic_objects'                       ssopublic-objects

echo "All S3 imports complete"
