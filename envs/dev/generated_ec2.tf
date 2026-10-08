# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform from "arn:aws:elasticloadbalancing:us-east-2:842676018479:listener/app/staging-alb/1229cd539c766795/d55128b411462b3b"
resource "aws_lb_listener" "staging_alb_https" {
  alpn_policy                          = null
  certificate_arn                      = "arn:aws:acm:us-east-2:842676018479:certificate/ee42438f-4c73-4cd9-8984-937778a4fd1f"
  load_balancer_arn                    = "arn:aws:elasticloadbalancing:us-east-2:842676018479:loadbalancer/app/staging-alb/1229cd539c766795"
  port                                 = 443
  protocol                             = "HTTPS"
  routing_http_response_server_enabled = true
  ssl_policy                           = "ELBSecurityPolicy-TLS13-1-2-Res-PQ-2025-09"
  tags                                 = {}
  default_action {
    order            = 1
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/staging-supplier-kpi-frontend-tg/99c49177588a0212"
    type             = "forward"
    forward {
      stickiness {
        duration = 3600
        enabled  = false
      }
      target_group {
        arn    = "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/staging-supplier-kpi-frontend-tg/99c49177588a0212"
        weight = 10
      }
    }
  }
  mutual_authentication {
    ignore_client_certificate_expiry = false
    mode                             = "off"
    trust_store_arn                  = null
  }
}

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform
resource "aws_lb_listener" "security_alb_https" {
  alpn_policy                          = null
  certificate_arn                      = "arn:aws:acm:us-east-2:842676018479:certificate/df06a723-804c-4a81-b2e5-52e8040480e1"
  load_balancer_arn                    = "arn:aws:elasticloadbalancing:us-east-2:842676018479:loadbalancer/app/security-alb/b1e76234b91ff21d"
  port                                 = 443
  protocol                             = "HTTPS"
  routing_http_response_server_enabled = true
  ssl_policy                           = "ELBSecurityPolicy-TLS13-1-2-Res-2021-06"
  tags                                 = {}
  default_action {
    order            = 1
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/security-tg/5fc53644415f2088"
    type             = "forward"
    forward {
      stickiness {
        duration = 1
        enabled  = false
      }
      target_group {
        arn    = "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/security-tg/5fc53644415f2088"
        weight = 1
      }
    }
  }
  mutual_authentication {
    ignore_client_certificate_expiry = false
    mode                             = "off"
    trust_store_arn                  = null
  }
}

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform from "arn:aws:elasticloadbalancing:us-east-2:842676018479:listener/app/security-alb/b1e76234b91ff21d/af2896ec462feceb"
resource "aws_lb_listener" "security_alb_http" {
  alpn_policy                          = null
  certificate_arn                      = null
  load_balancer_arn                    = "arn:aws:elasticloadbalancing:us-east-2:842676018479:loadbalancer/app/security-alb/b1e76234b91ff21d"
  port                                 = 80
  protocol                             = "HTTP"
  routing_http_response_server_enabled = true
  tags                                 = {}
  default_action {
    order            = 1
    target_group_arn = null
    type             = "redirect"
    redirect {
      host        = "#{host}"
      path        = "/#{path}"
      port        = "443"
      protocol    = "HTTPS"
      query       = "#{query}"
      status_code = "HTTP_301"
    }
  }
}

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform from "eipalloc-03349b9d31ed86640"
resource "aws_eip" "eip_1ed86640" {
  address                   = null
  associate_with_private_ip = null
  customer_owned_ipv4_pool  = null
  domain                    = "vpc"
  network_border_group      = "us-east-2"
  network_interface         = "eni-045af10a97c6b3fc6"
  public_ipv4_pool          = "amazon"
  tags = {
    ManagedBy = "terraform"
  }
}

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform
resource "aws_lb" "development_alb_2" {
  client_keep_alive                           = 3600
  customer_owned_ipv4_pool                    = null
  desync_mitigation_mode                      = "defensive"
  dns_record_client_routing_policy            = null
  drop_invalid_header_fields                  = false
  enable_cross_zone_load_balancing            = true
  enable_deletion_protection                  = false
  enable_http2                                = true
  enable_tls_version_and_cipher_suite_headers = false
  enable_waf_fail_open                        = false
  enable_xff_client_port                      = false
  enable_zonal_shift                          = false
  idle_timeout                                = 60
  internal                                    = false
  ip_address_type                             = "dualstack"
  load_balancer_type                          = "application"
  name                                        = "development-alb-2"
  preserve_host_header                        = false
  security_groups                             = ["sg-0c408f49799e8c608"]
  tags                                        = {}
  xff_header_processing_mode                  = "append"
  access_logs {
    bucket  = ""
    enabled = false
    prefix  = null
  }
  connection_logs {
    bucket  = ""
    enabled = false
    prefix  = null
  }
  subnet_mapping {
    allocation_id        = null
    ipv6_address         = null
    private_ipv4_address = null
    subnet_id            = "subnet-0d1f5a1657a43b81e"
  }
  subnet_mapping {
    allocation_id        = null
    ipv6_address         = null
    private_ipv4_address = null
    subnet_id            = "subnet-0e4b966ab7e6a80ad"
  }
}

# __generated__ by Terraform
resource "aws_lb" "staging_alb" {
  client_keep_alive                           = 3600
  customer_owned_ipv4_pool                    = null
  desync_mitigation_mode                      = "defensive"
  dns_record_client_routing_policy            = null
  drop_invalid_header_fields                  = false
  enable_cross_zone_load_balancing            = true
  enable_deletion_protection                  = false
  enable_http2                                = true
  enable_tls_version_and_cipher_suite_headers = false
  enable_waf_fail_open                        = false
  enable_xff_client_port                      = false
  enable_zonal_shift                          = false
  idle_timeout                                = 60
  internal                                    = false
  ip_address_type                             = "dualstack"
  load_balancer_type                          = "application"
  name                                        = "staging-alb"
  preserve_host_header                        = false
  security_groups                             = ["sg-08bc8b2a0173bfae4"]
  tags                                        = {}
  xff_header_processing_mode                  = "append"
  access_logs {
    bucket  = ""
    enabled = false
    prefix  = null
  }
  connection_logs {
    bucket  = ""
    enabled = false
    prefix  = null
  }
  subnet_mapping {
    allocation_id        = null
    ipv6_address         = null
    private_ipv4_address = null
    subnet_id            = "subnet-0d1f5a1657a43b81e"
  }
  subnet_mapping {
    allocation_id        = null
    ipv6_address         = null
    private_ipv4_address = null
    subnet_id            = "subnet-0e4b966ab7e6a80ad"
  }
}

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform
resource "aws_lb" "security_alb" {
  client_keep_alive                           = 3600
  customer_owned_ipv4_pool                    = null
  desync_mitigation_mode                      = "defensive"
  dns_record_client_routing_policy            = null
  drop_invalid_header_fields                  = false
  enable_cross_zone_load_balancing            = true
  enable_deletion_protection                  = false
  enable_http2                                = true
  enable_tls_version_and_cipher_suite_headers = false
  enable_waf_fail_open                        = false
  enable_xff_client_port                      = false
  enable_zonal_shift                          = false
  idle_timeout                                = 60
  internal                                    = false
  ip_address_type                             = "ipv4"
  load_balancer_type                          = "application"
  name                                        = "security-alb"
  preserve_host_header                        = false
  security_groups                             = ["sg-04fde5621fc095f8c"]
  tags                                        = {}
  xff_header_processing_mode                  = "append"
  access_logs {
    bucket  = ""
    enabled = false
    prefix  = null
  }
  connection_logs {
    bucket  = ""
    enabled = false
    prefix  = null
  }
  subnet_mapping {
    allocation_id        = null
    ipv6_address         = null
    private_ipv4_address = null
    subnet_id            = "subnet-00aeadbdd62745fc3"
  }
  subnet_mapping {
    allocation_id        = null
    ipv6_address         = null
    private_ipv4_address = null
    subnet_id            = "subnet-0da9a2ce0bdf8f0c4"
  }
  subnet_mapping {
    allocation_id        = null
    ipv6_address         = null
    private_ipv4_address = null
    subnet_id            = "subnet-0edb5e24493ea9804"
  }
}

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform from "arn:aws:elasticloadbalancing:us-east-2:842676018479:listener/app/development-alb-2/747eafb0e99b7502/6b493a49147260e8"
resource "aws_lb_listener" "development_alb_2_http" {
  alpn_policy                          = null
  certificate_arn                      = null
  load_balancer_arn                    = "arn:aws:elasticloadbalancing:us-east-2:842676018479:loadbalancer/app/development-alb-2/747eafb0e99b7502"
  port                                 = 80
  protocol                             = "HTTP"
  routing_http_response_server_enabled = true
  tags                                 = {}
  default_action {
    order            = 1
    target_group_arn = null
    type             = "redirect"
    redirect {
      host        = "#{host}"
      path        = "/#{path}"
      port        = "443"
      protocol    = "HTTPS"
      query       = "#{query}"
      status_code = "HTTP_301"
    }
  }
}

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform from "arn:aws:elasticloadbalancing:us-east-2:842676018479:listener/app/staging-alb/1229cd539c766795/3c6be7002ba95e90"
resource "aws_lb_listener" "staging_alb_http" {
  alpn_policy                          = null
  certificate_arn                      = null
  load_balancer_arn                    = "arn:aws:elasticloadbalancing:us-east-2:842676018479:loadbalancer/app/staging-alb/1229cd539c766795"
  port                                 = 80
  protocol                             = "HTTP"
  routing_http_response_server_enabled = true
  tags                                 = {}
  default_action {
    order            = 1
    target_group_arn = null
    type             = "redirect"
    redirect {
      host        = "#{host}"
      path        = "/#{path}"
      port        = "443"
      protocol    = "HTTPS"
      query       = "#{query}"
      status_code = "HTTP_301"
    }
  }
}

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform
resource "aws_lb" "development_alb" {
  client_keep_alive                           = 3600
  customer_owned_ipv4_pool                    = null
  desync_mitigation_mode                      = "defensive"
  dns_record_client_routing_policy            = null
  drop_invalid_header_fields                  = false
  enable_cross_zone_load_balancing            = true
  enable_deletion_protection                  = false
  enable_http2                                = true
  enable_tls_version_and_cipher_suite_headers = false
  enable_waf_fail_open                        = false
  enable_xff_client_port                      = false
  enable_zonal_shift                          = false
  idle_timeout                                = 60
  internal                                    = false
  ip_address_type                             = "dualstack"
  load_balancer_type                          = "application"
  name                                        = "development-alb"
  preserve_host_header                        = false
  security_groups                             = ["sg-08bc8b2a0173bfae4"]
  tags                                        = {}
  xff_header_processing_mode                  = "append"
  access_logs {
    bucket  = ""
    enabled = false
    prefix  = null
  }
  connection_logs {
    bucket  = ""
    enabled = false
    prefix  = null
  }
  subnet_mapping {
    allocation_id        = null
    ipv6_address         = null
    private_ipv4_address = null
    subnet_id            = "subnet-0d1f5a1657a43b81e"
  }
  subnet_mapping {
    allocation_id        = null
    ipv6_address         = null
    private_ipv4_address = null
    subnet_id            = "subnet-0e4b966ab7e6a80ad"
  }
}

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform
resource "aws_lb_listener" "development_alb_http" {
  alpn_policy                          = null
  certificate_arn                      = null
  load_balancer_arn                    = "arn:aws:elasticloadbalancing:us-east-2:842676018479:loadbalancer/app/development-alb/11d2c3de04a7d686"
  port                                 = 80
  protocol                             = "HTTP"
  routing_http_response_server_enabled = true
  tags                                 = {}
  default_action {
    order            = 1
    target_group_arn = null
    type             = "redirect"
    redirect {
      host        = "#{host}"
      path        = "/#{path}"
      port        = "443"
      protocol    = "HTTPS"
      query       = "#{query}"
      status_code = "HTTP_301"
    }
  }
}

# __generated__ by Terraform

# __generated__ by Terraform from "eipalloc-03eab6222ddf92523"
resource "aws_eip" "eip_ddf92523" {
  address                   = null
  associate_with_private_ip = null
  customer_owned_ipv4_pool  = null
  domain                    = "vpc"
  network_border_group      = "us-east-2"
  network_interface         = "eni-0eb75a30afb0e1076"
  public_ipv4_pool          = "amazon"
  tags = {
    ManagedBy = "terraform"
  }
}

# __generated__ by Terraform from "arn:aws:elasticloadbalancing:us-east-2:842676018479:listener/app/development-alb/11d2c3de04a7d686/6946f1bf264fe257"
resource "aws_lb_listener" "development_alb_https" {
  alpn_policy                          = null
  certificate_arn                      = "arn:aws:acm:us-east-2:842676018479:certificate/38e84378-57b9-4e8b-b230-0dd33866ab9d"
  load_balancer_arn                    = "arn:aws:elasticloadbalancing:us-east-2:842676018479:loadbalancer/app/development-alb/11d2c3de04a7d686"
  port                                 = 443
  protocol                             = "HTTPS"
  routing_http_response_server_enabled = true
  ssl_policy                           = "ELBSecurityPolicy-TLS13-1-2-Res-PQ-2025-09"
  tags                                 = {}
  default_action {
    order            = 1
    target_group_arn = null
    type             = "fixed-response"
    fixed_response {
      content_type = "text/plain"
      message_body = "Not Found"
      status_code  = "404"
    }
  }
  mutual_authentication {
    ignore_client_certificate_expiry = false
    mode                             = "off"
    trust_store_arn                  = null
  }
}

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform from "eipalloc-0f4996f861cd1688a"
resource "aws_eip" "eip_1cd1688a" {
  address                   = null
  associate_with_private_ip = null
  customer_owned_ipv4_pool  = null
  domain                    = "vpc"
  network_border_group      = "us-east-2"
  network_interface         = "eni-0e6bef66d370e3ab8"
  public_ipv4_pool          = "amazon"
  tags = {
    ManagedBy = "terraform"
  }
}

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform from "eipalloc-09138659139f12f5d"
resource "aws_eip" "eip_39f12f5d" {
  address                   = null
  associate_with_private_ip = null
  customer_owned_ipv4_pool  = null
  domain                    = "vpc"
  network_border_group      = "us-east-2"
  network_interface         = "eni-0895ab5cac44befed"
  public_ipv4_pool          = "amazon"
  tags = {
    ManagedBy = "terraform"
  }
}

# __generated__ by Terraform from "eipalloc-081c0ea4c064c29cf"
resource "aws_eip" "github_actions_runner" {
  address                   = null
  associate_with_private_ip = null
  customer_owned_ipv4_pool  = null
  domain                    = "vpc"
  instance                  = "i-023c71b4f9cf1113c"
  network_border_group      = "us-east-2"
  network_interface         = "eni-0172fe862e2940465"
  public_ipv4_pool          = "amazon"
  tags = {
    ManagedBy = "terraform"
    Name      = "github-actions-runner"
  }
}

# __generated__ by Terraform

# __generated__ by Terraform from "arn:aws:elasticloadbalancing:us-east-2:842676018479:listener/app/development-alb-2/747eafb0e99b7502/b3881a28baeb4fa9"
resource "aws_lb_listener" "development_alb_2_https" {
  alpn_policy                          = null
  certificate_arn                      = "arn:aws:acm:us-east-2:842676018479:certificate/38e84378-57b9-4e8b-b230-0dd33866ab9d"
  load_balancer_arn                    = "arn:aws:elasticloadbalancing:us-east-2:842676018479:loadbalancer/app/development-alb-2/747eafb0e99b7502"
  port                                 = 443
  protocol                             = "HTTPS"
  routing_http_response_server_enabled = true
  ssl_policy                           = "ELBSecurityPolicy-TLS13-1-2-Res-PQ-2025-09"
  tags                                 = {}
  default_action {
    order            = 1
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/ticketing-system-backend-tg/c7357aa185a13963"
    type             = "forward"
    forward {
      stickiness {
        duration = 3600
        enabled  = false
      }
      target_group {
        arn    = "arn:aws:elasticloadbalancing:us-east-2:842676018479:targetgroup/ticketing-system-backend-tg/c7357aa185a13963"
        weight = 1
      }
    }
  }
  mutual_authentication {
    ignore_client_certificate_expiry = false
    mode                             = "off"
    trust_store_arn                  = null
  }
}

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform from "eipalloc-0ed77668c89bebcec"
resource "aws_eip" "security_nat_eip" {
  address                   = null
  associate_with_private_ip = null
  customer_owned_ipv4_pool  = null
  domain                    = "vpc"
  network_border_group      = "us-east-2"
  network_interface         = "eni-0435e021632a5a199"
  public_ipv4_pool          = "amazon"
  tags = {
    ManagedBy = "terraform"
    Name      = "security-nat-eip"
  }
}

# __generated__ by Terraform

# __generated__ by Terraform from "eipalloc-0ba2f3b3c1b8ce99f"
resource "aws_eip" "dbi360_dev_stage_nat_eip" {
  address                   = null
  associate_with_private_ip = null
  customer_owned_ipv4_pool  = null
  domain                    = "vpc"
  network_border_group      = "us-east-2"
  network_interface         = "eni-0b0c96ee9cbff90af"
  public_ipv4_pool          = "amazon"
  tags = {
    ManagedBy = "terraform"
    Name      = "dbi360-dev-stage-nat-eip"
  }
}

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform from "eipalloc-0b8d930d45bb4fd6d"
resource "aws_eip" "eip_5bb4fd6d" {
  address                   = null
  associate_with_private_ip = null
  customer_owned_ipv4_pool  = null
  domain                    = "vpc"
  instance                  = "i-06890b67524f398ea"
  network_border_group      = "us-east-2"
  network_interface         = "eni-092d4b7a898444c37"
  public_ipv4_pool          = "amazon"
  tags = {
    ManagedBy = "terraform"
  }
}

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform from "eipalloc-027c71650044115db"
resource "aws_eip" "eip_044115db" {
  address                   = null
  associate_with_private_ip = null
  customer_owned_ipv4_pool  = null
  domain                    = "vpc"
  network_border_group      = "us-east-2"
  network_interface         = "eni-09bdc4d582f220d9c"
  public_ipv4_pool          = "amazon"
  tags = {
    ManagedBy = "terraform"
  }
}

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform

# __generated__ by Terraform
