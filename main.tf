provider "aws" {
 region                  = "ap-northeast-2"
 access_key              = "ASIAQKPIMHBUFL26B4PB"
 secret_key              = var.secret_key
}


resource "aws_security_group" "sg" {
  name        = "sg-example"
  vpc_id      = "vpc-054f7b1ecfa344769"
}

resource "aws_vpc_security_group_ingress_rule" "sg-rule" {
  security_group_id = aws_security_group.sg.id
  referenced_security_group_id = "022499047528/sg-01e480a6adb7ce9ad"

  cidr_ipv4   = "0.0.0.0/0"
  from_port   = 80
  ip_protocol = "tcp"
  to_port     = 80
}
