terraform{
  backend "s3" {
    bucket = "pipelineoik"
    key = "${var.cloud_name}/terraform_state"
    region = "ap-southeast-1"
  }
}
