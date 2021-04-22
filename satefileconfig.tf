#used to store terraform state file in s3 as configured below

terraform {
  backend "s3" {
    profile = "demo"
    region  = "eu-west-2"
    key     = "terraform.tfstate"
    bucket  = "terraform-bucket-lester"
  }
}

# statefil is stored within terraform workspace

# terraform {
#   backend "remote" {
#     organization = "tanolester"

#     workspaces {
#       name = "TF-AWS-Console"
#     }
#   }
# }