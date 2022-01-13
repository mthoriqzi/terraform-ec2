terraform{
  backend "s3" {
    bucket = "agriaku-terraform-state"
    key = "dev_/terraform_state"
    region = "ap-southeast-1"
  }
}
