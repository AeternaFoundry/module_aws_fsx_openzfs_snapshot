output "fsx_openzfs_snapshots_id" {
  description = "Map of id values across all fsx_openzfs_snapshots, keyed the same as var.fsx_openzfs_snapshots"
  value       = { for k, v in aws_fsx_openzfs_snapshot.fsx_openzfs_snapshots : k => v.id if v.id != null && length(v.id) > 0 }
}
output "fsx_openzfs_snapshots_arn" {
  description = "Map of arn values across all fsx_openzfs_snapshots, keyed the same as var.fsx_openzfs_snapshots"
  value       = { for k, v in aws_fsx_openzfs_snapshot.fsx_openzfs_snapshots : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "fsx_openzfs_snapshots_creation_time" {
  description = "Map of creation_time values across all fsx_openzfs_snapshots, keyed the same as var.fsx_openzfs_snapshots"
  value       = { for k, v in aws_fsx_openzfs_snapshot.fsx_openzfs_snapshots : k => v.creation_time if v.creation_time != null && length(v.creation_time) > 0 }
}
output "fsx_openzfs_snapshots_name" {
  description = "Map of name values across all fsx_openzfs_snapshots, keyed the same as var.fsx_openzfs_snapshots"
  value       = { for k, v in aws_fsx_openzfs_snapshot.fsx_openzfs_snapshots : k => v.name if v.name != null && length(v.name) > 0 }
}
output "fsx_openzfs_snapshots_region" {
  description = "Map of region values across all fsx_openzfs_snapshots, keyed the same as var.fsx_openzfs_snapshots"
  value       = { for k, v in aws_fsx_openzfs_snapshot.fsx_openzfs_snapshots : k => v.region if v.region != null && length(v.region) > 0 }
}
output "fsx_openzfs_snapshots_tags" {
  description = "Map of tags values across all fsx_openzfs_snapshots, keyed the same as var.fsx_openzfs_snapshots"
  value       = { for k, v in aws_fsx_openzfs_snapshot.fsx_openzfs_snapshots : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "fsx_openzfs_snapshots_tags_all" {
  description = "Map of tags_all values across all fsx_openzfs_snapshots, keyed the same as var.fsx_openzfs_snapshots"
  value       = { for k, v in aws_fsx_openzfs_snapshot.fsx_openzfs_snapshots : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "fsx_openzfs_snapshots_volume_id" {
  description = "Map of volume_id values across all fsx_openzfs_snapshots, keyed the same as var.fsx_openzfs_snapshots"
  value       = { for k, v in aws_fsx_openzfs_snapshot.fsx_openzfs_snapshots : k => v.volume_id if v.volume_id != null && length(v.volume_id) > 0 }
}

