# TrieveRubyClient::RecommendGroupChunksRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filters** | [**ChunkFilter**](ChunkFilter.md) |  | [optional] |
| **group_size** | **Integer** | The number of chunks to fetch for each group. This is the number of chunks which will be returned in the response for each group. The default is 3. If this is set to a large number, we recommend setting slim_chunks to true to avoid returning the content and chunk_html of the chunks so as to reduce latency due to content download and serialization. | [optional] |
| **limit** | **Integer** | The number of groups to return. This is the number of groups which will be returned in the response. The default is 10. | [optional] |
| **negative_group_ids** | **Array&lt;String&gt;** | The ids of the groups to be used as negative examples for the recommendation. The groups in this array will be used to filter out similar groups. | [optional] |
| **negative_group_tracking_ids** | **Array&lt;String&gt;** | The ids of the groups to be used as negative examples for the recommendation. The groups in this array will be used to filter out similar groups. | [optional] |
| **positive_group_ids** | **Array&lt;String&gt;** | The ids of the groups to be used as positive examples for the recommendation. The groups in this array will be used to find similar groups. | [optional] |
| **positive_group_tracking_ids** | **Array&lt;String&gt;** | The ids of the groups to be used as positive examples for the recommendation. The groups in this array will be used to find similar groups. | [optional] |
| **recommend_type** | **String** | The type of recommendation to make. This lets you choose whether to recommend based off of &#x60;semantic&#x60; or &#x60;fulltext&#x60; similarity. The default is &#x60;semantic&#x60;. | [optional] |
| **slim_chunks** | **Boolean** | Set slim_chunks to true to avoid returning the content and chunk_html of the chunks. This is useful for when you want to reduce amount of data over the wire for latency improvement (typicall 10-50ms). Default is false. | [optional] |
| **strategy** | **String** | Strategy to use for recommendations, either \&quot;average_vector\&quot; or \&quot;best_score\&quot;. The default is \&quot;average_vector\&quot;. The \&quot;average_vector\&quot; strategy will construct a single average vector from the positive and negative samples then use it to perform a pseudo-search. The \&quot;best_score\&quot; strategy is more advanced and navigates the HNSW with a heuristic of picking edges where the point is closer to the positive samples than it is the negatives. | [optional] |

## Example

```ruby
require 'trieve_ruby_client'

instance = TrieveRubyClient::RecommendGroupChunksRequest.new(
  filters: null,
  group_size: null,
  limit: null,
  negative_group_ids: null,
  negative_group_tracking_ids: null,
  positive_group_ids: null,
  positive_group_tracking_ids: null,
  recommend_type: null,
  slim_chunks: null,
  strategy: null
)
```

