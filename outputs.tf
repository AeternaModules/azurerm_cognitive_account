output "cognitive_accounts_id" {
  description = "Map of id values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = { for k, v in azurerm_cognitive_account.cognitive_accounts : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cognitive_accounts_custom_question_answering_search_service_id" {
  description = "Map of custom_question_answering_search_service_id values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = { for k, v in azurerm_cognitive_account.cognitive_accounts : k => v.custom_question_answering_search_service_id if v.custom_question_answering_search_service_id != null && length(v.custom_question_answering_search_service_id) > 0 }
}
output "cognitive_accounts_custom_question_answering_search_service_key" {
  description = "Map of custom_question_answering_search_service_key values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = { for k, v in azurerm_cognitive_account.cognitive_accounts : k => v.custom_question_answering_search_service_key if v.custom_question_answering_search_service_key != null && length(v.custom_question_answering_search_service_key) > 0 }
  sensitive   = true
}
output "cognitive_accounts_custom_subdomain_name" {
  description = "Map of custom_subdomain_name values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = { for k, v in azurerm_cognitive_account.cognitive_accounts : k => v.custom_subdomain_name if v.custom_subdomain_name != null && length(v.custom_subdomain_name) > 0 }
}
output "cognitive_accounts_customer_managed_key" {
  description = "Map of customer_managed_key values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = { for k, v in azurerm_cognitive_account.cognitive_accounts : k => v.customer_managed_key if v.customer_managed_key != null && length(v.customer_managed_key) > 0 }
}
output "cognitive_accounts_dynamic_throttling_enabled" {
  description = "Map of dynamic_throttling_enabled values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = { for k, v in azurerm_cognitive_account.cognitive_accounts : k => v.dynamic_throttling_enabled if v.dynamic_throttling_enabled != null }
}
output "cognitive_accounts_endpoint" {
  description = "Map of endpoint values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = { for k, v in azurerm_cognitive_account.cognitive_accounts : k => v.endpoint if v.endpoint != null && length(v.endpoint) > 0 }
}
output "cognitive_accounts_fqdns" {
  description = "Map of fqdns values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = { for k, v in azurerm_cognitive_account.cognitive_accounts : k => v.fqdns if v.fqdns != null && length(v.fqdns) > 0 }
}
output "cognitive_accounts_identity" {
  description = "Map of identity values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = { for k, v in azurerm_cognitive_account.cognitive_accounts : k => v.identity if v.identity != null && length(v.identity) > 0 }
}
output "cognitive_accounts_kind" {
  description = "Map of kind values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = { for k, v in azurerm_cognitive_account.cognitive_accounts : k => v.kind if v.kind != null && length(v.kind) > 0 }
}
output "cognitive_accounts_local_auth_enabled" {
  description = "Map of local_auth_enabled values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = { for k, v in azurerm_cognitive_account.cognitive_accounts : k => v.local_auth_enabled if v.local_auth_enabled != null }
}
output "cognitive_accounts_location" {
  description = "Map of location values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = { for k, v in azurerm_cognitive_account.cognitive_accounts : k => v.location if v.location != null && length(v.location) > 0 }
}
output "cognitive_accounts_metrics_advisor_aad_client_id" {
  description = "Map of metrics_advisor_aad_client_id values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = { for k, v in azurerm_cognitive_account.cognitive_accounts : k => v.metrics_advisor_aad_client_id if v.metrics_advisor_aad_client_id != null && length(v.metrics_advisor_aad_client_id) > 0 }
}
output "cognitive_accounts_metrics_advisor_aad_tenant_id" {
  description = "Map of metrics_advisor_aad_tenant_id values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = { for k, v in azurerm_cognitive_account.cognitive_accounts : k => v.metrics_advisor_aad_tenant_id if v.metrics_advisor_aad_tenant_id != null && length(v.metrics_advisor_aad_tenant_id) > 0 }
}
output "cognitive_accounts_metrics_advisor_super_user_name" {
  description = "Map of metrics_advisor_super_user_name values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = { for k, v in azurerm_cognitive_account.cognitive_accounts : k => v.metrics_advisor_super_user_name if v.metrics_advisor_super_user_name != null && length(v.metrics_advisor_super_user_name) > 0 }
}
output "cognitive_accounts_metrics_advisor_website_name" {
  description = "Map of metrics_advisor_website_name values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = { for k, v in azurerm_cognitive_account.cognitive_accounts : k => v.metrics_advisor_website_name if v.metrics_advisor_website_name != null && length(v.metrics_advisor_website_name) > 0 }
}
output "cognitive_accounts_name" {
  description = "Map of name values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = { for k, v in azurerm_cognitive_account.cognitive_accounts : k => v.name if v.name != null && length(v.name) > 0 }
}
output "cognitive_accounts_network_acls" {
  description = "Map of network_acls values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = { for k, v in azurerm_cognitive_account.cognitive_accounts : k => v.network_acls if v.network_acls != null && length(v.network_acls) > 0 }
}
output "cognitive_accounts_network_injection" {
  description = "Map of network_injection values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = { for k, v in azurerm_cognitive_account.cognitive_accounts : k => v.network_injection if v.network_injection != null && length(v.network_injection) > 0 }
}
output "cognitive_accounts_outbound_network_access_restricted" {
  description = "Map of outbound_network_access_restricted values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = { for k, v in azurerm_cognitive_account.cognitive_accounts : k => v.outbound_network_access_restricted if v.outbound_network_access_restricted != null }
}
output "cognitive_accounts_primary_access_key" {
  description = "Map of primary_access_key values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = { for k, v in azurerm_cognitive_account.cognitive_accounts : k => v.primary_access_key if v.primary_access_key != null && length(v.primary_access_key) > 0 }
  sensitive   = true
}
output "cognitive_accounts_project_management_enabled" {
  description = "Map of project_management_enabled values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = { for k, v in azurerm_cognitive_account.cognitive_accounts : k => v.project_management_enabled if v.project_management_enabled != null }
}
output "cognitive_accounts_public_network_access_enabled" {
  description = "Map of public_network_access_enabled values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = { for k, v in azurerm_cognitive_account.cognitive_accounts : k => v.public_network_access_enabled if v.public_network_access_enabled != null }
}
output "cognitive_accounts_qna_runtime_endpoint" {
  description = "Map of qna_runtime_endpoint values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = { for k, v in azurerm_cognitive_account.cognitive_accounts : k => v.qna_runtime_endpoint if v.qna_runtime_endpoint != null && length(v.qna_runtime_endpoint) > 0 }
}
output "cognitive_accounts_resource_group_name" {
  description = "Map of resource_group_name values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = { for k, v in azurerm_cognitive_account.cognitive_accounts : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "cognitive_accounts_secondary_access_key" {
  description = "Map of secondary_access_key values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = { for k, v in azurerm_cognitive_account.cognitive_accounts : k => v.secondary_access_key if v.secondary_access_key != null && length(v.secondary_access_key) > 0 }
  sensitive   = true
}
output "cognitive_accounts_sku_name" {
  description = "Map of sku_name values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = { for k, v in azurerm_cognitive_account.cognitive_accounts : k => v.sku_name if v.sku_name != null && length(v.sku_name) > 0 }
}
output "cognitive_accounts_storage" {
  description = "Map of storage values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = { for k, v in azurerm_cognitive_account.cognitive_accounts : k => v.storage if v.storage != null && length(v.storage) > 0 }
}
output "cognitive_accounts_tags" {
  description = "Map of tags values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = { for k, v in azurerm_cognitive_account.cognitive_accounts : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

