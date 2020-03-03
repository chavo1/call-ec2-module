#ec2 aws east
module "ec2-east" {
  source  = "app.terraform.io/chavo4/ec2/aws"
  version = "0.0.1"

  ami = var.ami_east
}

#ec2 aws west
module "ec2-west" {
  providers = {
    aws = aws.west
  }
  source  = "app.terraform.io/chavo4/ec2/aws"
  version = "0.0.2"

  ami = var.ami_west

}
