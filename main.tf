provider "aws"{
		region = "ap-northeast-1"
	}

terraform {
  backend "s3" {
		bucket = "tfrevision-s3bucket"
		key = "terraform"
		region = "ap-northeast-1"
	}
}
resource aws_instance "new_s3_instance"{
		ami = "ami-05375ba8414409b07"
		instance_type = "t2.micro"
		count = 1
		tags = {
		name = "new_s3_instance_${count.index}"
          }		

}
