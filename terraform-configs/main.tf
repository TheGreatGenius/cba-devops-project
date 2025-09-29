terraform {
  required_providers {
    minikube = {
      source  = "scott-the-programmer/minikube"
      version = "0.4.2"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.38.0" # latest stable you mentioned earlier
    }
    helm = {
      source  = "hashicorp/helm"
      version = "2.1.2"  # match your tutorial or upgrade if needed
    }
  }
}

provider "minikube" {
  kubernetes_version = "v1.30.0"
}

resource "minikube_cluster" "minikube_docker" {
  driver       = "docker"
  cluster_name = "cba-devops-project"
  addons = [
    "default-storageclass",
    "storage-provisioner"
  ]
}
