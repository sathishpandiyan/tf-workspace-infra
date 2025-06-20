

resource "aws_instance" "example" {
  count                  =  var.create_ec2 ? 1 : 0
  ami                    =  var.ami_id  # Replace with your desired AMI ID
  instance_type          =  var.instance_type              # Replace with your desired instance type
  subnet_id              = "subnet-0f149193d192149f1" # Replace with your subnet ID
  #vpc_security_group_ids = [aws_security_group.allow_tls.id]
  key_name               = "th"  # Replace with your key pair name

  tags = {
    Name = "EC2-${terraform.workspace}"
  }
}