# --- azurerm_arc_machine ---
output "arc_machines" {
  description = "All arc_machine resources"
  value       = module.arc_machines.arc_machines
}
output "arc_machines_identity" {
  description = "List of identity values across all arc_machines"
  value       = [for k, v in module.arc_machines.arc_machines : v.identity]
}
output "arc_machines_kind" {
  description = "List of kind values across all arc_machines"
  value       = [for k, v in module.arc_machines.arc_machines : v.kind]
}
output "arc_machines_location" {
  description = "List of location values across all arc_machines"
  value       = [for k, v in module.arc_machines.arc_machines : v.location]
}
output "arc_machines_name" {
  description = "List of name values across all arc_machines"
  value       = [for k, v in module.arc_machines.arc_machines : v.name]
}
output "arc_machines_resource_group_name" {
  description = "List of resource_group_name values across all arc_machines"
  value       = [for k, v in module.arc_machines.arc_machines : v.resource_group_name]
}
output "arc_machines_tags" {
  description = "List of tags values across all arc_machines"
  value       = [for k, v in module.arc_machines.arc_machines : v.tags]
}


# --- azurerm_arc_machine_automanage_configuration_assignment ---
output "arc_machine_automanage_configuration_assignments" {
  description = "All arc_machine_automanage_configuration_assignment resources"
  value       = module.arc_machine_automanage_configuration_assignments.arc_machine_automanage_configuration_assignments
}
output "arc_machine_automanage_configuration_assignments_arc_machine_id" {
  description = "List of arc_machine_id values across all arc_machine_automanage_configuration_assignments"
  value       = [for k, v in module.arc_machine_automanage_configuration_assignments.arc_machine_automanage_configuration_assignments : v.arc_machine_id]
}
output "arc_machine_automanage_configuration_assignments_configuration_id" {
  description = "List of configuration_id values across all arc_machine_automanage_configuration_assignments"
  value       = [for k, v in module.arc_machine_automanage_configuration_assignments.arc_machine_automanage_configuration_assignments : v.configuration_id]
}


# --- azurerm_arc_machine_extension ---
output "arc_machine_extensions" {
  description = "All arc_machine_extension resources"
  value       = module.arc_machine_extensions.arc_machine_extensions
  sensitive   = true
}
output "arc_machine_extensions_arc_machine_id" {
  description = "List of arc_machine_id values across all arc_machine_extensions"
  value       = [for k, v in module.arc_machine_extensions.arc_machine_extensions : v.arc_machine_id]
}
output "arc_machine_extensions_automatic_upgrade_enabled" {
  description = "List of automatic_upgrade_enabled values across all arc_machine_extensions"
  value       = [for k, v in module.arc_machine_extensions.arc_machine_extensions : v.automatic_upgrade_enabled]
}
output "arc_machine_extensions_force_update_tag" {
  description = "List of force_update_tag values across all arc_machine_extensions"
  value       = [for k, v in module.arc_machine_extensions.arc_machine_extensions : v.force_update_tag]
}
output "arc_machine_extensions_location" {
  description = "List of location values across all arc_machine_extensions"
  value       = [for k, v in module.arc_machine_extensions.arc_machine_extensions : v.location]
}
output "arc_machine_extensions_name" {
  description = "List of name values across all arc_machine_extensions"
  value       = [for k, v in module.arc_machine_extensions.arc_machine_extensions : v.name]
}
output "arc_machine_extensions_protected_settings" {
  description = "List of protected_settings values across all arc_machine_extensions"
  value       = [for k, v in module.arc_machine_extensions.arc_machine_extensions : v.protected_settings]
  sensitive   = true
}
output "arc_machine_extensions_publisher" {
  description = "List of publisher values across all arc_machine_extensions"
  value       = [for k, v in module.arc_machine_extensions.arc_machine_extensions : v.publisher]
}
output "arc_machine_extensions_settings" {
  description = "List of settings values across all arc_machine_extensions"
  value       = [for k, v in module.arc_machine_extensions.arc_machine_extensions : v.settings]
}
output "arc_machine_extensions_tags" {
  description = "List of tags values across all arc_machine_extensions"
  value       = [for k, v in module.arc_machine_extensions.arc_machine_extensions : v.tags]
}
output "arc_machine_extensions_type" {
  description = "List of type values across all arc_machine_extensions"
  value       = [for k, v in module.arc_machine_extensions.arc_machine_extensions : v.type]
}
output "arc_machine_extensions_type_handler_version" {
  description = "List of type_handler_version values across all arc_machine_extensions"
  value       = [for k, v in module.arc_machine_extensions.arc_machine_extensions : v.type_handler_version]
}



