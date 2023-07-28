provider "kubernetes" {
  config_path    = "~/.kube/config"
}

resource "kubernetes_deployment" "patrice-ssh-deployment" {
  metadata {
    name      = "patrice-deployment-ssh"
    labels    = var.deployment_label
    namespace = "rashid"
  }
  spec {
    strategy {
      type = "RollingUpdate"
    }
    template {
      metadata {
        namespace = "rashid"
        labels    = var.deployment_label
      }
      spec {
        container {
          name  = "ssh-server"
          image = "patricehub/ssh-docker:latest"

        }
        node_name = "master"
      }

    }
    selector {
      match_labels = var.deployment_label
    }
    replicas = 3
  }
}

resource "kubernetes_service" "deploy_service" {
    depends_on = [ kubernetes_deployment.patrice-ssh-deployment ]
  metadata {
    name      = "patrice-ssh-deploy-service"
    namespace = "rashid"
    labels    = var.deployment_label
  }
  spec {
    selector = var.deployment_label
    type     = "NodePort"
    port {
      name = "deployssh"
      node_port   = "30822"
      target_port = 22
      port        = 22
    }
  }

}

