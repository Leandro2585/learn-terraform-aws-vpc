module "new-vpc" {
    source = "./modules/vpc"
    prefix = var.prefix
    vpc_cidr_block = var.vpc_cidr_block
}

module "eks" {
    source = "./modules/eks"
    vpc_id = module.new-vpc.vpc_id
    cluster_name = var.cluster_name
    prefix = var.prefix
    desired_size = var.desired_size
    max_size = var.max_size
    min_size = var.min_size
    retention_days = var.retention_days
    subnet_ids = module.new-vpc.subnet_ids
}