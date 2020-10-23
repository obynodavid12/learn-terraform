resource "aws_s3_bucket" "b" {
  bucket = "viobucket-s10df2"
  acl    = "private"

  tags = {
    Name = "viobucket-s10df2"
  }
}



