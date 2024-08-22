terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}
# Define the AWS provider
provider "aws" {
  region = "ap-south-1" # Replace with your desired AWS region
}

# Create an EC2 instance
resource "aws_instance" "example" {
  ami           = "ami-02b49a24cfb95941c" # Replace with the desired AMI ID
  instance_type = "t2.micro"             # Replace with the desired instance type
  key_name      = "VM_Windows"   # Replace with your SSH key pair name
  tags = {
    Name = "First-instance"
  }
}
