# production.tfvars

aws_region   = "us-east-2"
instance_type = "t2.medium"
key_name = "terraform"
ami_id       = "ami-0453ec754f44f9a4a"  # Replace with your staging AMI ID
environment  = "production"
db_password  = "production-db-password"
