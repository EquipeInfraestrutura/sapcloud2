module "vpc" {
  source          = "./vpc"
}

module "ec2" {
  source                = "./ec2"
  
  vpc_id                 = module.vpc.vpc_id
  sg_public              = [module.vpc.sg_public]
  public_subnet          = module.vpc.public_subnet
  sg_private             = [module.vpc.sg_private]
  private_subnet         = module.vpc.private_subnet
}