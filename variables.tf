variable "app_engine_firewall_rules" {
  description = <<EOT
Map of app_engine_firewall_rules, attributes below
Required:
    - action
    - source_range
Optional:
    - deletion_policy
    - description
    - priority
    - project
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    action          = string
    source_range    = string
    deletion_policy = optional(string)
    description     = optional(string)
    priority        = optional(number)
    project         = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

