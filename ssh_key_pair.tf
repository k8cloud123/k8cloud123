resource "aws_key_pair" "ssh_key" {
  key_name = var.ssh_key_name
  public_key = file("~/.ssh/id_rsa.pub")
}
