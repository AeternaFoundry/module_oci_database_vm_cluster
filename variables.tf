variable "database_vm_clusters" {
  description = <<EOT
Map of database_vm_clusters, attributes below
Required:
    - compartment_id
    - cpu_core_count
    - display_name
    - exadata_infrastructure_id
    - gi_version
    - ssh_public_keys
    - vm_cluster_network_id
Optional:
    - data_storage_percentage
    - data_storage_size_in_gb
    - data_storage_size_in_tbs
    - db_node_storage_size_in_gbs
    - db_servers
    - defined_tags
    - exascale_db_storage_vault_id
    - freeform_tags
    - is_local_backup_enabled
    - is_sparse_diskgroup_enabled
    - license_model
    - memory_size_in_gbs
    - ocpu_count
    - reco_storage_percentage
    - sparse_storage_percentage
    - system_version
    - time_zone
    - vm_backup_storage_type
    - vm_cluster_type
    - vm_file_system_storage_type
    - cloud_automation_update_details (block):
        - apply_update_time_preference (optional, block):
            - apply_update_preferred_end_time (optional)
            - apply_update_preferred_start_time (optional)
        - freeze_period (optional, block):
            - freeze_period_end_time (optional)
            - freeze_period_start_time (optional)
        - is_early_adoption_enabled (optional)
        - is_freeze_period_enabled (optional)
    - data_collection_options (block):
        - is_diagnostics_events_enabled (optional)
        - is_health_monitoring_enabled (optional)
        - is_incident_logs_enabled (optional)
    - file_system_configuration_details (block):
        - file_system_size_gb (optional)
        - mount_point (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
    - update_details (block):
        - update_action (optional)
        - update_id (optional)
        - update_mode (optional)
EOT

  type = map(object({
    compartment_id               = string
    cpu_core_count               = number
    display_name                 = string
    exadata_infrastructure_id    = string
    gi_version                   = string
    ssh_public_keys              = set(string)
    vm_cluster_network_id        = string
    data_storage_percentage      = optional(number)
    data_storage_size_in_gb      = optional(number)
    data_storage_size_in_tbs     = optional(number)
    db_node_storage_size_in_gbs  = optional(number)
    db_servers                   = optional(list(string))
    defined_tags                 = optional(map(string))
    exascale_db_storage_vault_id = optional(string)
    freeform_tags                = optional(map(string))
    is_local_backup_enabled      = optional(bool)
    is_sparse_diskgroup_enabled  = optional(bool)
    license_model                = optional(string)
    memory_size_in_gbs           = optional(number)
    ocpu_count                   = optional(number)
    reco_storage_percentage      = optional(number)
    sparse_storage_percentage    = optional(number)
    system_version               = optional(string)
    time_zone                    = optional(string)
    vm_backup_storage_type       = optional(string)
    vm_cluster_type              = optional(string)
    vm_file_system_storage_type  = optional(string)
    cloud_automation_update_details = optional(object({
      apply_update_time_preference = optional(object({
        apply_update_preferred_end_time   = optional(string)
        apply_update_preferred_start_time = optional(string)
      }))
      freeze_period = optional(object({
        freeze_period_end_time   = optional(string)
        freeze_period_start_time = optional(string)
      }))
      is_early_adoption_enabled = optional(bool)
      is_freeze_period_enabled  = optional(bool)
    }))
    data_collection_options = optional(object({
      is_diagnostics_events_enabled = optional(bool)
      is_health_monitoring_enabled  = optional(bool)
      is_incident_logs_enabled      = optional(bool)
    }))
    file_system_configuration_details = optional(list(object({
      file_system_size_gb = optional(number)
      mount_point         = optional(string)
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
    update_details = optional(object({
      update_action = optional(string)
      update_id     = optional(string)
      update_mode   = optional(string)
    }))
  }))
}

