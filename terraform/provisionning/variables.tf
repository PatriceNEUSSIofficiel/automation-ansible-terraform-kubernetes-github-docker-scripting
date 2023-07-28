
variable "dockerhub" {
 type = object({
   docker_user = string
   docker_password = string
 })
 sensitive = true
 default = {
   docker_user = "patrice"
   docker_password = "npeprod237"
 }
}
