terraform{
  backend "s3" {
    bucket = "agriaku-terraform-state"
    key = "${var.cloud_name}/terraform_state"
    region = "ap-southeast-1"
  }
}
