# Create a Database Password
resource "random_password" "db-user-password" {
  length           = 16
  special          = true
  override_special = "_%"
}

#create a security group for RDS Database Instance
resource "aws_security_group" "rds_sg" {
  name = "rds_sg"
  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Create RDS Database Instance
resource "aws_db_instance" "lanchonete_db_rds" {
  engine                      = "mysql"
  engine_version              = "5.7.44"
  allocated_storage           = 10
  instance_class              = "db.t3.micro"
  storage_type                = "gp2"
  identifier                  = var.database_name
  db_name                     = var.database_name
  username                    = var.username
  manage_master_user_password = true
  vpc_security_group_ids      = ["${aws_security_group.rds_sg.id}"]
  publicly_accessible         = true
  skip_final_snapshot         = true
  depends_on                  = [aws_security_group.rds_sg]
}
