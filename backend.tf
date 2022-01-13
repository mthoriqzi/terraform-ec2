terraform{
  backend "s3" {
    bucket = "pipelineoik"
    key = "dev_/terraform_state"
    region = "ap-southeast-1"
  }
}
