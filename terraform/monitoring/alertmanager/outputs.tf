output "alertmanager_service_url" {
  description = "The URL for accessing Alertmanager service"
  value       = module.alertmanager.alertmanager_service_url
}
