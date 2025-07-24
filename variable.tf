variable "region" {
  default = "ap-south-1"
}

variable "cluster_name" {}
variable "cluster_role_arn" {}
variable "node_role_arn" {}

variable "vpc_cidr" {
  type = string
}

variable "vpc_name" {
  type = string
}

variable "public_subnets" {
  type = list(string)
}

variable "private_subnets" {
  type = list(string)
}

variable "azs" {
  type = list(string)
}