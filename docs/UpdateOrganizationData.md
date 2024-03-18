# TrieveRubyClient::UpdateOrganizationData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The new name of the organization. If not provided, the name will not be updated. | [optional] |
| **organization_id** | **String** | The id of the organization to update. |  |

## Example

```ruby
require 'trieve_ruby_client'

instance = TrieveRubyClient::UpdateOrganizationData.new(
  name: null,
  organization_id: null
)
```

