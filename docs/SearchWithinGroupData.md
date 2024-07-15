# TrieveRubyClient::SearchWithinGroupData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filters** | [**ChunkFilter**](ChunkFilter.md) |  | [optional] |
| **get_total_pages** | **Boolean** | Get total page count for the query accounting for the applied filters. Defaults to false, but can be set to true when the latency penalty is acceptable (typically 50-200ms). | [optional] |
| **group_id** | **String** | Group specifies the group to search within. Results will only consist of chunks which are bookmarks within the specified group. | [optional] |
| **group_tracking_id** | **String** | Group_tracking_id specifies the group to search within by tracking id. Results will only consist of chunks which are bookmarks within the specified group. If both group_id and group_tracking_id are provided, group_id will be used. | [optional] |
| **highlight_delimiters** | **Array&lt;String&gt;** | Set highlight_delimiters to a list of strings to use as delimiters for highlighting. If not specified, this defaults to [\&quot;?\&quot;, \&quot;,\&quot;, \&quot;.\&quot;, \&quot;!\&quot;]. These are the characters that will be used to split the chunk_html into splits for highlighting. | [optional] |
| **highlight_max_length** | **Integer** | Set highlight_max_length to control the maximum number of tokens (typically whitespace separated strings, but sometimes also word stems) which can be present within a single highlight. If not specified, this defaults to 8. This is useful to shorten large splits which may have low scores due to length compared to the query. Set to something very large like 100 to highlight entire splits. | [optional] |
| **highlight_max_num** | **Integer** | Set highlight_max_num to control the maximum number of highlights per chunk. If not specified, this defaults to 3. It may be less than 3 if no snippets score above the highlight_threshold. | [optional] |
| **highlight_results** | **Boolean** | Set highlight_results to false for a slight latency improvement (1-10ms). If not specified, this defaults to true. This will add &#x60;&lt;b&gt;&lt;mark&gt;&#x60; tags to the chunk_html of the chunks to highlight matching splits and return the highlights on each scored chunk in the response. | [optional] |
| **highlight_threshold** | **Float** | Set highlight_threshold to a lower or higher value to adjust the sensitivity of the highlights applied to the chunk html. If not specified, this defaults to 0.8. The range is 0.0 to 1.0. | [optional] |
| **highlight_window** | **Integer** | Set highlight_window to a number to control the amount of words that are returned around the matched phrases. If not specified, this defaults to 0. This is useful for when you want to show more context around the matched words. When specified, window/2 whitespace separated words are added before and after each highlight in the response&#39;s highlights array. If an extended highlight overlaps with another highlight, the overlapping words are only included once. | [optional] |
| **location_bias** | [**GeoInfoWithBias**](GeoInfoWithBias.md) |  | [optional] |
| **page** | **Integer** | The page of chunks to fetch. Page is 1-indexed. | [optional] |
| **page_size** | **Integer** | The page size is the number of chunks to fetch. This can be used to fetch more than 10 chunks at a time. | [optional] |
| **query** | **String** | The query is the search query. This can be any string. The query will be used to create an embedding vector and/or SPLADE vector which will be used to find the result set. |  |
| **recency_bias** | **Float** | Recency Bias lets you determine how much of an effect the recency of chunks will have on the search results. If not specified, this defaults to 0.0. | [optional] |
| **score_threshold** | **Float** | Set score_threshold to a float to filter out chunks with a score below the threshold. This threshold applies before weight and bias modifications. If not specified, this defaults to 0.0. | [optional] |
| **search_type** | [**SearchMethod**](SearchMethod.md) |  |  |
| **slim_chunks** | **Boolean** | Set slim_chunks to true to avoid returning the content and chunk_html of the chunks. This is useful for when you want to reduce amount of data over the wire for latency improvement (typicall 10-50ms). Default is false. | [optional] |
| **tag_weights** | **Hash&lt;String, Float&gt;** | Tag weights is a JSON object which can be used to boost the ranking of chunks with certain tags. This is useful for when you want to be able to bias towards chunks with a certain tag on the fly. The keys are the tag names and the values are the weights. | [optional] |
| **use_reranker** | **Boolean** | If true, chunks will be reranked using scores from a cross encoder model. \&quot;hybrid\&quot; search will always use the reranker regardless of this setting. | [optional] |
| **use_weights** | **Boolean** | Set use_weights to true to use the weights of the chunks in the result set in order to sort them. If not specified, this defaults to true. | [optional] |

## Example

```ruby
require 'trieve_ruby_client'

instance = TrieveRubyClient::SearchWithinGroupData.new(
  filters: null,
  get_total_pages: null,
  group_id: null,
  group_tracking_id: null,
  highlight_delimiters: null,
  highlight_max_length: null,
  highlight_max_num: null,
  highlight_results: null,
  highlight_threshold: null,
  highlight_window: null,
  location_bias: null,
  page: null,
  page_size: null,
  query: null,
  recency_bias: null,
  score_threshold: null,
  search_type: null,
  slim_chunks: null,
  tag_weights: null,
  use_reranker: null,
  use_weights: null
)
```

