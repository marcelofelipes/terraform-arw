output "vpc_id" {
  description = "ID da VPC criada"
  value       = google_compute_network.vpc.id
}

output "vpc_name" {
  description = "Nome da VPC criada"
  value       = google_compute_network.vpc.name
}

# Outputs para as Sub-redes
output "public_subnet_id" {
  description = "ID da sub-rede pública"
  value       = google_compute_subnetwork.public_subnet.id
}

output "public_subnet_name" {
  description = "Nome da sub-rede pública"
  value       = google_compute_subnetwork.public_subnet.name
}

output "public_subnet_cidr" {
  description = "CIDR da sub-rede pública"
  value       = google_compute_subnetwork.public_subnet.ip_cidr_range
}

output "private_subnet_id" {
  description = "ID da sub-rede privada"
  value       = google_compute_subnetwork.private_subnet.id
}

output "private_subnet_cidr" {
  description = "CIDR da sub-rede privada"
  value       = google_compute_subnetwork.private_subnet.ip_cidr_range
}

