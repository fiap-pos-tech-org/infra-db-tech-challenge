variable "username" {
  type        = list(string)
  description = "Database username"
  default = [
    "pedido",
    "cobranca",
    "producao",
    "gerenciamento"
  ]
}

variable "database_name" {
  type        = list(string)
  description = "Database name"
  default = [
    "pedido_db",
    "cobranca_db",
    "producao_db",
    "gerenciamento_db"
  ]
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
