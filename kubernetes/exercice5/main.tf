provider "kubernetes" {
    config_path = "~/.kube/config"
}

resource "kubernetes_pod" "patrice_pod" {
  metadata {
    name = "patrice"
    labels = {
        owner = "patrice"
        app = "web-server"
    }
    namespace = "rashid"
  }
  spec {
    container {
        name = "my-ct"
        image = "nginx/patrice"
    }

    container {
        name = "my-ct-2"
        image = "httpd/patrice"
        command = ["sleep"]
        args = ["infinity"]
    }
  }
}