variable "service_account_id" {
    type = string
    description = "value"
    default = "auto-generated-account-id"
}
variable "service_account_display_name" {
    type = string
    description = "value"
    default = "auto-generated-account-display-name"
}
variable "service_account_name" {
    type = string
    description = "value"
    default = "auto-generated-account-name"
}

variable "service_account_description" {
    type = string
    description = "value"
    default = "Auto-generated service account for Terraform"
}

variable "roles" {
    type = list(string)
    description = "List of roles to assign to the service account"
    default = ["roles/viewer", "roles/storage.objectViewer"]
}

variable "keys_config_path" {
    type = string
    description = "Path to the JSON key file for the service account"
    default = "./keys/"
}
