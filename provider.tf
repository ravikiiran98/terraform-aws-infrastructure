provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Project     = "terraform-aws-infrastructure"
      Environment = var.environment
      ManagedBy   = "Terraform"
    }
  }
}
