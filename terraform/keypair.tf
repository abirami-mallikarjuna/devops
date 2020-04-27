resource "aws_key_pair" "deployer" {
  key_name   = "abiuser3"
  public_key = file("/root/.ssh/id_rsa.pub")
}

