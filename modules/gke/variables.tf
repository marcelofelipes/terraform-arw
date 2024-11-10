variable "gke_nodepool_name" {
    description = "Nome do Cluster"
    type        = string
    default     = "default-cluster"
}
variable "disk_size_gb" {
    description = "Tamanho do Disco do Cluster"
    type        = number
    default     = 30
  
}

variable "gke_nodecount" {
    description = "Número de Nós do Cluster"
    type        = number
    default     = 3
}

variable "gke_location" {
    description = "Localização do Cluster"
    type        = string
    default     = "us-central1-a"
}

variable "gke_machine_type" {
    description = "Tipo de Máquina do Cluster"
    type        = string
    default     = "n1-standard-2"
}

variable "gke_cluster_name" {
    description = "Nome do Cluster"
    type        = string
    default     = "default-cluster"

}

variable "service_account_email" {
    description = "Email do Service Account"
    type        = string
    default     = "service-account@example.com"
}