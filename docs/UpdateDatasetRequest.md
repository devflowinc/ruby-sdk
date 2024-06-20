# TrieveRubyClient::UpdateDatasetRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_configuration** | **Object** | The new client configuration of the dataset, can be arbitrary JSON. See docs.trieve.ai for more information. If not provided, the client configuration will not be updated. | [optional] |
| **dataset_id** | **String** | The id of the dataset you want to update. | [optional] |
| **dataset_name** | **String** | The new name of the dataset. Must be unique within the organization. If not provided, the name will not be updated. | [optional] |
| **new_tracking_id** | **String** | Optional new tracking ID for the dataset. Can be used to track the dataset in external systems. Must be unique within the organization. If not provided, the tracking ID will not be updated. | [optional] |
| **server_configuration** | **Object** | The new server configuration of the dataset, can be arbitrary JSON. See docs.trieve.ai for more information. If not provided, the server configuration will not be updated. | [optional] |
| **tracking_id** | **String** | tracking ID for the dataset. Can be used to track the dataset in external systems. | [optional] |

## Example

```ruby
require 'trieve_ruby_client'

instance = TrieveRubyClient::UpdateDatasetRequest.new(
  client_configuration: null,
  dataset_id: null,
  dataset_name: null,
  new_tracking_id: null,
  server_configuration: null,
  tracking_id: null
)
```

