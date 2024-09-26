output "dns_name" {
  description = "DNS Name of the master load balancer"
  value       = "${length(var.instances) < 1 ? "" : join(",", aws_lb.loadbalancer.*.dns_name)}"
}

output "zone_id" {
  description = "The canonical hosted zone ID of the load balancer (to be used in a Route 53 Alias record)."
  value       = aws_lb.loadbalancer.zone_id
}

output "id" {
  description = "The ARN of the load balancer (matches arn)."
  value       = aws_lb.loadbalancer.id
}
