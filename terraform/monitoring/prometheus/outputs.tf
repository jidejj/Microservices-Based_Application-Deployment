output "prometheus_service_url" {
  description = "The URL for accessing Prometheus service"
  value       = module.prometheus.prometheus_service_url
}

output "prometheus_admin_password" {
  description = "The admin password for Prometheus"
  value       = module.prometheus.prometheus_admin_password
}
