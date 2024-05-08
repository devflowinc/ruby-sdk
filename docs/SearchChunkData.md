# TrieveRubyClient::SearchChunkData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date_bias** | **Boolean** | Set date_bias to true to bias search results towards more recent chunks. This will work best in hybrid search mode. | [optional] |
| **filters** | [**ChunkFilter**](ChunkFilter.md) |  | [optional] |
| **get_collisions** | **Boolean** | Set get_collisions to true to get the collisions for each chunk. This will only apply if environment variable COLLISIONS_ENABLED is set to true. | [optional] |
| **get_total_pages** | **Boolean** | Get total page count for the query accounting for the applied filters. Defaults to true, but can be set to false to reduce latency in edge cases performance. | [optional] |
| **highlight_delimiters** | **Array&lt;String&gt;** | Set highlight_delimiters to a list of strings to use as delimiters for highlighting. If not specified, this defaults to [\&quot;?\&quot;, \&quot;,\&quot;, \&quot;.\&quot;, \&quot;!\&quot;]. | [optional] |
| **highlight_results** | **Boolean** | Set highlight_results to true to highlight the results. If not specified, this defaults to true. | [optional] |
| **page** | **Integer** | Page of chunks to fetch. Page is 1-indexed. | [optional] |
| **page_size** | **Integer** | Page size is the number of chunks to fetch. This can be used to fetch more than 10 chunks at a time. | [optional] |
| **query** | **String** | Query is the search query. This can be any string. The query will be used to create an embedding vector and/or SPLADE vector which will be used to find the result set. |  |
| **score_threshold** | **Float** | Set score_threshold to a float to filter out chunks with a score below the threshold. | [optional] |
| **search_type** | **String** | Can be either \&quot;semantic\&quot;, \&quot;fulltext\&quot;, or \&quot;hybrid\&quot;. \&quot;hybrid\&quot; will pull in one page (10 chunks) of both semantic and full-text results then re-rank them using BAAI/bge-reranker-large. \&quot;semantic\&quot; will pull in one page (10 chunks) of the nearest cosine distant vectors. \&quot;fulltext\&quot; will pull in one page (10 chunks) of full-text results based on SPLADE. |  |
| **slim_chunks** | **Boolean** | Set slim_chunks to true to avoid returning the content and chunk_html of the chunks. This is useful for when you want to reduce amount of data over the wire for latency improvement. Default is false. | [optional] |
| **use_weights** | **Boolean** | Set use_weights to true to use the weights of the chunks in the result set in order to sort them. If not specified, this defaults to true. | [optional] |

## Example

```ruby
require 'trieve_ruby_client'

instance = TrieveRubyClient::SearchChunkData.new(
  date_bias: null,
  filters: null,
  get_collisions: null,
  get_total_pages: null,
  highlight_delimiters: null,
  highlight_results: null,
  page: null,
  page_size: null,
  query: null,
  score_threshold: null,
  search_type: null,
  slim_chunks: null,
  use_weights: null
)
```

