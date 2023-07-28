
  provider "kubernetes" {
    secret_suffix    = "patrice"
    config_path      = "~/.kube/config"
  }

terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
  }
}
provider "docker" {
  alias = "first"
  host  = "unix:///var/run/docker.sock"
  registry_auth {
    address     = "registry-1.docker.io"
    config_file = pathexpand("~/.docker/config.json")
    username    = var.dockerhub.docker_user
    password    = var.dockerhub.docker_password
  }
}

resource "docker_image" "image" {
  name = "registry-1.docker.io/patricehub/terraform_ssh"
  build {
    context = "../Docker/exercice1"
  }
}

resource "docker_registry_image" "image" {
  name          = docker_image.image.name
  keep_remotely = true
}

resource "docker_container" "first" {
  name  = "first-ct"
  image = "patricehub/ssh-docker:latest"
  ports {
    internal = 22
    external = 8800
  }
}
