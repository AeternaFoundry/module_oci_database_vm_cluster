resource "oci_database_vm_cluster" "database_vm_clusters" {
  for_each = var.database_vm_clusters

  compartment_id               = each.value.compartment_id
  cpu_core_count               = each.value.cpu_core_count
  display_name                 = each.value.display_name
  exadata_infrastructure_id    = each.value.exadata_infrastructure_id
  gi_version                   = each.value.gi_version
  ssh_public_keys              = each.value.ssh_public_keys
  vm_cluster_network_id        = each.value.vm_cluster_network_id
  data_storage_percentage      = each.value.data_storage_percentage
  data_storage_size_in_gb      = each.value.data_storage_size_in_gb
  data_storage_size_in_tbs     = each.value.data_storage_size_in_tbs
  db_node_storage_size_in_gbs  = each.value.db_node_storage_size_in_gbs
  db_servers                   = each.value.db_servers
  defined_tags                 = each.value.defined_tags
  exascale_db_storage_vault_id = each.value.exascale_db_storage_vault_id
  freeform_tags                = each.value.freeform_tags
  is_local_backup_enabled      = each.value.is_local_backup_enabled
  is_sparse_diskgroup_enabled  = each.value.is_sparse_diskgroup_enabled
  license_model                = each.value.license_model
  memory_size_in_gbs           = each.value.memory_size_in_gbs
  ocpu_count                   = each.value.ocpu_count
  reco_storage_percentage      = each.value.reco_storage_percentage
  sparse_storage_percentage    = each.value.sparse_storage_percentage
  system_version               = each.value.system_version
  time_zone                    = each.value.time_zone
  vm_backup_storage_type       = each.value.vm_backup_storage_type
  vm_cluster_type              = each.value.vm_cluster_type
  vm_file_system_storage_type  = each.value.vm_file_system_storage_type

  dynamic "cloud_automation_update_details" {
    for_each = each.value.cloud_automation_update_details != null ? [each.value.cloud_automation_update_details] : []
    content {
      dynamic "apply_update_time_preference" {
        for_each = cloud_automation_update_details.value.apply_update_time_preference != null ? [cloud_automation_update_details.value.apply_update_time_preference] : []
        content {
          apply_update_preferred_end_time   = apply_update_time_preference.value.apply_update_preferred_end_time
          apply_update_preferred_start_time = apply_update_time_preference.value.apply_update_preferred_start_time
        }
      }
      dynamic "freeze_period" {
        for_each = cloud_automation_update_details.value.freeze_period != null ? [cloud_automation_update_details.value.freeze_period] : []
        content {
          freeze_period_end_time   = freeze_period.value.freeze_period_end_time
          freeze_period_start_time = freeze_period.value.freeze_period_start_time
        }
      }
      is_early_adoption_enabled = cloud_automation_update_details.value.is_early_adoption_enabled
      is_freeze_period_enabled  = cloud_automation_update_details.value.is_freeze_period_enabled
    }
  }

  dynamic "data_collection_options" {
    for_each = each.value.data_collection_options != null ? [each.value.data_collection_options] : []
    content {
      is_diagnostics_events_enabled = data_collection_options.value.is_diagnostics_events_enabled
      is_health_monitoring_enabled  = data_collection_options.value.is_health_monitoring_enabled
      is_incident_logs_enabled      = data_collection_options.value.is_incident_logs_enabled
    }
  }

  dynamic "file_system_configuration_details" {
    for_each = each.value.file_system_configuration_details != null ? each.value.file_system_configuration_details : []
    content {
      file_system_size_gb = file_system_configuration_details.value.file_system_size_gb
      mount_point         = file_system_configuration_details.value.mount_point
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }

  dynamic "update_details" {
    for_each = each.value.update_details != null ? [each.value.update_details] : []
    content {
      update_action = update_details.value.update_action
      update_id     = update_details.value.update_id
      update_mode   = update_details.value.update_mode
    }
  }
}

