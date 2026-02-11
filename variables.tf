variable "cognitive_accounts" {
  description = <<EOT
Map of cognitive_accounts, attributes below
Required:
    - kind
    - location
    - name
    - resource_group_name
    - sku_name
Optional:
    - custom_question_answering_search_service_id
    - custom_question_answering_search_service_key
    - custom_subdomain_name
    - dynamic_throttling_enabled
    - fqdns
    - local_auth_enabled
    - metrics_advisor_aad_client_id
    - metrics_advisor_aad_tenant_id
    - metrics_advisor_super_user_name
    - metrics_advisor_website_name
    - outbound_network_access_restricted
    - project_management_enabled
    - public_network_access_enabled
    - qna_runtime_endpoint
    - tags
    - customer_managed_key (block):
        - identity_client_id (optional)
        - key_vault_key_id (required)
    - identity (block):
        - identity_ids (optional)
        - type (required)
    - network_acls (block):
        - bypass (optional)
        - default_action (required)
        - ip_rules (optional)
        - virtual_network_rules (optional, block):
            - ignore_missing_vnet_service_endpoint (optional)
            - subnet_id (required)
    - network_injection (block):
        - scenario (required)
        - subnet_id (required)
    - storage (block):
        - identity_client_id (optional)
        - storage_account_id (required)
EOT

  type = map(object({
    kind                                         = string
    location                                     = string
    name                                         = string
    resource_group_name                          = string
    sku_name                                     = string
    public_network_access_enabled                = optional(bool) # Default: true
    project_management_enabled                   = optional(bool) # Default: false
    outbound_network_access_restricted           = optional(bool) # Default: false
    metrics_advisor_website_name                 = optional(string)
    metrics_advisor_super_user_name              = optional(string)
    metrics_advisor_aad_tenant_id                = optional(string)
    fqdns                                        = optional(list(string))
    local_auth_enabled                           = optional(bool) # Default: true
    qna_runtime_endpoint                         = optional(string)
    dynamic_throttling_enabled                   = optional(bool)
    custom_subdomain_name                        = optional(string)
    custom_question_answering_search_service_key = optional(string)
    custom_question_answering_search_service_id  = optional(string)
    metrics_advisor_aad_client_id                = optional(string)
    tags                                         = optional(map(string))
    customer_managed_key = optional(object({
      identity_client_id = optional(string)
      key_vault_key_id   = string
    }))
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
    network_acls = optional(object({
      bypass         = optional(string)
      default_action = string
      ip_rules       = optional(set(string))
      virtual_network_rules = optional(object({
        ignore_missing_vnet_service_endpoint = optional(bool) # Default: false
        subnet_id                            = string
      }))
    }))
    network_injection = optional(object({
      scenario  = string
      subnet_id = string
    }))
    storage = optional(object({
      identity_client_id = optional(string)
      storage_account_id = string
    }))
  }))
}

