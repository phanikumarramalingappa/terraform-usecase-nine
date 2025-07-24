variable "cluster_name" {}
variable "cluster_role_arn" {}
variable "subnet_ids" {
  type = list(string)
}
variable "kubernetes_version" {
  default = "1.29"
}