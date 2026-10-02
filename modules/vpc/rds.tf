# rds.tf — managed by Terraform (imported)

resource "aws_db_instance" "wordpressrds" {
  identifier          = "wordpressrds"
  engine              = "mysql"
  engine_version      = "8.0.45"
  instance_class      = "db.t3.small"
  allocated_storage   = 200
  storage_type        = "gp3"
  port                = 3306
  multi_az            = false
  publicly_accessible = true
  skip_final_snapshot = true
  username            = "admin"
  password            = "placeholder"
  lifecycle { ignore_changes = all }
}

resource "aws_db_instance" "zylerprelive" {
  identifier          = "zylerprelive"
  engine              = "mysql"
  engine_version      = "8.0.45"
  instance_class      = "db.m5.xlarge"
  allocated_storage   = 329
  storage_type        = "gp3"
  port                = 3306
  multi_az            = false
  publicly_accessible = true
  skip_final_snapshot = true
  username            = "admin"
  password            = "placeholder"
  lifecycle { ignore_changes = all }
}

resource "aws_db_instance" "zylerstaging" {
  identifier          = "zylerstaging"
  engine              = "mysql"
  engine_version      = "8.0.45"
  instance_class      = "db.m7g.large"
  allocated_storage   = 329
  storage_type        = "gp3"
  port                = 3306
  multi_az            = false
  publicly_accessible = true
  skip_final_snapshot = true
  username            = "admin"
  password            = "placeholder"
  lifecycle { ignore_changes = all }
}
