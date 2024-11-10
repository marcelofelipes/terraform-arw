variable "vpc_name" {
  description = "Nome da VPC"
  type        = string
  default     = "vpc-projeto-arquitetica"
}

variable "public_subnet_cidr" {
  description = "Faixa de IP para a sub-rede pública"
  type        = string
  default     = "10.0.0.0/24"
}

variable "private_subnet_cidr" {
  description = "Faixa de IP para a sub-rede privada"
  type        = string
  default     = "10.0.1.0/24"
}

variable "region" {
  description = "Região onde os recursos serão criados"
  type        = string
  default     = "us-central-1"
}


