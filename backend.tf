terraform{
  backend "s3" {
    bucket = "pipelineoik"
    key = "dev_1/terraform_state"
    region = "ap-southeast-1"
  }
}
