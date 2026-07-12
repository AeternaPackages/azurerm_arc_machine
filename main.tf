locals {
  arc_machines = { for k1, v1 in var.arc_machines : k1 => { identity = v1.identity, kind = v1.kind, location = v1.location, name = v1.name, resource_group_name = v1.resource_group_name, tags = v1.tags } }

  arc_machine_automanage_configuration_assignments = merge([
    for k1, v1 in var.arc_machines : {
      for k2, v2 in coalesce(v1.arc_machine_automanage_configuration_assignments, {}) :
      "${k1}/${k2}" => merge(v2, {
        arc_machine_id = module.arc_machines.arc_machines_id["${k1}"]
      })
    }
  ]...)

  arc_machine_extensions = merge([
    for k1, v1 in var.arc_machines : {
      for k2, v2 in coalesce(v1.arc_machine_extensions, {}) :
      "${k1}/${k2}" => merge(v2, {
        arc_machine_id = module.arc_machines.arc_machines_id["${k1}"]
      })
    }
  ]...)
}

module "arc_machines" {
  source       = "git::https://github.com/AeternaModules/azurerm_arc_machine.git?ref=v4.80.0"
  arc_machines = local.arc_machines
}

module "arc_machine_automanage_configuration_assignments" {
  source                                           = "git::https://github.com/AeternaModules/azurerm_arc_machine_automanage_configuration_assignment.git?ref=v4.80.0"
  arc_machine_automanage_configuration_assignments = local.arc_machine_automanage_configuration_assignments
  depends_on                                       = [module.arc_machines]
}

module "arc_machine_extensions" {
  source                 = "git::https://github.com/AeternaModules/azurerm_arc_machine_extension.git?ref=v4.80.0"
  arc_machine_extensions = local.arc_machine_extensions
  depends_on             = [module.arc_machines]
}

