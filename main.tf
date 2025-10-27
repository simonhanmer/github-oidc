# Configure the AWS Provider
provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Project     = var.project_name
      ManagedBy   = "terraform"
      repo = "github-oidc"
    }
  }
}

terraform {
  required_version = ">= 1.0"
  
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    archive = {
      source  = "hashicorp/archive"
      version = "~> 2.4"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.4"
    }
  }

}

#  If you want to use an s3 backend, you'll need to uncomment and add values
# terraform {

#   backend "s3" {
#     bucket         = "_s3-bucket-name_"
#     key            = "_state-file-name_/dev/terraform.tfstate"
#     region         = "eu-west-2"
#     encrypt        = true
#     dynamodb_table = "_name_of_ddb_lock_table_"
#   }
# }
