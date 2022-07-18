provider "aws" {
  region                  = "ap-south-1"
}

resource "aws_instance" "myec2" {
   ami           = "ami-079b5e5b3971bd10d"
   instance_type = lookup(var.instance_type,terraform.workspace)
 }
