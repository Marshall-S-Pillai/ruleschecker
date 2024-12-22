# main.tf

# Configure AWS provider
provider "aws" {
  region = var.aws_region
}
resource "aws_key_pair" "web_key_pair" {
  key_name   = "my-ec2-keypair"  # Name of the key pair
  public_key = file("~/.ssh/id_rsa.pub")  # Path to your public key file
  
  tags = {
    Name = "WebServer-KeyPair"
  }
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

# Output the public IP of the EC2 instance
output "instance_ip" {
  value = aws_instance.web.public_ip
}
