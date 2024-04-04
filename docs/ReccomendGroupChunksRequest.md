# TrieveRubyClient::ReccomendGroupChunksRequest

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
| **slim_chunks** | **Boolean** | Set slim_chunks to true to avoid returning the content and chunk_html of the chunks. This is useful for when you want to reduce amount of data over the wire for latency improvement. Default is false. | [optional] |

## Example

```ruby
require 'trieve_ruby_client'

instance = TrieveRubyClient::ReccomendGroupChunksRequest.new(
  filters: null,
  group_size: null,
  limit: null,
  negative_group_ids: null,
  negative_group_tracking_ids: null,
  positive_group_ids: null,
  positive_group_tracking_ids: null,
  slim_chunks: null
)
```

