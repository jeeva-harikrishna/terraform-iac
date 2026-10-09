# =============================================================
# modules/vpc/imports.tf
# Import blocks use LOCAL addresses (no "module.vpc." prefix)
# because this file lives inside the module itself.
# Run: terraform plan from envs/dev/
# Delete this file once: terraform plan shows No changes.
# =============================================================

import {
  to = module.vpc.aws_eip.eip_044115db
  id = "eipalloc-027c71650044115db"
}


import {
  to = module.vpc.aws_eip.eip_1ed86640
  id = "eipalloc-03349b9d31ed86640"
}


import {
  to = module.vpc.aws_eip.eip_ddf92523
  id = "eipalloc-03eab6222ddf92523"
}


import {
  to = module.vpc.aws_eip.github_actions_runner
  id = "eipalloc-081c0ea4c064c29cf"
}


# ── ALB Listeners ──────────────────────────────────────────────
import {
  to = module.vpc.aws_lb_listener.security_alb_http
  id = "arn:aws:elasticloadbalancing:us-east-2:842676018479:listener/app/security-alb/b1e76234b91ff21d/af2896ec462feceb"
}

import {
  to = module.vpc.aws_lb_listener.security_alb_https
  id = "arn:aws:elasticloadbalancing:us-east-2:842676018479:listener/app/security-alb/b1e76234b91ff21d/b58786fc47f12912"
}

import {
  to = module.vpc.aws_lb_listener.development_alb_http
  id = "arn:aws:elasticloadbalancing:us-east-2:842676018479:listener/app/development-alb/11d2c3de04a7d686/23915237d4ea26cd"
}

import {
  to = module.vpc.aws_lb_listener.development_alb_https
  id = "arn:aws:elasticloadbalancing:us-east-2:842676018479:listener/app/development-alb/11d2c3de04a7d686/6946f1bf264fe257"
}

import {
  to = module.vpc.aws_lb_listener.development_alb_2_http
  id = "arn:aws:elasticloadbalancing:us-east-2:842676018479:listener/app/development-alb-2/747eafb0e99b7502/6b493a49147260e8"
}

import {
  to = module.vpc.aws_lb_listener.development_alb_2_https
  id = "arn:aws:elasticloadbalancing:us-east-2:842676018479:listener/app/development-alb-2/747eafb0e99b7502/b3881a28baeb4fa9"
}

import {
  to = module.vpc.aws_lb_listener.staging_alb_http
  id = "arn:aws:elasticloadbalancing:us-east-2:842676018479:listener/app/staging-alb/1229cd539c766795/3c6be7002ba95e90"
}


import {
  to = module.vpc.aws_lb_listener.staging_alb_https
  id = "arn:aws:elasticloadbalancing:us-east-2:842676018479:listener/app/staging-alb/1229cd539c766795/d55128b411462b3b"
}

# VPC Endpoints — Interface (4 missing)
import {
  to = module.vpc.aws_vpc_endpoint.dev_ecr_dkr
  id = "vpce-0dcc9d97a7deab320"
}

import {
  to = module.vpc.aws_vpc_endpoint.dev_ecr_api
  id = "vpce-093b3e8129ccdc11e"
}

import {
  to = module.vpc.aws_vpc_endpoint.dev_secretsmanager
  id = "vpce-05a02e32a237c5e46"
}

import {
  to = module.vpc.aws_vpc_endpoint.dev_logs
  id = "vpce-09ea36692c6f7e635"
}

import {
  to = module.vpc.aws_security_group.launch_wizard_17
  id = "sg-09d3b4af1b96a5591"
}

import {
  to = module.vpc.aws_internet_gateway.default_vpc_igw
  id = "igw-0c837996ab2e1c428"
}
