# main.tf

# Configure AWS provider
provider "aws" {
  region = var.aws_region
}



# EC2 Instance resource
resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.environment == "production" ? var.production_instance_type : var.staging_instance_type
  key_name      = var.key_name

  tags = {
    Name = "WebServer-${var.environment}"
  }
}

