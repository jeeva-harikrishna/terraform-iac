# EC2 Instances
# ami is set as a placeholder only — ignore_changes prevents Terraform from modifying it

resource "aws_instance" "dbi360_wp_php" {
  ami           = "placeholder"
  instance_type = var.instance_types["dbi360_wp_php"]
  tags = { Name = "Dbi360_WP_PHP" }
  lifecycle { ignore_changes = [ami, user_data, key_name, subnet_id, vpc_security_group_ids, associate_public_ip_address, root_block_device, ebs_block_device] }
}
resource "aws_instance" "aster_wp" {
  ami           = "placeholder"
  instance_type = var.instance_types["aster_wp"]
  tags = { Name = "Aster_wp" }
  lifecycle { ignore_changes = [ami, user_data, key_name, subnet_id, vpc_security_group_ids, associate_public_ip_address, root_block_device, ebs_block_device] }
}
resource "aws_instance" "zyler_wp" {
  ami           = "placeholder"
  instance_type = var.instance_types["zyler_wp"]
  tags = { Name = "zyler_wp" }
  lifecycle { ignore_changes = [ami, user_data, key_name, subnet_id, vpc_security_group_ids, associate_public_ip_address, root_block_device, ebs_block_device] }
}
resource "aws_instance" "confluxhr_wp" {
  ami           = "placeholder"
  instance_type = var.instance_types["confluxhr_wp"]
  tags = { Name = "confluxhr_wp" }
  lifecycle { ignore_changes = [ami, user_data, key_name, subnet_id, vpc_security_group_ids, associate_public_ip_address, root_block_device, ebs_block_device] }
}
resource "aws_instance" "gomeet_wp" {
  ami           = "placeholder"
  instance_type = var.instance_types["gomeet_wp"]
  tags = { Name = "Gomeet_wp" }
  lifecycle { ignore_changes = [ami, user_data, key_name, subnet_id, vpc_security_group_ids, associate_public_ip_address, root_block_device, ebs_block_device] }
}
resource "aws_instance" "nexus_demo" {
  ami           = "placeholder"
  instance_type = var.instance_types["nexus_demo"]
  tags = { Name = "nexus_demo" }
  lifecycle { ignore_changes = [ami, user_data, key_name, subnet_id, vpc_security_group_ids, associate_public_ip_address, root_block_device, ebs_block_device] }
}
resource "aws_instance" "gj_ca_wp_website" {
  ami           = "placeholder"
  instance_type = var.instance_types["gj_ca_wp_website"]
  tags = { Name = "GJ_CA_wp website" }
  lifecycle { ignore_changes = [ami, user_data, key_name, subnet_id, vpc_security_group_ids, associate_public_ip_address, root_block_device, ebs_block_device] }
}
resource "aws_instance" "etl_akhilesh" {
  ami           = "placeholder"
  instance_type = var.instance_types["etl_akhilesh"]
  tags = { Name = "ETL - Akhilesh" }
  lifecycle { ignore_changes = [ami, user_data, key_name, subnet_id, vpc_security_group_ids, associate_public_ip_address, root_block_device, ebs_block_device] }
}
resource "aws_instance" "jeevahealthcare_wp_n" {
  ami           = "placeholder"
  instance_type = var.instance_types["jeevahealthcare_wp_n"]
  tags = { Name = "JeevaHealthCare_wp n" }
  lifecycle { ignore_changes = [ami, user_data, key_name, subnet_id, vpc_security_group_ids, associate_public_ip_address, root_block_device, ebs_block_device] }
}
resource "aws_instance" "sanvi_ecr" {
  ami           = "placeholder"
  instance_type = var.instance_types["sanvi_ecr"]
  tags = { Name = "sanvi_ecr" }
  lifecycle { ignore_changes = [ami, user_data, key_name, subnet_id, vpc_security_group_ids, associate_public_ip_address, root_block_device, ebs_block_device] }
}
resource "aws_instance" "rds_client" {
  ami           = "placeholder"
  instance_type = var.instance_types["rds_client"]
  tags = { Name = "rds_client" }
  lifecycle { ignore_changes = [ami, user_data, key_name, subnet_id, vpc_security_group_ids, associate_public_ip_address, root_block_device, ebs_block_device] }
}
resource "aws_instance" "etl_scrapper_akhilesh" {
  ami           = "placeholder"
  instance_type = var.instance_types["etl_scrapper_akhilesh"]
  tags = { Name = "Etl_Scrapper - Akhilesh" }
  lifecycle { ignore_changes = [ami, user_data, key_name, subnet_id, vpc_security_group_ids, associate_public_ip_address, root_block_device, ebs_block_device] }
}
resource "aws_instance" "etl_dev_scrapper" {
  ami           = "placeholder"
  instance_type = var.instance_types["etl_dev_scrapper"]
  tags = { Name = "Etl_Dev_Scrapper" }
  lifecycle { ignore_changes = [ami, user_data, key_name, subnet_id, vpc_security_group_ids, associate_public_ip_address, root_block_device, ebs_block_device] }
}
resource "aws_instance" "zyler_old" {
  ami           = "placeholder"
  instance_type = var.instance_types["zyler_old"]
  tags = { Name = "Zyler-old" }
  lifecycle { ignore_changes = [ami, user_data, key_name, subnet_id, vpc_security_group_ids, associate_public_ip_address, root_block_device, ebs_block_device] }
}
resource "aws_instance" "app_security_test" {
  ami           = "placeholder"
  instance_type = var.instance_types["app_security_test"]
  tags = { Name = "App-Security-TEST" }
  lifecycle { ignore_changes = [ami, user_data, key_name, subnet_id, vpc_security_group_ids, associate_public_ip_address, root_block_device, ebs_block_device] }
}
resource "aws_instance" "ingrediant_fetch_akhilesh" {
  ami           = "placeholder"
  instance_type = var.instance_types["ingrediant_fetch_akhilesh"]
  tags = { Name = "Ingrediant-Fetch - Akhilesh" }
  lifecycle { ignore_changes = [ami, user_data, key_name, subnet_id, vpc_security_group_ids, associate_public_ip_address, root_block_device, ebs_block_device] }
}
resource "aws_instance" "git_dev" {
  ami           = "placeholder"
  instance_type = var.instance_types["git_dev"]
  tags = { Name = "git-dev" }
  lifecycle { ignore_changes = [ami, user_data, key_name, subnet_id, vpc_security_group_ids, associate_public_ip_address, root_block_device, ebs_block_device] }
}
resource "aws_instance" "github_actions_runner" {
  ami           = "placeholder"
  instance_type = var.instance_types["github_actions_runner"]
  tags = { Name = "github-actions-runner" }
  lifecycle { ignore_changes = [ami, user_data, key_name, subnet_id, vpc_security_group_ids, associate_public_ip_address, root_block_device, ebs_block_device] }
}
resource "aws_instance" "windows_server_akhilesh" {
  ami           = "placeholder"
  instance_type = var.instance_types["windows_server_akhilesh"]
  tags = { Name = "windows server - AKhilesh" }
  lifecycle { ignore_changes = [ami, user_data, key_name, subnet_id, vpc_security_group_ids, associate_public_ip_address, root_block_device, ebs_block_device] }
}
resource "aws_instance" "dev_ch_db_dipti_nayak" {
  ami           = "placeholder"
  instance_type = var.instance_types["dev_ch_db_dipti_nayak"]
  tags = { Name = "dev-ch-db - Dipti Nayak" }
  lifecycle { ignore_changes = [ami, user_data, key_name, subnet_id, vpc_security_group_ids, associate_public_ip_address, root_block_device, ebs_block_device] }
}
resource "aws_instance" "kafka_uma" {
  ami           = "placeholder"
  instance_type = var.instance_types["kafka_uma"]
  tags = { Name = "kafka-uma" }
  lifecycle { ignore_changes = [ami, user_data, key_name, subnet_id, vpc_security_group_ids, associate_public_ip_address, root_block_device, ebs_block_device] }
}
resource "aws_instance" "dbi_chat_widget" {
  ami           = "placeholder"
  instance_type = var.instance_types["dbi_chat_widget"]
  tags = { Name = "dbi-chat-widget" }
  lifecycle { ignore_changes = [ami, user_data, key_name, subnet_id, vpc_security_group_ids, associate_public_ip_address, root_block_device, ebs_block_device] }
}
resource "aws_instance" "click_house_demo_new" {
  ami           = "placeholder"
  instance_type = var.instance_types["click_house_demo_new"]
  tags = { Name = "Click-house-Demo-New" }
  lifecycle { ignore_changes = [ami, user_data, key_name, subnet_id, vpc_security_group_ids, associate_public_ip_address, root_block_device, ebs_block_device] }
}
resource "aws_instance" "clickhouse_server_demo" {
  ami           = "ami-0503ed50b531cc445"
  instance_type = var.instance_types["clickhouse_server_demo"]
  tags = { Name = "ClickHouse-Server-demo" }
  launch_template {
    id      = "lt-0d06b13498590a12e"
    version = "1"
  }
  lifecycle { ignore_changes = [ami, user_data, key_name, subnet_id, vpc_security_group_ids, associate_public_ip_address, root_block_device, ebs_block_device, launch_template] }
}
resource "aws_instance" "webserver" {
  ami           = "placeholder"
  instance_type = var.instance_types["webserver"]
  tags = { Name = "webserver" }
  lifecycle { ignore_changes = [ami, user_data, key_name, subnet_id, vpc_security_group_ids, associate_public_ip_address, root_block_device, ebs_block_device] }
}
