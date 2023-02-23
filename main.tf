provider "aws"{
	region = "ap-northeast-1"
}
terraform{
	backend "s3" {
		bucket = "terraform-dhana-bucket"
		key = "terraform.tfstate"
		region = "ap-northeast-1"
}
}

resource aws_instance "aws_new_inst_s3"{
	ami = "ami-01bb8868a249be5ca"
	instance_type = "t2.micro"
	tags = {
		name = "new-s3-instance"
	}
}
