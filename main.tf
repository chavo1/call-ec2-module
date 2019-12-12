#ec2 aws east
module "ec2-east" {
  source = "git@github.com:chavo1/ec2-module.git"

  ami = var.ami_east
}

#ec2 aws west
module "ec2-west" {
  providers = {
    aws = aws.west
  }
  source = "git@github.com:chavo1/ec2-module.git"

  ami = var.ami_west

}