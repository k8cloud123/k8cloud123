resource "aws_instance" "app02" {
    ami = "ami-053a617c6207ecc7b"
    instance_type = var.instance_type
    key_name = aws_key_pair.ssh_key.key_name
    security_groups = [aws_security_group.instance_eu.name]
    subnet_id = aws_subnet.main.id
    iam_instance_profile {
        name = "aws-elasticbeanstalk-ec2-role"
    }

}