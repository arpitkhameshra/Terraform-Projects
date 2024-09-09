terraform {
	required_providers {
	aws = {
	source = "hashicorp/aws"
	version = "5.16.1"
	}

   }

	backend "s3" {
		bucket = "batch-4-remote-backend-bucket"
		dynamodb_table = "batch-4-remote-backend-db"
		region = "us-east-1"
		key = "terraform.tfstate"
	}

}
