terraform {
  required_version = "1.3.5"
  required_providers {
    mycloud = {
      source = "hashicorp/kubernetes"
       version = "~> 1.13"
    }
  }
  backend "local" {
    path = "/tmp/terraform.tfstate"
  }

}
provider "kubernetes" {
  host = "https://127.0.0.1:56034"
}