# pass security group id to database
output "output-app-secuiry-group" {
  value = "${aws_security_group.security-group.id}"
}