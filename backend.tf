terraform{
  backend "s3" {
    bucket = "pipelineoik"
    key = "dev/terraform_state"
    region = "ap-southeast-1"
  }
}