# variables.tf
variable "aws_region" {
  description = "AWS Region"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for EC2 instance"
  type        = string
}

variable "environment" {
  description = "Deployment environment"
  type        = string
}

variable "db_password" {
  description = "Database password for the environment"
  type        = string
  sensitive   = true
}

# Default values for Staging
variable "staging_instance_type" {
  default = "t2.micro"
}

# Default values for Production
variable "production_instance_type" {
  default = "t3.medium"
}