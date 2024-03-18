# TrieveRubyClient::CreateDatasetRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_configuration** | **Object** | Client configuration for the dataset, can be arbitrary JSON. We recommend setting to &#x60;{}&#x60; to start. See docs.trieve.ai for more information or adjust with the admin dashboard. |  |
| **dataset_name** | **String** | Name of the dataset. Must be unique within the organization. |  |
| **organization_id** | **String** | Organization ID that the dataset will belong to. |  |
| **server_configuration** | **Object** | Server configuration for the dataset, can be arbitrary JSON. We recommend setting to &#x60;{}&#x60; to start. See docs.trieve.ai for more information or adjust with the admin dashboard. |  |

## Example

```ruby
require 'trieve_ruby_client'

instance = TrieveRubyClient::CreateDatasetRequest.new(
  client_configuration: null,
  dataset_name: null,
  organization_id: null,
  server_configuration: null
)
```

