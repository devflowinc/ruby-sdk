# TrieveRubyClient::SetUserApiKeyRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dataset_ids** | **Array&lt;String&gt;** | The dataset ids which the api key will have access to. If not provided or empty, the api key will have access to all datasets the auth&#39;ed user has access to. If both dataset_ids and organization_ids are provided, the api key will have access to the intersection of the datasets and organizations. | [optional] |
| **name** | **String** | The name which will be assigned to the new api key. |  |
| **organization_ids** | **Array&lt;String&gt;** | The organization ids which the api key will have access to. If not provided or empty, the api key will have access to all organizations the auth&#39;ed user has access to. | [optional] |
| **role** | **Integer** | The role which will be assigned to the new api key. Either 0 (read), 1 (read and write at the level of the currently auth&#39;ed user). The auth&#39;ed user must have a role greater than or equal to the role being assigned which means they must be an admin (1) or owner (2) of the organization to assign write permissions with a role of 1. |  |

## Example

```ruby
require 'trieve_ruby_client'

instance = TrieveRubyClient::SetUserApiKeyRequest.new(
  dataset_ids: null,
  name: null,
  organization_ids: null,
  role: null
)
```

