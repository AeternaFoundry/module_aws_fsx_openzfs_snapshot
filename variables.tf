variable "fsx_openzfs_snapshots" {
  description = <<EOT
Map of fsx_openzfs_snapshots, attributes below
Required:
    - name
    - volume_id
Optional:
    - region
    - tags
    - tags_all
EOT

  type = map(object({
    name      = string
    volume_id = string
    region    = optional(string)
    tags      = optional(map(string))
    tags_all  = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.fsx_openzfs_snapshots : (
        length(v.volume_id) >= 23 && length(v.volume_id) <= 23
      )
    ])
    error_message = "must be between 23 and 23 characters"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

