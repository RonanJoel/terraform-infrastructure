provider "aws" {
  region = var.region
}

module "ec2_instance" {
  source        = "./modules/ec2_instance"  # Asegúrate de que la ruta sea correcta
  ami_id        = var.ami_id
  instance_type = var.instance_type
}

module "s3_bucket" {
  source        = "./modules/s3_bucket"  # Ruta correcta del módulo
  bucket_name   = var.bucket_name
  environment   = var.environment
}
