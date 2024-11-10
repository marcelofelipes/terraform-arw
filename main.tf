# Configuração do provedor Google Cloud
provider "google" {
  project = var.project_id
  region  = var.region
}

provider "kubernetes" {
  host                   = "https://${module.gke.endpoint}"
  token                  = data.google_client_config.default.access_token
  cluster_ca_certificate = base64decode(module.gke.ca_certificate)
}

# Módulo VPC: Criando a VPC e as sub-redes
module "vpc" {
  source              = "./modules/vpc" # Caminho para o módulo da VPC
  region              = var.region
  vpc_name            = var.vpc_name
  public_subnet_cidr  = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
}

module "iam" {
  source = "./modules/iam" # Caminho para o módulo de IA
}

# Módulo GKE: Criando o cluster e os recursos necessários
module "gke" {
  source                = "./modules/gke" # Caminho para o módulo do GKE
  service_account_email = module.iam.service_account_email
  gke_location = var.region
  gke_cluster_name = "${var.project_name_prefix}-cluster"
  gke_machine_type = "e2-standard-2"
  gke_nodepool_name = "${var.project_name_prefix}-pool"
  gke_nodecount = "3"
}





