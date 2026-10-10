variable "elasticache_clusters" {
  description = <<EOT
Map of elasticache_clusters, attributes below
Required:
    - cluster_id
Optional:
    - apply_immediately
    - auto_minor_version_upgrade
    - availability_zone
    - az_mode
    - engine
    - engine_version
    - final_snapshot_identifier
    - ip_discovery
    - maintenance_window
    - network_type
    - node_type
    - notification_topic_arn
    - num_cache_nodes
    - outpost_mode
    - parameter_group_name
    - port
    - preferred_availability_zones
    - preferred_outpost_arn
    - region
    - replication_group_id
    - security_group_ids
    - snapshot_arns
    - snapshot_name
    - snapshot_retention_limit
    - snapshot_window
    - subnet_group_name
    - tags
    - tags_all
    - transit_encryption_enabled
    - log_delivery_configuration (block):
        - destination (required)
        - destination_type (required)
        - log_format (required)
        - log_type (required)
EOT

  type = map(object({
    cluster_id                   = string
    tags                         = optional(map(string))
    subnet_group_name            = optional(string)
    snapshot_window              = optional(string)
    snapshot_retention_limit     = optional(number)
    snapshot_name                = optional(string)
    snapshot_arns                = optional(list(string))
    security_group_ids           = optional(set(string))
    replication_group_id         = optional(string)
    region                       = optional(string)
    preferred_outpost_arn        = optional(string)
    preferred_availability_zones = optional(list(string))
    port                         = optional(number)
    parameter_group_name         = optional(string)
    outpost_mode                 = optional(string)
    num_cache_nodes              = optional(number)
    notification_topic_arn       = optional(string)
    node_type                    = optional(string)
    network_type                 = optional(string)
    maintenance_window           = optional(string)
    ip_discovery                 = optional(string)
    final_snapshot_identifier    = optional(string)
    engine_version               = optional(string)
    engine                       = optional(string)
    az_mode                      = optional(string)
    availability_zone            = optional(string)
    auto_minor_version_upgrade   = optional(string)
    apply_immediately            = optional(bool)
    tags_all                     = optional(map(string))
    transit_encryption_enabled   = optional(bool)
    log_delivery_configuration = optional(list(object({
      destination      = string
      destination_type = string
      log_format       = string
      log_type         = string
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.elasticache_clusters : (
        v.log_delivery_configuration == null || (length(v.log_delivery_configuration) <= 2)
      )
    ])
    error_message = "Each log_delivery_configuration list must contain at most 2 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.elasticache_clusters : (
        v.snapshot_retention_limit == null || (v.snapshot_retention_limit <= 35)
      )
    ])
    error_message = "must be at most 35"
  }
  # Note: 15 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

