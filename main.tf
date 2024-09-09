
#dev infra

module "dev-demo-app" {
	source = "./modules/demo-app"
	env_name = "dev"
	instance_type = "t2.micro"
	ami_id = "ami-0e86e20dae9224db8"
	instance_name = "batch-4-demo-instance"
	bucket_name = "batch-4-demo-bucket"
	table_name = "batch-4-demo-table"
	

}


#QA infra

module "qa-demo-app" {
        source = "./modules/demo-app"
        env_name = "qa"
        instance_type = "t2.small"
        ami_id = "ami-0182f373e66f89c85"
        instance_name = "batch-4-demo-instance"
        bucket_name = "batch-4-demo-bucket"
        table_name = "batch-4-demo-table"
}



#Prd infra

module "prd-demo-app" {
        source = "./modules/demo-app"
        env_name = "prd"
        instance_type = "t2.medium"
        ami_id = "ami-0583d8c7a9c35822c"
        instance_name = "batch-4-demo-instance"
        bucket_name = "batch-4-demo-bucket"
        table_name = "batch-4-demo-table"
}
