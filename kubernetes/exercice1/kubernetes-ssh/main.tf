provider "kubernetes" {
  config_path    = "~/.kube/config"
}

resource "kubernetes_pod" "single_pod" {
  count = length(var.single_pod)
  metadata {
    name      = var.single_pod[count.index].pod_name
    namespace = "rashid"
    labels    = var.pod_label
  }
  spec {
    container {
      name  = var.single_pod[count.index].container
      image = "patricehub/ssh-docker:latest"
      port {
        container_port = 22
      }
    }
    node_name = "master"
  }
}
