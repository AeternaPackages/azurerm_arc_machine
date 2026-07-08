variable "arc_machines" {
  description = <<EOT
Map of arc_machines, attributes below
Required:
    - kind
    - location
    - name
    - resource_group_name
Optional:
    - tags
    - identity (block)
Nested arc_machine_automanage_configuration_assignments (azurerm_arc_machine_automanage_configuration_assignment):
    Required:
        - configuration_id
Nested arc_machine_extensions (azurerm_arc_machine_extension):
    Required:
        - location
        - name
        - publisher
        - type
    Optional:
        - automatic_upgrade_enabled
        - force_update_tag
        - protected_settings
        - settings
        - tags
        - type_handler_version
EOT

  type = map(object({
    kind                = string
    location            = string
    name                = string
    resource_group_name = string
    tags                = optional(map(string))
    identity = optional(object({
      type = string
    }))
    arc_machine_automanage_configuration_assignments = optional(map(object({
      configuration_id = string
    })))
    arc_machine_extensions = optional(map(object({
      location                  = string
      name                      = string
      publisher                 = string
      type                      = string
      automatic_upgrade_enabled = optional(bool) # Default: true
      force_update_tag          = optional(string)
      protected_settings        = optional(string)
      settings                  = optional(string)
      tags                      = optional(map(string))
      type_handler_version      = optional(string)
    })))
  }))

  validation {
    condition = alltrue(concat(
      [for kk in keys(var.arc_machines) : !strcontains(kk, "/")],
      flatten([for k0, v0 in var.arc_machines : [for kk in keys(coalesce(v0.arc_machine_automanage_configuration_assignments, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.arc_machines : [for kk in keys(coalesce(v0.arc_machine_extensions, {})) : !strcontains(kk, "/")]])
    ))
    error_message = "Map keys in this package must not contain '/': it is used internally as a nesting-key separator, so a key containing it can silently collide two different nested entries into one. Rename the offending key(s)."
  }
}
