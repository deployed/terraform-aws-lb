output "dns_name" {
  description = "DNS Name of the master load balancer"
  value       = "${length(var.instances) < 1 ? "" : aws_lb.loadbalancer.0.dns_name}"
}
