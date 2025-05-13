module "vpc" {
  source   = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
}

module "ec2" {
  source        = "./modules/ec2"
  instance_type = var.instance_type
  subnet_id     = module.vpc.public_subnet_id
}

module "s3" {
  source      = "./modules/s3"
  bucket_name = var.bucket_name
}