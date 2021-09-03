output "my_public_ip" {
  value       = ["${aws_instance.myec2.public_ip}"]
  description = "description"
}

output "module_sg_id" {
  value       = "${aws_security_group.webserver_sg.id}"
  }
