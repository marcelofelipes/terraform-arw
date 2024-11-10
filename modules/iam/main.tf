resource "google_service_account" "service_account" {
  account_id   = var.service_account_id
  display_name = var.service_account_display_name
}

# Atribui cada função IAM à conta de serviço
resource "google_project_iam_member" "service_account_binding" {
  for_each = toset(var.roles)  # Converte a lista de roles para um conjunto

  project = google_service_account.service_account.project  # Pega o ID do projeto do provider configurado
  role    = each.value
  member  = "serviceAccount:${google_service_account.service_account.email}"
}
# Cria uma chave de conta de serviço para a conta de serviço criada
resource "google_service_account_key" "service_account_key" {
  service_account_id = google_service_account.service_account.email
}

resource "local_file" "service_account_key_file" {
  filename = "service_account_key-${var.service_account_name}.json"
  content  = google_service_account_key.service_account_key.private_key
}
