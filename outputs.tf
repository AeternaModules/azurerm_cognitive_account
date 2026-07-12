output "cognitive_accounts_id" {
  description = "Map of id values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = { for k, v in azurerm_cognitive_account.cognitive_accounts : k => v.id }
}
output "cognitive_accounts_custom_question_answering_search_service_id" {
  description = "Map of custom_question_answering_search_service_id values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = { for k, v in azurerm_cognitive_account.cognitive_accounts : k => v.custom_question_answering_search_service_id }
}
output "cognitive_accounts_custom_question_answering_search_service_key" {
  description = "Map of custom_question_answering_search_service_key values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = { for k, v in azurerm_cognitive_account.cognitive_accounts : k => v.custom_question_answering_search_service_key }
  sensitive   = true
}
output "cognitive_accounts_custom_subdomain_name" {
  description = "Map of custom_subdomain_name values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = { for k, v in azurerm_cognitive_account.cognitive_accounts : k => v.custom_subdomain_name }
}
output "cognitive_accounts_customer_managed_key" {
  description = "Map of customer_managed_key values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = { for k, v in azurerm_cognitive_account.cognitive_accounts : k => v.customer_managed_key }
}
output "cognitive_accounts_dynamic_throttling_enabled" {
  description = "Map of dynamic_throttling_enabled values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = { for k, v in azurerm_cognitive_account.cognitive_accounts : k => v.dynamic_throttling_enabled }
}
output "cognitive_accounts_endpoint" {
  description = "Map of endpoint values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = { for k, v in azurerm_cognitive_account.cognitive_accounts : k => v.endpoint }
}
output "cognitive_accounts_fqdns" {
  description = "Map of fqdns values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = { for k, v in azurerm_cognitive_account.cognitive_accounts : k => v.fqdns }
}
output "cognitive_accounts_identity" {
  description = "Map of identity values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = { for k, v in azurerm_cognitive_account.cognitive_accounts : k => v.identity }
}
output "cognitive_accounts_kind" {
  description = "Map of kind values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = { for k, v in azurerm_cognitive_account.cognitive_accounts : k => v.kind }
}
output "cognitive_accounts_local_auth_enabled" {
  description = "Map of local_auth_enabled values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = { for k, v in azurerm_cognitive_account.cognitive_accounts : k => v.local_auth_enabled }
}
output "cognitive_accounts_location" {
  description = "Map of location values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = { for k, v in azurerm_cognitive_account.cognitive_accounts : k => v.location }
}
output "cognitive_accounts_metrics_advisor_aad_client_id" {
  description = "Map of metrics_advisor_aad_client_id values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = { for k, v in azurerm_cognitive_account.cognitive_accounts : k => v.metrics_advisor_aad_client_id }
}
output "cognitive_accounts_metrics_advisor_aad_tenant_id" {
  description = "Map of metrics_advisor_aad_tenant_id values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = { for k, v in azurerm_cognitive_account.cognitive_accounts : k => v.metrics_advisor_aad_tenant_id }
}
output "cognitive_accounts_metrics_advisor_super_user_name" {
  description = "Map of metrics_advisor_super_user_name values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = { for k, v in azurerm_cognitive_account.cognitive_accounts : k => v.metrics_advisor_super_user_name }
}
output "cognitive_accounts_metrics_advisor_website_name" {
  description = "Map of metrics_advisor_website_name values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = { for k, v in azurerm_cognitive_account.cognitive_accounts : k => v.metrics_advisor_website_name }
}
output "cognitive_accounts_name" {
  description = "Map of name values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = { for k, v in azurerm_cognitive_account.cognitive_accounts : k => v.name }
}
output "cognitive_accounts_network_acls" {
  description = "Map of network_acls values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = { for k, v in azurerm_cognitive_account.cognitive_accounts : k => v.network_acls }
}
output "cognitive_accounts_network_injection" {
  description = "Map of network_injection values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = { for k, v in azurerm_cognitive_account.cognitive_accounts : k => v.network_injection }
}
output "cognitive_accounts_outbound_network_access_restricted" {
  description = "Map of outbound_network_access_restricted values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = { for k, v in azurerm_cognitive_account.cognitive_accounts : k => v.outbound_network_access_restricted }
}
output "cognitive_accounts_primary_access_key" {
  description = "Map of primary_access_key values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = { for k, v in azurerm_cognitive_account.cognitive_accounts : k => v.primary_access_key }
  sensitive   = true
}
output "cognitive_accounts_project_management_enabled" {
  description = "Map of project_management_enabled values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = { for k, v in azurerm_cognitive_account.cognitive_accounts : k => v.project_management_enabled }
}
output "cognitive_accounts_public_network_access_enabled" {
  description = "Map of public_network_access_enabled values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = { for k, v in azurerm_cognitive_account.cognitive_accounts : k => v.public_network_access_enabled }
}
output "cognitive_accounts_qna_runtime_endpoint" {
  description = "Map of qna_runtime_endpoint values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = { for k, v in azurerm_cognitive_account.cognitive_accounts : k => v.qna_runtime_endpoint }
}
output "cognitive_accounts_resource_group_name" {
  description = "Map of resource_group_name values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = { for k, v in azurerm_cognitive_account.cognitive_accounts : k => v.resource_group_name }
}
output "cognitive_accounts_secondary_access_key" {
  description = "Map of secondary_access_key values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = { for k, v in azurerm_cognitive_account.cognitive_accounts : k => v.secondary_access_key }
  sensitive   = true
}
output "cognitive_accounts_sku_name" {
  description = "Map of sku_name values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = { for k, v in azurerm_cognitive_account.cognitive_accounts : k => v.sku_name }
}
output "cognitive_accounts_storage" {
  description = "Map of storage values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = { for k, v in azurerm_cognitive_account.cognitive_accounts : k => v.storage }
}
output "cognitive_accounts_tags" {
  description = "Map of tags values across all cognitive_accounts, keyed the same as var.cognitive_accounts"
  value       = { for k, v in azurerm_cognitive_account.cognitive_accounts : k => v.tags }
}

