terraform{
  backend "s3" {
    bucket = "pipelineoik"
    key = "dev_${var.cloud_name}/terraform_state"
    region = "ap-southeast-1"
  }
}
