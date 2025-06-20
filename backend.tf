# terraform {
#   backend "s3" {
#     bucket         = "sas-github-workflow"
#     region         = "us-east-1"
#     key            = "workspace/${terraform.workspace}/terraform.tfstate"
#     dynamodb_table = "terraform-locks"  
#     encrypt = true
#   }
#   required_version = ">=0.13.0"
#   required_providers {
#     aws = {
#       version = ">= 2.7.0"
#       source = "hashicorp/aws"
#     }
#   }
# }


terraform {
  backend "s3" {
    # Leave this empty; config will be passed via -backend-config in CLI
  }
}
