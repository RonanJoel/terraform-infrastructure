provider "aws" {
  region = var.region
}

module "ec2_instance" {
  source          = "./modules"
  ami_id          = var.ami_id
  instance_type   = var.instance_type
}

module "s3_bucket" {
  source        = "./modules"
  bucket_name   = var.bucket_name
  environment   = var.environment
}
