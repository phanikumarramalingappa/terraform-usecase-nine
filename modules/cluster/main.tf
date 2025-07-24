resource "aws_eks_cluster" "eks_cluster" {
  name     = var.cluster_name
  role_arn = var.cluster_role_arn

  vpc_config {
    private_subnet_ids = var.private_subnet_ids
  }

  version = var.kubernetes_version
}
