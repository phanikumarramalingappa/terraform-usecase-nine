terraform {
  backend "s3" {
    bucket       = "terraform-usecases-nsh-batch6"
    key          = "usecase9/terraform.tfstate"
    region       = "ap-southeast-2"
    use_lockfile = true
  }
}
