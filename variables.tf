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
    - custom_question_answering_search_service_key_key_vault_id (alternative to custom_question_answering_search_service_key - read from Key Vault instead)
    - custom_question_answering_search_service_key_key_vault_secret_name (alternative to custom_question_answering_search_service_key - read from Key Vault instead)
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
    kind                                                               = string
    location                                                           = string
    name                                                               = string
    resource_group_name                                                = string
    sku_name                                                           = string
    public_network_access_enabled                                      = optional(bool)
    project_management_enabled                                         = optional(bool)
    outbound_network_access_restricted                                 = optional(bool)
    metrics_advisor_website_name                                       = optional(string)
    metrics_advisor_super_user_name                                    = optional(string)
    metrics_advisor_aad_tenant_id                                      = optional(string)
    fqdns                                                              = optional(list(string))
    local_auth_enabled                                                 = optional(bool)
    qna_runtime_endpoint                                               = optional(string)
    dynamic_throttling_enabled                                         = optional(bool)
    custom_subdomain_name                                              = optional(string)
    custom_question_answering_search_service_key                       = optional(string)
    custom_question_answering_search_service_key_key_vault_id          = optional(string)
    custom_question_answering_search_service_key_key_vault_secret_name = optional(string)
    custom_question_answering_search_service_id                        = optional(string)
    metrics_advisor_aad_client_id                                      = optional(string)
    tags                                                               = optional(map(string))
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
      virtual_network_rules = optional(list(object({
        ignore_missing_vnet_service_endpoint = optional(bool)
        subnet_id                            = string
      })))
    }))
    network_injection = optional(object({
      scenario  = string
      subnet_id = string
    }))
    storage = optional(list(object({
      identity_client_id = optional(string)
      storage_account_id = string
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.cognitive_accounts : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.cognitive_accounts : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.cognitive_accounts : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.cognitive_accounts : (
        contains(["AIServices", "Academic", "AnomalyDetector", "Bing.Autosuggest", "Bing.Autosuggest.v7", "Bing.CustomSearch", "Bing.Search", "Bing.Search.v7", "Bing.Speech", "Bing.SpellCheck", "Bing.SpellCheck.v7", "CognitiveServices", "ComputerVision", "ContentModerator", "ConversationalLanguageUnderstanding", "ContentSafety", "CustomSpeech", "CustomVision.Prediction", "CustomVision.Training", "Emotion", "Face", "FormRecognizer", "ImmersiveReader", "LUIS", "LUIS.Authoring", "MetricsAdvisor", "OpenAI", "Personalizer", "QnAMaker", "Recommendations", "SpeakerRecognition", "Speech", "SpeechServices", "SpeechTranslation", "TextAnalytics", "TextTranslation", "WebLM"], v.kind)
      )
    ])
    error_message = "must be one of: AIServices, Academic, AnomalyDetector, Bing.Autosuggest, Bing.Autosuggest.v7, Bing.CustomSearch, Bing.Search, Bing.Search.v7, Bing.Speech, Bing.SpellCheck, Bing.SpellCheck.v7, CognitiveServices, ComputerVision, ContentModerator, ConversationalLanguageUnderstanding, ContentSafety, CustomSpeech, CustomVision.Prediction, CustomVision.Training, Emotion, Face, FormRecognizer, ImmersiveReader, LUIS, LUIS.Authoring, MetricsAdvisor, OpenAI, Personalizer, QnAMaker, Recommendations, SpeakerRecognition, Speech, SpeechServices, SpeechTranslation, TextAnalytics, TextTranslation, WebLM"
  }
  validation {
    condition = alltrue([
      for k, v in var.cognitive_accounts : (
        contains(["C2", "C3", "C4", "D3", "DC0", "E0", "F0", "F1", "P0", "P1", "P2", "S", "S0", "S1", "S2", "S3", "S4", "S5", "S6"], v.sku_name)
      )
    ])
    error_message = "must be one of: C2, C3, C4, D3, DC0, E0, F0, F1, P0, P1, P2, S, S0, S1, S2, S3, S4, S5, S6"
  }
  validation {
    condition = alltrue([
      for k, v in var.cognitive_accounts : (
        v.custom_subdomain_name == null || (length(v.custom_subdomain_name) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.cognitive_accounts : (
        v.customer_managed_key == null || (v.customer_managed_key.identity_client_id == null || (can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.customer_managed_key.identity_client_id))))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.cognitive_accounts : (
        v.fqdns == null || (alltrue([for x in v.fqdns : length(x) > 0]))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.cognitive_accounts : (
        v.metrics_advisor_aad_client_id == null || (can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.metrics_advisor_aad_client_id)))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.cognitive_accounts : (
        v.metrics_advisor_aad_tenant_id == null || (can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.metrics_advisor_aad_tenant_id)))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.cognitive_accounts : (
        v.metrics_advisor_super_user_name == null || (length(v.metrics_advisor_super_user_name) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.cognitive_accounts : (
        v.metrics_advisor_website_name == null || (length(v.metrics_advisor_website_name) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.cognitive_accounts : (
        v.custom_question_answering_search_service_key == null || (length(v.custom_question_answering_search_service_key) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.cognitive_accounts : (
        v.storage == null || alltrue([for item in v.storage : (item.identity_client_id == null || (can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", item.identity_client_id))))])
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.cognitive_accounts : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 22 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

