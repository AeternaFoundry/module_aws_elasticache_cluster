resource "aws_elasticache_cluster" "elasticache_clusters" {
  for_each = var.elasticache_clusters

  cluster_id                   = each.value.cluster_id
  tags                         = each.value.tags
  subnet_group_name            = each.value.subnet_group_name
  snapshot_window              = each.value.snapshot_window
  snapshot_retention_limit     = each.value.snapshot_retention_limit
  snapshot_name                = each.value.snapshot_name
  snapshot_arns                = each.value.snapshot_arns
  security_group_ids           = each.value.security_group_ids
  replication_group_id         = each.value.replication_group_id
  region                       = each.value.region
  preferred_outpost_arn        = each.value.preferred_outpost_arn
  preferred_availability_zones = each.value.preferred_availability_zones
  port                         = each.value.port
  parameter_group_name         = each.value.parameter_group_name
  outpost_mode                 = each.value.outpost_mode
  num_cache_nodes              = each.value.num_cache_nodes
  notification_topic_arn       = each.value.notification_topic_arn
  node_type                    = each.value.node_type
  network_type                 = each.value.network_type
  maintenance_window           = each.value.maintenance_window
  ip_discovery                 = each.value.ip_discovery
  final_snapshot_identifier    = each.value.final_snapshot_identifier
  engine_version               = each.value.engine_version
  engine                       = each.value.engine
  az_mode                      = each.value.az_mode
  availability_zone            = each.value.availability_zone
  auto_minor_version_upgrade   = each.value.auto_minor_version_upgrade
  apply_immediately            = each.value.apply_immediately
  tags_all                     = each.value.tags_all
  transit_encryption_enabled   = each.value.transit_encryption_enabled

  dynamic "log_delivery_configuration" {
    for_each = each.value.log_delivery_configuration != null ? each.value.log_delivery_configuration : []
    content {
      destination      = log_delivery_configuration.value.destination
      destination_type = log_delivery_configuration.value.destination_type
      log_format       = log_delivery_configuration.value.log_format
      log_type         = log_delivery_configuration.value.log_type
    }
  }
}

