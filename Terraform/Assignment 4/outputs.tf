#Output the IP Address of the Container
output "ip_address" {
  value       = "${module.ghost.ip_address}"
  description = "The IP for the container."
}

output "container_name" {
  value       = "${module.ghost.container_name}"
  description = "The name of the container."
}

  # output "aws_elb_public_dns" {
  #   value = "${module.ghost.dns_name}"
  # }
