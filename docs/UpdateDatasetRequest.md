# OpenapiClient::UpdateDatasetRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_configuration** | **Object** | The new client configuration of the dataset, can be arbitrary JSON. See docs.trieve.ai for more information. If not provided, the client configuration will not be updated. | [optional] |
| **dataset_id** | **String** | The id of the dataset you want to update. |  |
| **dataset_name** | **String** | The new name of the dataset. Must be unique within the organization. If not provided, the name will not be updated. | [optional] |
| **server_configuration** | **Object** | The new server configuration of the dataset, can be arbitrary JSON. See docs.trieve.ai for more information. If not provided, the server configuration will not be updated. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::UpdateDatasetRequest.new(
  client_configuration: null,
  dataset_id: null,
  dataset_name: null,
  server_configuration: null
)
```

