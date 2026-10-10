output "elasticache_clusters_id" {
  description = "Map of id values across all elasticache_clusters, keyed the same as var.elasticache_clusters"
  value       = { for k, v in aws_elasticache_cluster.elasticache_clusters : k => v.id if v.id != null && length(v.id) > 0 }
}
output "elasticache_clusters_apply_immediately" {
  description = "Map of apply_immediately values across all elasticache_clusters, keyed the same as var.elasticache_clusters"
  value       = { for k, v in aws_elasticache_cluster.elasticache_clusters : k => v.apply_immediately if v.apply_immediately != null }
}
output "elasticache_clusters_arn" {
  description = "Map of arn values across all elasticache_clusters, keyed the same as var.elasticache_clusters"
  value       = { for k, v in aws_elasticache_cluster.elasticache_clusters : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "elasticache_clusters_auto_minor_version_upgrade" {
  description = "Map of auto_minor_version_upgrade values across all elasticache_clusters, keyed the same as var.elasticache_clusters"
  value       = { for k, v in aws_elasticache_cluster.elasticache_clusters : k => v.auto_minor_version_upgrade if v.auto_minor_version_upgrade != null && length(v.auto_minor_version_upgrade) > 0 }
}
output "elasticache_clusters_availability_zone" {
  description = "Map of availability_zone values across all elasticache_clusters, keyed the same as var.elasticache_clusters"
  value       = { for k, v in aws_elasticache_cluster.elasticache_clusters : k => v.availability_zone if v.availability_zone != null && length(v.availability_zone) > 0 }
}
output "elasticache_clusters_az_mode" {
  description = "Map of az_mode values across all elasticache_clusters, keyed the same as var.elasticache_clusters"
  value       = { for k, v in aws_elasticache_cluster.elasticache_clusters : k => v.az_mode if v.az_mode != null && length(v.az_mode) > 0 }
}
output "elasticache_clusters_cache_nodes" {
  description = "Map of cache_nodes values across all elasticache_clusters, keyed the same as var.elasticache_clusters"
  value       = { for k, v in aws_elasticache_cluster.elasticache_clusters : k => v.cache_nodes if v.cache_nodes != null && length(v.cache_nodes) > 0 }
}
output "elasticache_clusters_cluster_address" {
  description = "Map of cluster_address values across all elasticache_clusters, keyed the same as var.elasticache_clusters"
  value       = { for k, v in aws_elasticache_cluster.elasticache_clusters : k => v.cluster_address if v.cluster_address != null && length(v.cluster_address) > 0 }
}
output "elasticache_clusters_cluster_id" {
  description = "Map of cluster_id values across all elasticache_clusters, keyed the same as var.elasticache_clusters"
  value       = { for k, v in aws_elasticache_cluster.elasticache_clusters : k => v.cluster_id if v.cluster_id != null && length(v.cluster_id) > 0 }
}
output "elasticache_clusters_configuration_endpoint" {
  description = "Map of configuration_endpoint values across all elasticache_clusters, keyed the same as var.elasticache_clusters"
  value       = { for k, v in aws_elasticache_cluster.elasticache_clusters : k => v.configuration_endpoint if v.configuration_endpoint != null && length(v.configuration_endpoint) > 0 }
}
output "elasticache_clusters_engine" {
  description = "Map of engine values across all elasticache_clusters, keyed the same as var.elasticache_clusters"
  value       = { for k, v in aws_elasticache_cluster.elasticache_clusters : k => v.engine if v.engine != null && length(v.engine) > 0 }
}
output "elasticache_clusters_engine_version" {
  description = "Map of engine_version values across all elasticache_clusters, keyed the same as var.elasticache_clusters"
  value       = { for k, v in aws_elasticache_cluster.elasticache_clusters : k => v.engine_version if v.engine_version != null && length(v.engine_version) > 0 }
}
output "elasticache_clusters_engine_version_actual" {
  description = "Map of engine_version_actual values across all elasticache_clusters, keyed the same as var.elasticache_clusters"
  value       = { for k, v in aws_elasticache_cluster.elasticache_clusters : k => v.engine_version_actual if v.engine_version_actual != null && length(v.engine_version_actual) > 0 }
}
output "elasticache_clusters_final_snapshot_identifier" {
  description = "Map of final_snapshot_identifier values across all elasticache_clusters, keyed the same as var.elasticache_clusters"
  value       = { for k, v in aws_elasticache_cluster.elasticache_clusters : k => v.final_snapshot_identifier if v.final_snapshot_identifier != null && length(v.final_snapshot_identifier) > 0 }
}
output "elasticache_clusters_ip_discovery" {
  description = "Map of ip_discovery values across all elasticache_clusters, keyed the same as var.elasticache_clusters"
  value       = { for k, v in aws_elasticache_cluster.elasticache_clusters : k => v.ip_discovery if v.ip_discovery != null && length(v.ip_discovery) > 0 }
}
output "elasticache_clusters_log_delivery_configuration" {
  description = "Map of log_delivery_configuration values across all elasticache_clusters, keyed the same as var.elasticache_clusters"
  value       = { for k, v in aws_elasticache_cluster.elasticache_clusters : k => v.log_delivery_configuration if v.log_delivery_configuration != null && length(v.log_delivery_configuration) > 0 }
}
output "elasticache_clusters_maintenance_window" {
  description = "Map of maintenance_window values across all elasticache_clusters, keyed the same as var.elasticache_clusters"
  value       = { for k, v in aws_elasticache_cluster.elasticache_clusters : k => v.maintenance_window if v.maintenance_window != null && length(v.maintenance_window) > 0 }
}
output "elasticache_clusters_network_type" {
  description = "Map of network_type values across all elasticache_clusters, keyed the same as var.elasticache_clusters"
  value       = { for k, v in aws_elasticache_cluster.elasticache_clusters : k => v.network_type if v.network_type != null && length(v.network_type) > 0 }
}
output "elasticache_clusters_node_type" {
  description = "Map of node_type values across all elasticache_clusters, keyed the same as var.elasticache_clusters"
  value       = { for k, v in aws_elasticache_cluster.elasticache_clusters : k => v.node_type if v.node_type != null && length(v.node_type) > 0 }
}
output "elasticache_clusters_notification_topic_arn" {
  description = "Map of notification_topic_arn values across all elasticache_clusters, keyed the same as var.elasticache_clusters"
  value       = { for k, v in aws_elasticache_cluster.elasticache_clusters : k => v.notification_topic_arn if v.notification_topic_arn != null && length(v.notification_topic_arn) > 0 }
}
output "elasticache_clusters_num_cache_nodes" {
  description = "Map of num_cache_nodes values across all elasticache_clusters, keyed the same as var.elasticache_clusters"
  value       = { for k, v in aws_elasticache_cluster.elasticache_clusters : k => v.num_cache_nodes if v.num_cache_nodes != null }
}
output "elasticache_clusters_outpost_mode" {
  description = "Map of outpost_mode values across all elasticache_clusters, keyed the same as var.elasticache_clusters"
  value       = { for k, v in aws_elasticache_cluster.elasticache_clusters : k => v.outpost_mode if v.outpost_mode != null && length(v.outpost_mode) > 0 }
}
output "elasticache_clusters_parameter_group_name" {
  description = "Map of parameter_group_name values across all elasticache_clusters, keyed the same as var.elasticache_clusters"
  value       = { for k, v in aws_elasticache_cluster.elasticache_clusters : k => v.parameter_group_name if v.parameter_group_name != null && length(v.parameter_group_name) > 0 }
}
output "elasticache_clusters_port" {
  description = "Map of port values across all elasticache_clusters, keyed the same as var.elasticache_clusters"
  value       = { for k, v in aws_elasticache_cluster.elasticache_clusters : k => v.port if v.port != null }
}
output "elasticache_clusters_preferred_availability_zones" {
  description = "Map of preferred_availability_zones values across all elasticache_clusters, keyed the same as var.elasticache_clusters"
  value       = { for k, v in aws_elasticache_cluster.elasticache_clusters : k => v.preferred_availability_zones if v.preferred_availability_zones != null && length(v.preferred_availability_zones) > 0 }
}
output "elasticache_clusters_preferred_outpost_arn" {
  description = "Map of preferred_outpost_arn values across all elasticache_clusters, keyed the same as var.elasticache_clusters"
  value       = { for k, v in aws_elasticache_cluster.elasticache_clusters : k => v.preferred_outpost_arn if v.preferred_outpost_arn != null && length(v.preferred_outpost_arn) > 0 }
}
output "elasticache_clusters_region" {
  description = "Map of region values across all elasticache_clusters, keyed the same as var.elasticache_clusters"
  value       = { for k, v in aws_elasticache_cluster.elasticache_clusters : k => v.region if v.region != null && length(v.region) > 0 }
}
output "elasticache_clusters_replication_group_id" {
  description = "Map of replication_group_id values across all elasticache_clusters, keyed the same as var.elasticache_clusters"
  value       = { for k, v in aws_elasticache_cluster.elasticache_clusters : k => v.replication_group_id if v.replication_group_id != null && length(v.replication_group_id) > 0 }
}
output "elasticache_clusters_security_group_ids" {
  description = "Map of security_group_ids values across all elasticache_clusters, keyed the same as var.elasticache_clusters"
  value       = { for k, v in aws_elasticache_cluster.elasticache_clusters : k => v.security_group_ids if v.security_group_ids != null && length(v.security_group_ids) > 0 }
}
output "elasticache_clusters_snapshot_arns" {
  description = "Map of snapshot_arns values across all elasticache_clusters, keyed the same as var.elasticache_clusters"
  value       = { for k, v in aws_elasticache_cluster.elasticache_clusters : k => v.snapshot_arns if v.snapshot_arns != null && length(v.snapshot_arns) > 0 }
}
output "elasticache_clusters_snapshot_name" {
  description = "Map of snapshot_name values across all elasticache_clusters, keyed the same as var.elasticache_clusters"
  value       = { for k, v in aws_elasticache_cluster.elasticache_clusters : k => v.snapshot_name if v.snapshot_name != null && length(v.snapshot_name) > 0 }
}
output "elasticache_clusters_snapshot_retention_limit" {
  description = "Map of snapshot_retention_limit values across all elasticache_clusters, keyed the same as var.elasticache_clusters"
  value       = { for k, v in aws_elasticache_cluster.elasticache_clusters : k => v.snapshot_retention_limit if v.snapshot_retention_limit != null }
}
output "elasticache_clusters_snapshot_window" {
  description = "Map of snapshot_window values across all elasticache_clusters, keyed the same as var.elasticache_clusters"
  value       = { for k, v in aws_elasticache_cluster.elasticache_clusters : k => v.snapshot_window if v.snapshot_window != null && length(v.snapshot_window) > 0 }
}
output "elasticache_clusters_subnet_group_name" {
  description = "Map of subnet_group_name values across all elasticache_clusters, keyed the same as var.elasticache_clusters"
  value       = { for k, v in aws_elasticache_cluster.elasticache_clusters : k => v.subnet_group_name if v.subnet_group_name != null && length(v.subnet_group_name) > 0 }
}
output "elasticache_clusters_tags" {
  description = "Map of tags values across all elasticache_clusters, keyed the same as var.elasticache_clusters"
  value       = { for k, v in aws_elasticache_cluster.elasticache_clusters : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "elasticache_clusters_tags_all" {
  description = "Map of tags_all values across all elasticache_clusters, keyed the same as var.elasticache_clusters"
  value       = { for k, v in aws_elasticache_cluster.elasticache_clusters : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "elasticache_clusters_transit_encryption_enabled" {
  description = "Map of transit_encryption_enabled values across all elasticache_clusters, keyed the same as var.elasticache_clusters"
  value       = { for k, v in aws_elasticache_cluster.elasticache_clusters : k => v.transit_encryption_enabled if v.transit_encryption_enabled != null }
}

