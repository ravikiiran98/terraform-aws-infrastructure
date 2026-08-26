terraform {
  backend "s3" {
    bucket = "ravi-terraform-state-1"
    key    = "dev/terraform.tfstate"
    region = "ap-south-1"
  }
}
