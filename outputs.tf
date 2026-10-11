output "database_vm_clusters_id" {
  description = "Map of id values across all database_vm_clusters, keyed the same as var.database_vm_clusters except keys with no id are omitted"
  value       = { for k, v in oci_database_vm_cluster.database_vm_clusters : k => v.id if v.id != null && length(v.id) > 0 }
}
output "database_vm_clusters_availability_domain" {
  description = "Map of availability_domain values across all database_vm_clusters, keyed the same as var.database_vm_clusters except keys with no availability_domain are omitted"
  value       = { for k, v in oci_database_vm_cluster.database_vm_clusters : k => v.availability_domain if v.availability_domain != null && length(v.availability_domain) > 0 }
}
output "database_vm_clusters_cloud_automation_update_details" {
  description = "Map of cloud_automation_update_details values across all database_vm_clusters, keyed the same as var.database_vm_clusters except keys with no cloud_automation_update_details are omitted"
  value       = { for k, v in oci_database_vm_cluster.database_vm_clusters : k => one(v.cloud_automation_update_details) if v.cloud_automation_update_details != null && length(v.cloud_automation_update_details) > 0 }
}
output "database_vm_clusters_compartment_id" {
  description = "Map of compartment_id values across all database_vm_clusters, keyed the same as var.database_vm_clusters except keys with no compartment_id are omitted"
  value       = { for k, v in oci_database_vm_cluster.database_vm_clusters : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "database_vm_clusters_compute_model" {
  description = "Map of compute_model values across all database_vm_clusters, keyed the same as var.database_vm_clusters except keys with no compute_model are omitted"
  value       = { for k, v in oci_database_vm_cluster.database_vm_clusters : k => v.compute_model if v.compute_model != null && length(v.compute_model) > 0 }
}
output "database_vm_clusters_cpu_core_count" {
  description = "Map of cpu_core_count values across all database_vm_clusters, keyed the same as var.database_vm_clusters except keys with no cpu_core_count are omitted"
  value       = { for k, v in oci_database_vm_cluster.database_vm_clusters : k => v.cpu_core_count if v.cpu_core_count != null }
}
output "database_vm_clusters_cpus_enabled" {
  description = "Map of cpus_enabled values across all database_vm_clusters, keyed the same as var.database_vm_clusters except keys with no cpus_enabled are omitted"
  value       = { for k, v in oci_database_vm_cluster.database_vm_clusters : k => v.cpus_enabled if v.cpus_enabled != null }
}
output "database_vm_clusters_data_collection_options" {
  description = "Map of data_collection_options values across all database_vm_clusters, keyed the same as var.database_vm_clusters except keys with no data_collection_options are omitted"
  value       = { for k, v in oci_database_vm_cluster.database_vm_clusters : k => one(v.data_collection_options) if v.data_collection_options != null && length(v.data_collection_options) > 0 }
}
output "database_vm_clusters_data_storage_percentage" {
  description = "Map of data_storage_percentage values across all database_vm_clusters, keyed the same as var.database_vm_clusters except keys with no data_storage_percentage are omitted"
  value       = { for k, v in oci_database_vm_cluster.database_vm_clusters : k => v.data_storage_percentage if v.data_storage_percentage != null }
}
output "database_vm_clusters_data_storage_size_in_gb" {
  description = "Map of data_storage_size_in_gb values across all database_vm_clusters, keyed the same as var.database_vm_clusters except keys with no data_storage_size_in_gb are omitted"
  value       = { for k, v in oci_database_vm_cluster.database_vm_clusters : k => v.data_storage_size_in_gb if v.data_storage_size_in_gb != null }
}
output "database_vm_clusters_data_storage_size_in_tbs" {
  description = "Map of data_storage_size_in_tbs values across all database_vm_clusters, keyed the same as var.database_vm_clusters except keys with no data_storage_size_in_tbs are omitted"
  value       = { for k, v in oci_database_vm_cluster.database_vm_clusters : k => v.data_storage_size_in_tbs if v.data_storage_size_in_tbs != null }
}
output "database_vm_clusters_db_node_storage_size_in_gbs" {
  description = "Map of db_node_storage_size_in_gbs values across all database_vm_clusters, keyed the same as var.database_vm_clusters except keys with no db_node_storage_size_in_gbs are omitted"
  value       = { for k, v in oci_database_vm_cluster.database_vm_clusters : k => v.db_node_storage_size_in_gbs if v.db_node_storage_size_in_gbs != null }
}
output "database_vm_clusters_db_servers" {
  description = "Map of db_servers values across all database_vm_clusters, keyed the same as var.database_vm_clusters except keys with no db_servers are omitted"
  value       = { for k, v in oci_database_vm_cluster.database_vm_clusters : k => v.db_servers if v.db_servers != null && length(v.db_servers) > 0 }
}
output "database_vm_clusters_defined_tags" {
  description = "Map of defined_tags values across all database_vm_clusters, keyed the same as var.database_vm_clusters except keys with no defined_tags are omitted"
  value       = { for k, v in oci_database_vm_cluster.database_vm_clusters : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "database_vm_clusters_display_name" {
  description = "Map of display_name values across all database_vm_clusters, keyed the same as var.database_vm_clusters except keys with no display_name are omitted"
  value       = { for k, v in oci_database_vm_cluster.database_vm_clusters : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "database_vm_clusters_exadata_infrastructure_id" {
  description = "Map of exadata_infrastructure_id values across all database_vm_clusters, keyed the same as var.database_vm_clusters except keys with no exadata_infrastructure_id are omitted"
  value       = { for k, v in oci_database_vm_cluster.database_vm_clusters : k => v.exadata_infrastructure_id if v.exadata_infrastructure_id != null && length(v.exadata_infrastructure_id) > 0 }
}
output "database_vm_clusters_exascale_db_storage_vault_id" {
  description = "Map of exascale_db_storage_vault_id values across all database_vm_clusters, keyed the same as var.database_vm_clusters except keys with no exascale_db_storage_vault_id are omitted"
  value       = { for k, v in oci_database_vm_cluster.database_vm_clusters : k => v.exascale_db_storage_vault_id if v.exascale_db_storage_vault_id != null && length(v.exascale_db_storage_vault_id) > 0 }
}
output "database_vm_clusters_file_system_configuration_details" {
  description = "Map of file_system_configuration_details values across all database_vm_clusters, keyed the same as var.database_vm_clusters except keys with no file_system_configuration_details are omitted"
  value       = { for k, v in oci_database_vm_cluster.database_vm_clusters : k => v.file_system_configuration_details if v.file_system_configuration_details != null && length(v.file_system_configuration_details) > 0 }
}
output "database_vm_clusters_freeform_tags" {
  description = "Map of freeform_tags values across all database_vm_clusters, keyed the same as var.database_vm_clusters except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_database_vm_cluster.database_vm_clusters : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "database_vm_clusters_gi_version" {
  description = "Map of gi_version values across all database_vm_clusters, keyed the same as var.database_vm_clusters except keys with no gi_version are omitted"
  value       = { for k, v in oci_database_vm_cluster.database_vm_clusters : k => v.gi_version if v.gi_version != null && length(v.gi_version) > 0 }
}
output "database_vm_clusters_is_local_backup_enabled" {
  description = "Map of is_local_backup_enabled values across all database_vm_clusters, keyed the same as var.database_vm_clusters except keys with no is_local_backup_enabled are omitted"
  value       = { for k, v in oci_database_vm_cluster.database_vm_clusters : k => v.is_local_backup_enabled if v.is_local_backup_enabled != null }
}
output "database_vm_clusters_is_sparse_diskgroup_enabled" {
  description = "Map of is_sparse_diskgroup_enabled values across all database_vm_clusters, keyed the same as var.database_vm_clusters except keys with no is_sparse_diskgroup_enabled are omitted"
  value       = { for k, v in oci_database_vm_cluster.database_vm_clusters : k => v.is_sparse_diskgroup_enabled if v.is_sparse_diskgroup_enabled != null }
}
output "database_vm_clusters_last_patch_history_entry_id" {
  description = "Map of last_patch_history_entry_id values across all database_vm_clusters, keyed the same as var.database_vm_clusters except keys with no last_patch_history_entry_id are omitted"
  value       = { for k, v in oci_database_vm_cluster.database_vm_clusters : k => v.last_patch_history_entry_id if v.last_patch_history_entry_id != null && length(v.last_patch_history_entry_id) > 0 }
}
output "database_vm_clusters_license_model" {
  description = "Map of license_model values across all database_vm_clusters, keyed the same as var.database_vm_clusters except keys with no license_model are omitted"
  value       = { for k, v in oci_database_vm_cluster.database_vm_clusters : k => v.license_model if v.license_model != null && length(v.license_model) > 0 }
}
output "database_vm_clusters_lifecycle_details" {
  description = "Map of lifecycle_details values across all database_vm_clusters, keyed the same as var.database_vm_clusters except keys with no lifecycle_details are omitted"
  value       = { for k, v in oci_database_vm_cluster.database_vm_clusters : k => v.lifecycle_details if v.lifecycle_details != null && length(v.lifecycle_details) > 0 }
}
output "database_vm_clusters_live_image_version_details" {
  description = "Map of live_image_version_details values across all database_vm_clusters, keyed the same as var.database_vm_clusters except keys with no live_image_version_details are omitted"
  value       = { for k, v in oci_database_vm_cluster.database_vm_clusters : k => v.live_image_version_details if v.live_image_version_details != null && length(v.live_image_version_details) > 0 }
}
output "database_vm_clusters_memory_size_in_gbs" {
  description = "Map of memory_size_in_gbs values across all database_vm_clusters, keyed the same as var.database_vm_clusters except keys with no memory_size_in_gbs are omitted"
  value       = { for k, v in oci_database_vm_cluster.database_vm_clusters : k => v.memory_size_in_gbs if v.memory_size_in_gbs != null }
}
output "database_vm_clusters_ocpu_count" {
  description = "Map of ocpu_count values across all database_vm_clusters, keyed the same as var.database_vm_clusters except keys with no ocpu_count are omitted"
  value       = { for k, v in oci_database_vm_cluster.database_vm_clusters : k => v.ocpu_count if v.ocpu_count != null }
}
output "database_vm_clusters_ocpus_enabled" {
  description = "Map of ocpus_enabled values across all database_vm_clusters, keyed the same as var.database_vm_clusters except keys with no ocpus_enabled are omitted"
  value       = { for k, v in oci_database_vm_cluster.database_vm_clusters : k => v.ocpus_enabled if v.ocpus_enabled != null }
}
output "database_vm_clusters_oracle_linux_version" {
  description = "Map of oracle_linux_version values across all database_vm_clusters, keyed the same as var.database_vm_clusters except keys with no oracle_linux_version are omitted"
  value       = { for k, v in oci_database_vm_cluster.database_vm_clusters : k => v.oracle_linux_version if v.oracle_linux_version != null && length(v.oracle_linux_version) > 0 }
}
output "database_vm_clusters_reco_storage_percentage" {
  description = "Map of reco_storage_percentage values across all database_vm_clusters, keyed the same as var.database_vm_clusters except keys with no reco_storage_percentage are omitted"
  value       = { for k, v in oci_database_vm_cluster.database_vm_clusters : k => v.reco_storage_percentage if v.reco_storage_percentage != null }
}
output "database_vm_clusters_shape" {
  description = "Map of shape values across all database_vm_clusters, keyed the same as var.database_vm_clusters except keys with no shape are omitted"
  value       = { for k, v in oci_database_vm_cluster.database_vm_clusters : k => v.shape if v.shape != null && length(v.shape) > 0 }
}
output "database_vm_clusters_sparse_storage_percentage" {
  description = "Map of sparse_storage_percentage values across all database_vm_clusters, keyed the same as var.database_vm_clusters except keys with no sparse_storage_percentage are omitted"
  value       = { for k, v in oci_database_vm_cluster.database_vm_clusters : k => v.sparse_storage_percentage if v.sparse_storage_percentage != null }
}
output "database_vm_clusters_ssh_public_keys" {
  description = "Map of ssh_public_keys values across all database_vm_clusters, keyed the same as var.database_vm_clusters except keys with no ssh_public_keys are omitted"
  value       = { for k, v in oci_database_vm_cluster.database_vm_clusters : k => v.ssh_public_keys if v.ssh_public_keys != null && length(v.ssh_public_keys) > 0 }
}
output "database_vm_clusters_state" {
  description = "Map of state values across all database_vm_clusters, keyed the same as var.database_vm_clusters except keys with no state are omitted"
  value       = { for k, v in oci_database_vm_cluster.database_vm_clusters : k => v.state if v.state != null && length(v.state) > 0 }
}
output "database_vm_clusters_storage_management_type" {
  description = "Map of storage_management_type values across all database_vm_clusters, keyed the same as var.database_vm_clusters except keys with no storage_management_type are omitted"
  value       = { for k, v in oci_database_vm_cluster.database_vm_clusters : k => v.storage_management_type if v.storage_management_type != null && length(v.storage_management_type) > 0 }
}
output "database_vm_clusters_system_tags" {
  description = "Map of system_tags values across all database_vm_clusters, keyed the same as var.database_vm_clusters except keys with no system_tags are omitted"
  value       = { for k, v in oci_database_vm_cluster.database_vm_clusters : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "database_vm_clusters_system_version" {
  description = "Map of system_version values across all database_vm_clusters, keyed the same as var.database_vm_clusters except keys with no system_version are omitted"
  value       = { for k, v in oci_database_vm_cluster.database_vm_clusters : k => v.system_version if v.system_version != null && length(v.system_version) > 0 }
}
output "database_vm_clusters_time_created" {
  description = "Map of time_created values across all database_vm_clusters, keyed the same as var.database_vm_clusters except keys with no time_created are omitted"
  value       = { for k, v in oci_database_vm_cluster.database_vm_clusters : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "database_vm_clusters_time_zone" {
  description = "Map of time_zone values across all database_vm_clusters, keyed the same as var.database_vm_clusters except keys with no time_zone are omitted"
  value       = { for k, v in oci_database_vm_cluster.database_vm_clusters : k => v.time_zone if v.time_zone != null && length(v.time_zone) > 0 }
}
output "database_vm_clusters_update_details" {
  description = "Map of update_details values across all database_vm_clusters, keyed the same as var.database_vm_clusters except keys with no update_details are omitted"
  value       = { for k, v in oci_database_vm_cluster.database_vm_clusters : k => one(v.update_details) if v.update_details != null && length(v.update_details) > 0 }
}
output "database_vm_clusters_vm_backup_storage_type" {
  description = "Map of vm_backup_storage_type values across all database_vm_clusters, keyed the same as var.database_vm_clusters except keys with no vm_backup_storage_type are omitted"
  value       = { for k, v in oci_database_vm_cluster.database_vm_clusters : k => v.vm_backup_storage_type if v.vm_backup_storage_type != null && length(v.vm_backup_storage_type) > 0 }
}
output "database_vm_clusters_vm_cluster_network_id" {
  description = "Map of vm_cluster_network_id values across all database_vm_clusters, keyed the same as var.database_vm_clusters except keys with no vm_cluster_network_id are omitted"
  value       = { for k, v in oci_database_vm_cluster.database_vm_clusters : k => v.vm_cluster_network_id if v.vm_cluster_network_id != null && length(v.vm_cluster_network_id) > 0 }
}
output "database_vm_clusters_vm_cluster_type" {
  description = "Map of vm_cluster_type values across all database_vm_clusters, keyed the same as var.database_vm_clusters except keys with no vm_cluster_type are omitted"
  value       = { for k, v in oci_database_vm_cluster.database_vm_clusters : k => v.vm_cluster_type if v.vm_cluster_type != null && length(v.vm_cluster_type) > 0 }
}
output "database_vm_clusters_vm_file_system_storage_type" {
  description = "Map of vm_file_system_storage_type values across all database_vm_clusters, keyed the same as var.database_vm_clusters except keys with no vm_file_system_storage_type are omitted"
  value       = { for k, v in oci_database_vm_cluster.database_vm_clusters : k => v.vm_file_system_storage_type if v.vm_file_system_storage_type != null && length(v.vm_file_system_storage_type) > 0 }
}

