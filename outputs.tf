## Output dos Modulos VPC
output "vpc_name" {
  value       = module.vpc.vpc_name
  description = "Name of the VPC"
}

output "vpc_id" {
  value       = module.vpc.vpc_id
  description = "ID of the VPC"
}

output "private_subnet_ids" {
  value       = module.vpc.private_subnet_id
  description = "IDs of the private subnets"
}

output "public_subnet_ids" {
  value       = module.vpc.public_subnet_id
  description = "IDs of the public subnets"
}
## Output dos  Modulos IAM
output "service_account_email" {
  value       = module.iam.service_account_email
  description = "Email of the service account"
}

output "service_account_id" {
  value       = module.iam.service_account_unique_id
  description = "ID of the service account"
}
