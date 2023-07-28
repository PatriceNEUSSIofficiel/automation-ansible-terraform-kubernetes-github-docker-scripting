locals {
  name = "patrice"
}

variable "single_pod" {
  type = list(object({
    pod_name  = string
    container = string
  }))

  default = [{
    pod_name  = "patrice-pod-1"
    container = "patrice-ssh-1"
    },
    {
      pod_name  = "patrice-pod-2"
      container = "patrice-ssh-2"
    },
    {
      pod_name  = "patrice-pod-3"
      container = "patrice-ssh-3"
    },

  ]
}

variable "pod_label" {
  type = map(string)
  default = {
    owner = "patrice"
    type  = "ssh"
    app   = "myapk"
  }
}

variable "deployment_label" {
  type = map(string)
  default = {
    owner = "patrice"
    type  = "ssh"
    app   = "deploy"
  }
}
