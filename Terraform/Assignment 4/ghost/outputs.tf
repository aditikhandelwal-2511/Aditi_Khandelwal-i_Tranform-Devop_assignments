#Output the IP Address of the Container
output "ip_address" {
  value       = "${docker_container.ghost_container.ip_address}"
  description = "The IP for the container."
}

output "container_name" {
  value       = "${docker_container.ghost_container.name}"
  description = "The name of the container."
}

#  output "aws_elb_public_dns" {
#     value = docker_container.ghost_container.dns_name
#   }
