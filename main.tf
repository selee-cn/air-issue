provider "aws" {
 region                  = "ap-northeast-2"
}


resource "aws_security_group" "sg" {
  name        = "example-security-group"
  vpc_id      = "vpc-381c8153"

  ingress {
    from_port                = 80
    to_port                  = 80
    protocol                 = "tcp"
    security_groups          = ["sg-01e480a6adb7ce9ad"]  # 타계정의 Security Group ID
    description              = "Allow traffic from the referenced security group in another account"
  }
}

