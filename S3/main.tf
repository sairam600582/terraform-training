resource "aws_s3_bucket" "my-aws-bucket-0" {

   bucket = "my-unique-bucket-10-26-13112025-1234567890"

   tags = {
     Name        = "My bucket"
     Environment = "Dev"
   }
 }
