variable "project_id" {
  description = "ID do projeto no GCP"
  type        = string
  default     = "projeto-arquiteto-441104"
}


variable "project_name_prefix" {
  description = "Prefixo para nomes dos recursos"
  type        = string
  default     = "arquiteto-estadao-gcp"
}

variable "region" {
  description = "Região onde os recursos serão criados"
  type        = string
  default     = "us-central1"
}

variable "vpc_name" {
  description = "Nome da VPC"
  type        = string
  default     = "vpc-arquiteto-estadao"
}

variable "public_subnet_cidr" {
  description = "Faixa de IP para a sub-rede pública"
  type        = string
  default     = "10.0.0.0/24"
}

variable "private_subnet_cidr" {
  description = "Faixa de IP para a sub-rede privada"
  type        = string
  default     = "10.1.0.0/24"
}

variable "ip_range_pods" {
  description = "Faixa de IP secundária para Pods"
  type        = string
  default     = "10.2.0.0/24"
}

variable "ip_range_services" {
  description = "Faixa de IP secundária para Services"
  type        = string
  default     = "10.3.0.0/24"
}