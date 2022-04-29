module "cart-ami" {
  source = "git::https://github.com/Madhu427/terraform-ami.git"
}

provider "aws" {
  region = "us-east-1"
}


terraform {

  backend "s3" {
    bucket = "tf-bucket-61"
    key    = "ami/cart/terraform.tfstate"
    region = "us-east-1"
  }

}