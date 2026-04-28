output "public_ip" {
  value = aws_instance.lamp_server.public_ip
}

output "website_url" {
  value = "http://${aws_instance.lamp_server.public_ip}"
}
