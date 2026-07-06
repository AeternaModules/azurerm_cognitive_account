output "cognitive_accounts" {
  description = "All cognitive_account resources"
  value       = azurerm_cognitive_account.cognitive_accounts
  sensitive   = true
}
output "cognitive_accounts_custom_question_answering_search_service_id" {
  description = "List of custom_question_answering_search_service_id values across all cognitive_accounts"
  value       = [for k, v in azurerm_cognitive_account.cognitive_accounts : v.custom_question_answering_search_service_id]
}
output "cognitive_accounts_custom_question_answering_search_service_key" {
  description = "List of custom_question_answering_search_service_key values across all cognitive_accounts"
  value       = [for k, v in azurerm_cognitive_account.cognitive_accounts : v.custom_question_answering_search_service_key]
  sensitive   = true
}
output "cognitive_accounts_custom_subdomain_name" {
  description = "List of custom_subdomain_name values across all cognitive_accounts"
  value       = [for k, v in azurerm_cognitive_account.cognitive_accounts : v.custom_subdomain_name]
}
output "cognitive_accounts_customer_managed_key" {
  description = "List of customer_managed_key values across all cognitive_accounts"
  value       = [for k, v in azurerm_cognitive_account.cognitive_accounts : v.customer_managed_key]
}
output "cognitive_accounts_dynamic_throttling_enabled" {
  description = "List of dynamic_throttling_enabled values across all cognitive_accounts"
  value       = [for k, v in azurerm_cognitive_account.cognitive_accounts : v.dynamic_throttling_enabled]
}
output "cognitive_accounts_endpoint" {
  description = "List of endpoint values across all cognitive_accounts"
  value       = [for k, v in azurerm_cognitive_account.cognitive_accounts : v.endpoint]
}
output "cognitive_accounts_fqdns" {
  description = "List of fqdns values across all cognitive_accounts"
  value       = [for k, v in azurerm_cognitive_account.cognitive_accounts : v.fqdns]
}
output "cognitive_accounts_identity" {
  description = "List of identity values across all cognitive_accounts"
  value       = [for k, v in azurerm_cognitive_account.cognitive_accounts : v.identity]
}
output "cognitive_accounts_kind" {
  description = "List of kind values across all cognitive_accounts"
  value       = [for k, v in azurerm_cognitive_account.cognitive_accounts : v.kind]
}
output "cognitive_accounts_local_auth_enabled" {
  description = "List of local_auth_enabled values across all cognitive_accounts"
  value       = [for k, v in azurerm_cognitive_account.cognitive_accounts : v.local_auth_enabled]
}
output "cognitive_accounts_location" {
  description = "List of location values across all cognitive_accounts"
  value       = [for k, v in azurerm_cognitive_account.cognitive_accounts : v.location]
}
output "cognitive_accounts_metrics_advisor_aad_client_id" {
  description = "List of metrics_advisor_aad_client_id values across all cognitive_accounts"
  value       = [for k, v in azurerm_cognitive_account.cognitive_accounts : v.metrics_advisor_aad_client_id]
}
output "cognitive_accounts_metrics_advisor_aad_tenant_id" {
  description = "List of metrics_advisor_aad_tenant_id values across all cognitive_accounts"
  value       = [for k, v in azurerm_cognitive_account.cognitive_accounts : v.metrics_advisor_aad_tenant_id]
}
output "cognitive_accounts_metrics_advisor_super_user_name" {
  description = "List of metrics_advisor_super_user_name values across all cognitive_accounts"
  value       = [for k, v in azurerm_cognitive_account.cognitive_accounts : v.metrics_advisor_super_user_name]
}
output "cognitive_accounts_metrics_advisor_website_name" {
  description = "List of metrics_advisor_website_name values across all cognitive_accounts"
  value       = [for k, v in azurerm_cognitive_account.cognitive_accounts : v.metrics_advisor_website_name]
}
output "cognitive_accounts_name" {
  description = "List of name values across all cognitive_accounts"
  value       = [for k, v in azurerm_cognitive_account.cognitive_accounts : v.name]
}
output "cognitive_accounts_network_acls" {
  description = "List of network_acls values across all cognitive_accounts"
  value       = [for k, v in azurerm_cognitive_account.cognitive_accounts : v.network_acls]
}
output "cognitive_accounts_network_injection" {
  description = "List of network_injection values across all cognitive_accounts"
  value       = [for k, v in azurerm_cognitive_account.cognitive_accounts : v.network_injection]
}
output "cognitive_accounts_outbound_network_access_restricted" {
  description = "List of outbound_network_access_restricted values across all cognitive_accounts"
  value       = [for k, v in azurerm_cognitive_account.cognitive_accounts : v.outbound_network_access_restricted]
}
output "cognitive_accounts_primary_access_key" {
  description = "List of primary_access_key values across all cognitive_accounts"
  value       = [for k, v in azurerm_cognitive_account.cognitive_accounts : v.primary_access_key]
  sensitive   = true
}
output "cognitive_accounts_project_management_enabled" {
  description = "List of project_management_enabled values across all cognitive_accounts"
  value       = [for k, v in azurerm_cognitive_account.cognitive_accounts : v.project_management_enabled]
}
output "cognitive_accounts_public_network_access_enabled" {
  description = "List of public_network_access_enabled values across all cognitive_accounts"
  value       = [for k, v in azurerm_cognitive_account.cognitive_accounts : v.public_network_access_enabled]
}
output "cognitive_accounts_qna_runtime_endpoint" {
  description = "List of qna_runtime_endpoint values across all cognitive_accounts"
  value       = [for k, v in azurerm_cognitive_account.cognitive_accounts : v.qna_runtime_endpoint]
}
output "cognitive_accounts_resource_group_name" {
  description = "List of resource_group_name values across all cognitive_accounts"
  value       = [for k, v in azurerm_cognitive_account.cognitive_accounts : v.resource_group_name]
}
output "cognitive_accounts_secondary_access_key" {
  description = "List of secondary_access_key values across all cognitive_accounts"
  value       = [for k, v in azurerm_cognitive_account.cognitive_accounts : v.secondary_access_key]
  sensitive   = true
}
output "cognitive_accounts_sku_name" {
  description = "List of sku_name values across all cognitive_accounts"
  value       = [for k, v in azurerm_cognitive_account.cognitive_accounts : v.sku_name]
}
output "cognitive_accounts_storage" {
  description = "List of storage values across all cognitive_accounts"
  value       = [for k, v in azurerm_cognitive_account.cognitive_accounts : v.storage]
}
output "cognitive_accounts_tags" {
  description = "List of tags values across all cognitive_accounts"
  value       = [for k, v in azurerm_cognitive_account.cognitive_accounts : v.tags]
}

