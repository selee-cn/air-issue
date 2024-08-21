provider "aws" {
 region                  = "ap-northeast-2"
}


resource "aws_security_group" "sg" {
  name        = "example-security-group"
  vpc_id      = "vpc-381c8153"
}

resource "aws_vpc_security_group_ingress_rule" "sg-rule" {
  security_group_id = aws_security_group.sg.id
  #referenced_security_group_id = "022499047528/sg-01e480a6adb7ce9ad"

  from_port   = 80
  ip_protocol = "tcp"
  security_groups = ["sg-01e480a6adb7ce9ad"] 
  to_port     = 80
}
