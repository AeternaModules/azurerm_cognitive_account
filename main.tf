resource "azurerm_cognitive_account" "cognitive_accounts" {
  for_each = var.cognitive_accounts

  kind                                         = each.value.kind
  location                                     = each.value.location
  name                                         = each.value.name
  resource_group_name                          = each.value.resource_group_name
  sku_name                                     = each.value.sku_name
  public_network_access_enabled                = each.value.public_network_access_enabled
  project_management_enabled                   = each.value.project_management_enabled
  outbound_network_access_restricted           = each.value.outbound_network_access_restricted
  metrics_advisor_website_name                 = each.value.metrics_advisor_website_name
  metrics_advisor_super_user_name              = each.value.metrics_advisor_super_user_name
  metrics_advisor_aad_tenant_id                = each.value.metrics_advisor_aad_tenant_id
  fqdns                                        = each.value.fqdns
  local_auth_enabled                           = each.value.local_auth_enabled
  qna_runtime_endpoint                         = each.value.qna_runtime_endpoint
  dynamic_throttling_enabled                   = each.value.dynamic_throttling_enabled
  custom_subdomain_name                        = each.value.custom_subdomain_name
  custom_question_answering_search_service_key = each.value.custom_question_answering_search_service_key
  custom_question_answering_search_service_id  = each.value.custom_question_answering_search_service_id
  metrics_advisor_aad_client_id                = each.value.metrics_advisor_aad_client_id
  tags                                         = each.value.tags

  dynamic "customer_managed_key" {
    for_each = each.value.customer_managed_key != null ? [each.value.customer_managed_key] : []
    content {
      identity_client_id = customer_managed_key.value.identity_client_id
      key_vault_key_id   = customer_managed_key.value.key_vault_key_id
    }
  }

  dynamic "identity" {
    for_each = each.value.identity != null ? [each.value.identity] : []
    content {
      identity_ids = identity.value.identity_ids
      type         = identity.value.type
    }
  }

  dynamic "network_acls" {
    for_each = each.value.network_acls != null ? [each.value.network_acls] : []
    content {
      bypass         = network_acls.value.bypass
      default_action = network_acls.value.default_action
      ip_rules       = network_acls.value.ip_rules
      dynamic "virtual_network_rules" {
        for_each = network_acls.value.virtual_network_rules != null ? network_acls.value.virtual_network_rules : []
        content {
          ignore_missing_vnet_service_endpoint = virtual_network_rules.value.ignore_missing_vnet_service_endpoint
          subnet_id                            = virtual_network_rules.value.subnet_id
        }
      }
    }
  }

  dynamic "network_injection" {
    for_each = each.value.network_injection != null ? [each.value.network_injection] : []
    content {
      scenario  = network_injection.value.scenario
      subnet_id = network_injection.value.subnet_id
    }
  }

  dynamic "storage" {
    for_each = each.value.storage != null ? each.value.storage : []
    content {
      identity_client_id = storage.value.identity_client_id
      storage_account_id = storage.value.storage_account_id
    }
  }
}

