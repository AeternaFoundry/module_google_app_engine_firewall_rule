resource "google_app_engine_firewall_rule" "app_engine_firewall_rules" {
  for_each = var.app_engine_firewall_rules

  action          = each.value.action
  source_range    = each.value.source_range
  deletion_policy = each.value.deletion_policy
  description     = each.value.description
  priority        = each.value.priority
  project         = each.value.project

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

