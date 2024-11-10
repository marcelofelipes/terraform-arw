# Output: E-mail da Conta de Serviço
output "service_account_email" {
  description = "O e-mail da conta de serviço criada"
  value       = google_service_account.service_account.email
}

# Output: ID único da Conta de Serviço
output "service_account_unique_id" {
  description = "O ID único da conta de serviço criada"
  value       = google_service_account.service_account.unique_id
}

# Output: O Nome da Conta de Serviço
output "service_account_name" {
  description = "O nome da conta de serviço criada"
  value       = google_service_account.service_account.name
}

# Output: O Projeto onde a conta de serviço foi criada
output "project_id" {
  description = "ID do projeto onde a conta de serviço foi criada"
  value       = google_service_account.service_account.project
}

# Output: Funções atribuídas à conta de serviço
output "assigned_roles" {
  description = "Lista de funções IAM atribuídas à conta de serviço"
  value       = var.roles
}


output "service_account_key_path" {
  value = "${var.keys_config_path}/${local_file.service_account_key_file.filename}"
}