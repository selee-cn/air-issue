provider "aws" {
 region                  = "ap-northeast-2"
}


resource "aws_security_group" "sg" {
  name        = "example-security-group"
  vpc_id      = "022499047528/vpc-054f7b1ecfa344769"
}

resource "aws_vpc_security_group_ingress_rule" "sg-rule" {
  security_group_id = aws_security_group.sg.id
  referenced_security_group_id = "022499047528/sg-01e480a6adb7ce9ad"

  from_port   = 80
  ip_protocol = "tcp"
  to_port     = 80
}
