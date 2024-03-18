# OpenapiClient::ReccomendGroupChunksRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filters** | [**ChunkFilter**](ChunkFilter.md) |  | [optional] |
| **group_size** | **Integer** | The number of chunks to fetch for each group. This is the number of chunks which will be returned in the response for each group. The default is 10. | [optional] |
| **limit** | **Integer** | The number of groups to return. This is the number of groups which will be returned in the response. The default is 10. | [optional] |
| **negative_group_ids** | **Array&lt;String&gt;** | The  ids of the groups to be used as negative examples for the recommendation. The groups in this array will be used to filter out similar groups. | [optional] |
| **negative_group_tracking_ids** | **Array&lt;String&gt;** | The  ids of the groups to be used as negative examples for the recommendation. The groups in this array will be used to filter out similar groups. | [optional] |
| **positive_group_ids** | **Array&lt;String&gt;** | The  ids of the groups to be used as positive examples for the recommendation. The groups in this array will be used to find similar groups. | [optional] |
| **positive_group_tracking_ids** | **Array&lt;String&gt;** | The  ids of the groups to be used as positive examples for the recommendation. The groups in this array will be used to find similar groups. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ReccomendGroupChunksRequest.new(
  filters: null,
  group_size: null,
  limit: null,
  negative_group_ids: null,
  negative_group_tracking_ids: null,
  positive_group_ids: null,
  positive_group_tracking_ids: null
)
```

