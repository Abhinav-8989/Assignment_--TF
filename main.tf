# resource "aws_instance" "web1" {
#  count= length(var.car)
# ami           = "ami-08bd8e5c51334492e"
 
#  instance_type = "t2.micro"
#  tags = {
#     Name = "Abhinav-TF-Windows"
#     Owner = "Abhinav Sharma"
#     Purpose = "testing"
#  }
# }
# resource "aws_instance" "web2" {
#  for_each = var.s3
# ami           = "ami-08bd8e5c51334492e"
 
#  instance_type = "t2.micro"
#  tags = {
#     Name = var.s3["Name"]
#     Owner = var.s3["Owner"]
#     Purpose = var.s3["Purpose"]
#  }
# }
resource "aws_s3_bucket" "web3" {
  count  = length(var.car)
  bucket = var.car[count.index]

  tags = {
    Owner   = "Abhinav Sharma"
    Purpose = "Traning"
  }
}