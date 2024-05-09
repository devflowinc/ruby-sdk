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
| **recommend_type** | **String** | The type of recommendation to make. This lets you choose whether to recommend based off of &#x60;semantic&#x60; or &#x60;fulltext&#x60; similarity. The default is &#x60;semantic&#x60;. | [optional] |
| **slim_chunks** | **Boolean** | Set slim_chunks to true to avoid returning the content and chunk_html of the chunks. This is useful for when you want to reduce amount of data over the wire for latency improvement (typicall 10-50ms). Default is false. | [optional] |
| **strategy** | **String** | Strategy to use for recommendations, either \&quot;average_vector\&quot; or \&quot;best_score\&quot;. The default is \&quot;average_vector\&quot;. The \&quot;average_vector\&quot; strategy will construct a single average vector from the positive and negative samples then use it to perform a pseudo-search. The \&quot;best_score\&quot; strategy is more advanced and navigates the HNSW with a heuristic of picking edges where the point is closer to the positive samples than it is the negatives. | [optional] |

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
  recommend_type: null,
  slim_chunks: null,
  strategy: null
)
```

