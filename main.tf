provider "aws" {
 region                  = "ap-northeast-2"
}


resource "aws_security_group" "sg" {
  name        = "example-security-group"
  vpc_id      = "vpc-381c8153"

  ingress {
    from_port                = 443
    to_port                  = 443
    protocol                 = "tcp"
    security_groups          = ["sg-032fa204f8079f9d0"]  # 타계정의 Security Group ID
    description              = "Allow traffic from the referenced security group in another account"
  }
}

