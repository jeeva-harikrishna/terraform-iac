# Stops tracking the 21 ROOT-level copies from the old generated_ec2.tf.
# Real AWS objects are NOT destroyed; they stay managed by module.vpc.
# Apply once, then this file can be deleted. Requires Terraform >= 1.7

# --- ALBs (4) ---
removed {
  from = aws_lb.development_alb
  lifecycle { destroy = false }
}
removed {
  from = aws_lb.development_alb_2
  lifecycle { destroy = false }
}
removed {
  from = aws_lb.security_alb
  lifecycle { destroy = false }
}
removed {
  from = aws_lb.staging_alb
  lifecycle { destroy = false }
}

# --- Listeners (8) ---
removed {
  from = aws_lb_listener.development_alb_2_http
  lifecycle { destroy = false }
}
removed {
  from = aws_lb_listener.development_alb_2_https
  lifecycle { destroy = false }
}
removed {
  from = aws_lb_listener.development_alb_http
  lifecycle { destroy = false }
}
removed {
  from = aws_lb_listener.development_alb_https
  lifecycle { destroy = false }
}
removed {
  from = aws_lb_listener.security_alb_http
  lifecycle { destroy = false }
}
removed {
  from = aws_lb_listener.security_alb_https
  lifecycle { destroy = false }
}
removed {
  from = aws_lb_listener.staging_alb_http
  lifecycle { destroy = false }
}
removed {
  from = aws_lb_listener.staging_alb_https
  lifecycle { destroy = false }
}

# --- Elastic IPs (9) ---
removed {
  from = aws_eip.dbi360_dev_stage_nat_eip
  lifecycle { destroy = false }
}
removed {
  from = aws_eip.eip_044115db
  lifecycle { destroy = false }
}
removed {
  from = aws_eip.eip_1cd1688a
  lifecycle { destroy = false }
}
removed {
  from = aws_eip.eip_1ed86640
  lifecycle { destroy = false }
}
removed {
  from = aws_eip.eip_39f12f5d
  lifecycle { destroy = false }
}
removed {
  from = aws_eip.eip_5bb4fd6d
  lifecycle { destroy = false }
}
removed {
  from = aws_eip.eip_ddf92523
  lifecycle { destroy = false }
}
removed {
  from = aws_eip.github_actions_runner
  lifecycle { destroy = false }
}
removed {
  from = aws_eip.security_nat_eip
  lifecycle { destroy = false }
}
