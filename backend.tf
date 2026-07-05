terraform {
  backend "s3" {
    bucket = "terraform-state-sangeetha-2026"
    key    = "terraform/terraform.tfstate"
    region = "ap-southeast-2"
  }
}

