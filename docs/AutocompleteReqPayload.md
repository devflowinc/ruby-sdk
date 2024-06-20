# TrieveRubyClient::AutocompleteReqPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **content_only** | **Boolean** | Set content_only to true to only returning the chunk_html of the chunks. This is useful for when you want to reduce amount of data over the wire for latency improvement (typically 10-50ms). Default is false. | [optional] |
| **extend_results** | **Boolean** | If specified to true, this will extend the search results to include non-exact prefix matches of the same search_type such that a full page_size of results are returned. Default is false. | [optional] |
| **filters** | [**ChunkFilter**](ChunkFilter.md) |  | [optional] |
| **highlight_delimiters** | **Array&lt;String&gt;** | Set highlight_delimiters to a list of strings to use as delimiters for highlighting. If not specified, this defaults to [\&quot;?\&quot;, \&quot;,\&quot;, \&quot;.\&quot;, \&quot;!\&quot;]. These are the characters that will be used to split the chunk_html into splits for highlighting. | [optional] |
| **highlight_max_length** | **Integer** | Set highlight_max_length to control the maximum number of tokens (typically whitespace separated strings, but sometimes also word stems) which can be present within a single highlight. If not specified, this defaults to 8. This is useful to shorten large splits which may have low scores due to length compared to the query. Set to something very large like 100 to highlight entire splits. | [optional] |
| **highlight_max_num** | **Integer** | Set highlight_max_num to control the maximum number of highlights per chunk. If not specified, this defaults to 3. It may be less than 3 if no snippets score above the highlight_threshold. | [optional] |
| **highlight_results** | **Boolean** | Set highlight_results to false for a slight latency improvement (1-10ms). If not specified, this defaults to true. This will add &#x60;&lt;b&gt;&lt;mark&gt;&#x60; tags to the chunk_html of the chunks to highlight matching splits and return the highlights on each scored chunk in the response. | [optional] |
| **highlight_threshold** | **Float** | Set highlight_threshold to a lower or higher value to adjust the sensitivity of the highlights applied to the chunk html. If not specified, this defaults to 0.8. The range is 0.0 to 1.0. | [optional] |
| **highlight_window** | **Integer** | Set highlight_window to a number to control the amount of words that are returned around the matched phrases. If not specified, this defaults to 0. This is useful for when you want to show more context around the matched words. When specified, window/2 whitespace separated words are added before and after each highlight in the response&#39;s highlights array. If an extended highlight overlaps with another highlight, the overlapping words are only included once. | [optional] |
| **page_size** | **Integer** | Page size is the number of chunks to fetch. This can be used to fetch more than 10 chunks at a time. | [optional] |
| **query** | **String** | Query is the search query. This can be any string. The query will be used to create an embedding vector and/or SPLADE vector which will be used to find the result set. |  |
| **recency_bias** | **Float** | Recency Bias lets you determine how much of an effect the recency of chunks will have on the search results. If not specified, this defaults to 0.0. We recommend setting this to 1.0 for a gentle reranking of the results, &gt;3.0 for a strong reranking of the results. | [optional] |
| **score_threshold** | **Float** | Set score_threshold to a float to filter out chunks with a score below the threshold. | [optional] |
| **search_type** | **String** | Can be either \&quot;semantic\&quot;, or \&quot;fulltext\&quot;. \&quot;semantic\&quot; will pull in one page_size of the nearest cosine distant vectors. \&quot;fulltext\&quot; will pull in one page_size of full-text results based on SPLADE. |  |
| **slim_chunks** | **Boolean** | Set slim_chunks to true to avoid returning the content and chunk_html of the chunks. This is useful for when you want to reduce amount of data over the wire for latency improvement (typically 10-50ms). Default is false. | [optional] |
| **tag_weights** | **Hash&lt;String, Float&gt;** | Tag weights is a JSON object which can be used to boost the ranking of chunks with certain tags. This is useful for when you want to be able to bias towards chunks with a certain tag on the fly. The keys are the tag names and the values are the weights. | [optional] |
| **use_weights** | **Boolean** | Set use_weights to true to use the weights of the chunks in the result set in order to sort them. If not specified, this defaults to true. | [optional] |

## Example

```ruby
require 'trieve_ruby_client'

instance = TrieveRubyClient::AutocompleteReqPayload.new(
  content_only: null,
  extend_results: null,
  filters: null,
  highlight_delimiters: null,
  highlight_max_length: null,
  highlight_max_num: null,
  highlight_results: null,
  highlight_threshold: null,
  highlight_window: null,
  page_size: null,
  query: null,
  recency_bias: null,
  score_threshold: null,
  search_type: null,
  slim_chunks: null,
  tag_weights: null,
  use_weights: null
)
```

