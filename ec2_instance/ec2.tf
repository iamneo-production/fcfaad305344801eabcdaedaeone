terraform {
    required_providers {
      aws = {
        source = "hashicorp/aws"
      }
    }
}
provider "aws"{
    region = "ap-south-1"
    access_key = ""
    secret_key = ""
}
resource "aws_instance" "windows"{
    ami = "ami-08abb3eeacc61972d"
    instance_type = "t2.micro"
}
output "public_ip"{
    value = aws_instance.windows.public_ip
}
