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
    public_network_access_enabled                                      = optional(bool) # Default: true
    project_management_enabled                                         = optional(bool) # Default: false
    outbound_network_access_restricted                                 = optional(bool) # Default: false
    metrics_advisor_website_name                                       = optional(string)
    metrics_advisor_super_user_name                                    = optional(string)
    metrics_advisor_aad_tenant_id                                      = optional(string)
    fqdns                                                              = optional(list(string))
    local_auth_enabled                                                 = optional(bool) # Default: true
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
        ignore_missing_vnet_service_endpoint = optional(bool) # Default: false
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
  # --- Unconfirmed validation candidates, derived from azurerm_cognitive_account's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    validate.AccountName: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: kind
  #   condition: contains(["AIServices", "Academic", "AnomalyDetector", "Bing.Autosuggest", "Bing.Autosuggest.v7", "Bing.CustomSearch", "Bing.Search", "Bing.Search.v7", "Bing.Speech", "Bing.SpellCheck", "Bing.SpellCheck.v7", "CognitiveServices", "ComputerVision", "ContentModerator", "ConversationalLanguageUnderstanding", "ContentSafety", "CustomSpeech", "CustomVision.Prediction", "CustomVision.Training", "Emotion", "Face", "FormRecognizer", "ImmersiveReader", "LUIS", "LUIS.Authoring", "MetricsAdvisor", "OpenAI", "Personalizer", "QnAMaker", "Recommendations", "SpeakerRecognition", "Speech", "SpeechServices", "SpeechTranslation", "TextAnalytics", "TextTranslation", "WebLM"], value)
  #   message:   must be one of: AIServices, Academic, AnomalyDetector, Bing.Autosuggest, Bing.Autosuggest.v7, Bing.CustomSearch, Bing.Search, Bing.Search.v7, Bing.Speech, Bing.SpellCheck, Bing.SpellCheck.v7, CognitiveServices, ComputerVision, ContentModerator, ConversationalLanguageUnderstanding, ContentSafety, CustomSpeech, CustomVision.Prediction, CustomVision.Training, Emotion, Face, FormRecognizer, ImmersiveReader, LUIS, LUIS.Authoring, MetricsAdvisor, OpenAI, Personalizer, QnAMaker, Recommendations, SpeakerRecognition, Speech, SpeechServices, SpeechTranslation, TextAnalytics, TextTranslation, WebLM
  # path: sku_name
  #   condition: contains(["C2", "C3", "C4", "D3", "DC0", "E0", "F0", "F1", "P0", "P1", "P2", "S", "S0", "S1", "S2", "S3", "S4", "S5", "S6"], value)
  #   message:   must be one of: C2, C3, C4, D3, DC0, E0, F0, F1, P0, P1, P2, S, S0, S1, S2, S3, S4, S5, S6
  # path: custom_subdomain_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: customer_managed_key.key_vault_key_id
  #   source:    [from keyvault.ValidateNestedItemID] !ok
  # path: customer_managed_key.key_vault_key_id
  #   source:    [from keyvault.ValidateNestedItemID] err != nil
  # path: customer_managed_key.identity_client_id
  #   condition: can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", value))
  #   message:   must be a valid UUID
  # path: fqdns[*]
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: identity.type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: identity.identity_ids[*]
  #   source:    [from commonids.ValidateUserAssignedIdentityID] !ok
  # path: identity.identity_ids[*]
  #   source:    [from commonids.ValidateUserAssignedIdentityID] err != nil
  # path: metrics_advisor_aad_client_id
  #   condition: can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", value))
  #   message:   must be a valid UUID
  # path: metrics_advisor_aad_tenant_id
  #   condition: can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", value))
  #   message:   must be a valid UUID
  # path: metrics_advisor_super_user_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: metrics_advisor_website_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: network_acls.default_action
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: network_acls.ip_rules[*]
  #   source:    validation.Any(...) - no translation rule yet, add one
  # path: network_acls.bypass
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: network_injection.scenario
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: network_injection.subnet_id
  #   source:    [from commonids.ValidateSubnetID] !ok
  # path: network_injection.subnet_id
  #   source:    [from commonids.ValidateSubnetID] err != nil
  # path: qna_runtime_endpoint
  #   source:    validation.IsURLWithHTTPorHTTPS(...) - no translation rule yet, add one
  # path: custom_question_answering_search_service_id
  #   source:    [from search.ValidateSearchServiceID] !ok
  # path: custom_question_answering_search_service_id
  #   source:    [from search.ValidateSearchServiceID] err != nil
  # path: custom_question_answering_search_service_key
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: storage.storage_account_id
  #   source:    [from commonids.ValidateStorageAccountID] !ok
  # path: storage.storage_account_id
  #   source:    [from commonids.ValidateStorageAccountID] err != nil
  # path: storage.identity_client_id
  #   condition: can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", value))
  #   message:   must be a valid UUID
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
}

