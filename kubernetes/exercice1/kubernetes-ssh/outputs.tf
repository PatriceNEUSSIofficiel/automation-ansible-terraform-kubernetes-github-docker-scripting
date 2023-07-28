

output "pod_port" {
  value = kubernetes_service.single_pod_service.spec[0].port[0].node_port
}
