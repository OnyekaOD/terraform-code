resource "aws_instance" "db" {
   ami = data.aws_ami.amzlinux2.id
   instance_type = var.instance_type
   vpc_security_group_ids = [aws_security_group.allow_tls.id]
   key_name = var.access_key
   tags = {
     "Name" = "My_db_server"
  }
}

