module "app" {
    source = "./webapp_deployment"
    application_name = "example-webapp"
    application_version = "1a789f9"
    artifact_bucket = "aston-lecture.springboot.simple-artifacts"
    worker_ami = "ami-0abfe55c2cc86d5ad"
    instance_profile = "allow_s3_ec2_github_demo"
    subnets = [
    {
      az     = "us-west-2a",
      prefix = "10.1.1.0/24"
    },
    {
      az     = "us-west-2b",
      prefix = "10.1.2.0/24"
    },
    {
      az     = "us-west-2c",
      prefix = "10.1.3.0/24"
    }
  ]
}