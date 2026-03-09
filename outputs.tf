output "aws_ami_id" {
  value = data.aws_ami.amazon-2.id
}
output "ec2_public_ip" {
  value = aws_instance.myapp-webapp.public_ip
}