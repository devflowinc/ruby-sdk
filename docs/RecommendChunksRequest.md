# TrieveRubyClient::RecommendChunksRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filters** | [**ChunkFilter**](ChunkFilter.md) |  | [optional] |
| **limit** | **Integer** | The number of chunks to return. This is the number of chunks which will be returned in the response. The default is 10. | [optional] |
| **negative_chunk_ids** | **Array&lt;String&gt;** | The ids of the chunks to be used as negative examples for the recommendation. The chunks in this array will be used to filter out similar chunks. | [optional] |
| **negative_tracking_ids** | **Array&lt;String&gt;** | The tracking_ids of the chunks to be used as negative examples for the recommendation. The chunks in this array will be used to filter out similar chunks. | [optional] |
| **positive_chunk_ids** | **Array&lt;String&gt;** | The ids of the chunks to be used as positive examples for the recommendation. The chunks in this array will be used to find similar chunks. | [optional] |
| **positive_tracking_ids** | **Array&lt;String&gt;** | The tracking_ids of the chunks to be used as positive examples for the recommendation. The chunks in this array will be used to find similar chunks. | [optional] |
| **slim_chunks** | **Boolean** | Set slim_chunks to true to avoid returning the content and chunk_html of the chunks. This is useful for when you want to reduce amount of data over the wire for latency improvement. Default is false. | [optional] |

## Example

```ruby
require 'trieve_ruby_client'

instance = TrieveRubyClient::RecommendChunksRequest.new(
  filters: null,
  limit: null,
  negative_chunk_ids: null,
  negative_tracking_ids: null,
  positive_chunk_ids: null,
  positive_tracking_ids: null,
  slim_chunks: null
)
```

