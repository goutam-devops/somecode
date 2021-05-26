resource "aws_instance" "webserver" {
  ami                    = "ami-0745b1128f7f68254" #id of desired AMI
  instance_type          = "t2.medium"
  subnet_id              = aws_subnet.pub_sub.id
  vpc_security_group_ids = [aws_security_group.general_sg.id, aws_security_group.bastion_sg.id]
}

resource "aws_instance" "appserver" {
  ami                    = "ami-0745b1128f7f68254" #id of desired AMI
  instance_type          = "t2.medium"
  subnet_id              = aws_subnet.prv_sub.id
  vpc_security_group_ids = [aws_security_group.app_sg.id]
}

resource "aws_instance" "dbserver" {
  ami                    = "ami-0745b1128f7f68254" #id of desired AMI
  instance_type          = "t2.medium"
  subnet_id              = aws_subnet.prv_sub.id
  vpc_security_group_ids = [aws_security_group.db_sg.id]
}