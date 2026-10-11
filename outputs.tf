output "app_engine_firewall_rules_id" {
  description = "Map of id values across all app_engine_firewall_rules, keyed the same as var.app_engine_firewall_rules except keys with no id are omitted"
  value       = { for k, v in google_app_engine_firewall_rule.app_engine_firewall_rules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "app_engine_firewall_rules_action" {
  description = "Map of action values across all app_engine_firewall_rules, keyed the same as var.app_engine_firewall_rules except keys with no action are omitted"
  value       = { for k, v in google_app_engine_firewall_rule.app_engine_firewall_rules : k => v.action if v.action != null && length(v.action) > 0 }
}
output "app_engine_firewall_rules_deletion_policy" {
  description = "Map of deletion_policy values across all app_engine_firewall_rules, keyed the same as var.app_engine_firewall_rules except keys with no deletion_policy are omitted"
  value       = { for k, v in google_app_engine_firewall_rule.app_engine_firewall_rules : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "app_engine_firewall_rules_description" {
  description = "Map of description values across all app_engine_firewall_rules, keyed the same as var.app_engine_firewall_rules except keys with no description are omitted"
  value       = { for k, v in google_app_engine_firewall_rule.app_engine_firewall_rules : k => v.description if v.description != null && length(v.description) > 0 }
}
output "app_engine_firewall_rules_priority" {
  description = "Map of priority values across all app_engine_firewall_rules, keyed the same as var.app_engine_firewall_rules except keys with no priority are omitted"
  value       = { for k, v in google_app_engine_firewall_rule.app_engine_firewall_rules : k => v.priority if v.priority != null }
}
output "app_engine_firewall_rules_project" {
  description = "Map of project values across all app_engine_firewall_rules, keyed the same as var.app_engine_firewall_rules except keys with no project are omitted"
  value       = { for k, v in google_app_engine_firewall_rule.app_engine_firewall_rules : k => v.project if v.project != null && length(v.project) > 0 }
}
output "app_engine_firewall_rules_source_range" {
  description = "Map of source_range values across all app_engine_firewall_rules, keyed the same as var.app_engine_firewall_rules except keys with no source_range are omitted"
  value       = { for k, v in google_app_engine_firewall_rule.app_engine_firewall_rules : k => v.source_range if v.source_range != null && length(v.source_range) > 0 }
}

