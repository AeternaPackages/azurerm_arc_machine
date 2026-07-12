# --- azurerm_arc_machine ---
output "arc_machines_id" {
  description = "Map of id values across all arc_machines, keyed the same as var.arc_machines"
  value       = module.arc_machines.arc_machines_id
}

output "arc_machines_identity" {
  description = "Map of identity values across all arc_machines, keyed the same as var.arc_machines"
  value       = module.arc_machines.arc_machines_identity
}

output "arc_machines_kind" {
  description = "Map of kind values across all arc_machines, keyed the same as var.arc_machines"
  value       = module.arc_machines.arc_machines_kind
}

output "arc_machines_location" {
  description = "Map of location values across all arc_machines, keyed the same as var.arc_machines"
  value       = module.arc_machines.arc_machines_location
}

output "arc_machines_name" {
  description = "Map of name values across all arc_machines, keyed the same as var.arc_machines"
  value       = module.arc_machines.arc_machines_name
}

output "arc_machines_resource_group_name" {
  description = "Map of resource_group_name values across all arc_machines, keyed the same as var.arc_machines"
  value       = module.arc_machines.arc_machines_resource_group_name
}

output "arc_machines_tags" {
  description = "Map of tags values across all arc_machines, keyed the same as var.arc_machines"
  value       = module.arc_machines.arc_machines_tags
}

# --- azurerm_arc_machine_automanage_configuration_assignment ---
output "arc_machine_automanage_configuration_assignments_id" {
  description = "Map of id values across all arc_machine_automanage_configuration_assignments, keyed the same as var.arc_machine_automanage_configuration_assignments"
  value       = module.arc_machine_automanage_configuration_assignments.arc_machine_automanage_configuration_assignments_id
}

output "arc_machine_automanage_configuration_assignments_arc_machine_id" {
  description = "Map of arc_machine_id values across all arc_machine_automanage_configuration_assignments, keyed the same as var.arc_machine_automanage_configuration_assignments"
  value       = module.arc_machine_automanage_configuration_assignments.arc_machine_automanage_configuration_assignments_arc_machine_id
}

output "arc_machine_automanage_configuration_assignments_configuration_id" {
  description = "Map of configuration_id values across all arc_machine_automanage_configuration_assignments, keyed the same as var.arc_machine_automanage_configuration_assignments"
  value       = module.arc_machine_automanage_configuration_assignments.arc_machine_automanage_configuration_assignments_configuration_id
}

# --- azurerm_arc_machine_extension ---
output "arc_machine_extensions_id" {
  description = "Map of id values across all arc_machine_extensions, keyed the same as var.arc_machine_extensions"
  value       = module.arc_machine_extensions.arc_machine_extensions_id
}

output "arc_machine_extensions_arc_machine_id" {
  description = "Map of arc_machine_id values across all arc_machine_extensions, keyed the same as var.arc_machine_extensions"
  value       = module.arc_machine_extensions.arc_machine_extensions_arc_machine_id
}

output "arc_machine_extensions_automatic_upgrade_enabled" {
  description = "Map of automatic_upgrade_enabled values across all arc_machine_extensions, keyed the same as var.arc_machine_extensions"
  value       = module.arc_machine_extensions.arc_machine_extensions_automatic_upgrade_enabled
}

output "arc_machine_extensions_force_update_tag" {
  description = "Map of force_update_tag values across all arc_machine_extensions, keyed the same as var.arc_machine_extensions"
  value       = module.arc_machine_extensions.arc_machine_extensions_force_update_tag
}

output "arc_machine_extensions_location" {
  description = "Map of location values across all arc_machine_extensions, keyed the same as var.arc_machine_extensions"
  value       = module.arc_machine_extensions.arc_machine_extensions_location
}

output "arc_machine_extensions_name" {
  description = "Map of name values across all arc_machine_extensions, keyed the same as var.arc_machine_extensions"
  value       = module.arc_machine_extensions.arc_machine_extensions_name
}

output "arc_machine_extensions_protected_settings" {
  description = "Map of protected_settings values across all arc_machine_extensions, keyed the same as var.arc_machine_extensions"
  value       = module.arc_machine_extensions.arc_machine_extensions_protected_settings
  sensitive   = true
}

output "arc_machine_extensions_publisher" {
  description = "Map of publisher values across all arc_machine_extensions, keyed the same as var.arc_machine_extensions"
  value       = module.arc_machine_extensions.arc_machine_extensions_publisher
}

output "arc_machine_extensions_settings" {
  description = "Map of settings values across all arc_machine_extensions, keyed the same as var.arc_machine_extensions"
  value       = module.arc_machine_extensions.arc_machine_extensions_settings
}

output "arc_machine_extensions_tags" {
  description = "Map of tags values across all arc_machine_extensions, keyed the same as var.arc_machine_extensions"
  value       = module.arc_machine_extensions.arc_machine_extensions_tags
}

output "arc_machine_extensions_type" {
  description = "Map of type values across all arc_machine_extensions, keyed the same as var.arc_machine_extensions"
  value       = module.arc_machine_extensions.arc_machine_extensions_type
}

output "arc_machine_extensions_type_handler_version" {
  description = "Map of type_handler_version values across all arc_machine_extensions, keyed the same as var.arc_machine_extensions"
  value       = module.arc_machine_extensions.arc_machine_extensions_type_handler_version
}


