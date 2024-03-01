variable "username" {
  type        = string
  description = "Database username"
  default     = "lanchonete"
}

variable "database_name" {
  type        = string
  description = "Database username"
  default     = "lanchonetedb"
}

variable "aws_region" {
  type        = string
  description = "AWS Region"
  default     = "us-east-1"
}

variable "environment" {
  type        = string
  description = "environment"
  default     = "dev"
}
