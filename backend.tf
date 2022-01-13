terraform{
  backend "s3" {
    bucket = "agriaku-terraform-state"
    key = "dev_${var.cloud_name}/terraform_state"
    region = "ap-southeast-1"
  }
}
