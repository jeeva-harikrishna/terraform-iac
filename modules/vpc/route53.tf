# route53.tf — managed by Terraform (imported)

resource "aws_route53_zone" "dbi360_com" {
  name = "dbi360.com"

  lifecycle {
    ignore_changes = all
  }
}

resource "aws_route53_zone" "demodbi360_com" {
  name = "demodbi360.com"

  lifecycle {
    ignore_changes = all
  }
}

resource "aws_route53_zone" "greenjeeva_com" {
  name = "greenjeeva.com"

  lifecycle {
    ignore_changes = all
  }
}

resource "aws_route53_zone" "deepakjena_me" {
  name = "deepakjena.me"

  lifecycle {
    ignore_changes = all
  }
}

resource "aws_route53_zone" "drashwinimallad_me" {
  name = "drashwinimallad.me"

  lifecycle {
    ignore_changes = all
  }
}

resource "aws_route53_zone" "chandrashekharsingh_me" {
  name = "chandrashekharsingh.me"

  lifecycle {
    ignore_changes = all
  }
}

resource "aws_route53_zone" "testdbi360_com" {
  name = "testdbi360.com"

  lifecycle {
    ignore_changes = all
  }
}

resource "aws_route53_zone" "kafka_internal" {
  name = "kafka.internal"

  vpc {
    vpc_id = var.vpc_id
  }

  lifecycle {
    ignore_changes = all
  }
}
