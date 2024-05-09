# TrieveRubyClient::SearchOverGroupsData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filters** | [**ChunkFilter**](ChunkFilter.md) |  | [optional] |
| **get_collisions** | **Boolean** | Set get_collisions to true to get the collisions for each chunk. This will only apply if environment variable COLLISIONS_ENABLED is set to true. | [optional] |
| **get_total_pages** | **Boolean** | Get total page count for the query accounting for the applied filters. Defaults to false, but can be set to true when the latency penalty is acceptable (typically 50-200ms). | [optional] |
| **group_size** | **Integer** | Group_size is the number of chunks to fetch for each group. The default is 3. If a group has less than group_size chunks, all chunks will be returned. If this is set to a large number, we recommend setting slim_chunks to true to avoid returning the content and chunk_html of the chunks so as to lower the amount of time required for content download and serialization. | [optional] |
| **highlight_delimiters** | **Array&lt;String&gt;** | Set highlight_delimiters to a list of strings to use as delimiters for highlighting. If not specified, this defaults to [\&quot;?\&quot;, \&quot;,\&quot;, \&quot;.\&quot;, \&quot;!\&quot;]. | [optional] |
| **highlight_results** | **Boolean** | Set highlight_results to false for a slight latency improvement (1-10ms). If not specified, this defaults to true. This will add &lt;b&gt;&lt;mark&gt; tags to the chunk_html of the chunks to highlight matching sub-sentences. | [optional] |
| **page** | **Integer** | Page of group results to fetch. Page is 1-indexed. | [optional] |
| **page_size** | **Integer** | Page size is the number of group results to fetch. The default is 10. | [optional] |
| **query** | **String** | Query is the search query. This can be any string. The query will be used to create an embedding vector and/or SPLADE vector which will be used to find the result set. |  |
| **score_threshold** | **Float** | Set score_threshold to a float to filter out chunks with a score below the threshold. | [optional] |
| **search_type** | **String** | Can be either \&quot;semantic\&quot;, \&quot;fulltext\&quot;, or \&quot;hybrid\&quot;. \&quot;hybrid\&quot; will pull in one page (10 chunks) of both semantic and full-text results then re-rank them using BAAI/bge-reranker-large. \&quot;semantic\&quot; will pull in one page (10 chunks) of the nearest cosine distant vectors. \&quot;fulltext\&quot; will pull in one page (10 chunks) of full-text results based on SPLADE. |  |
| **slim_chunks** | **Boolean** | Set slim_chunks to true to avoid returning the content and chunk_html of the chunks. This is useful for when you want to reduce amount of data over the wire for latency improvement (typicall 10-50ms). Default is false. | [optional] |

## Example

```ruby
require 'trieve_ruby_client'

instance = TrieveRubyClient::SearchOverGroupsData.new(
  filters: null,
  get_collisions: null,
  get_total_pages: null,
  group_size: null,
  highlight_delimiters: null,
  highlight_results: null,
  page: null,
  page_size: null,
  query: null,
  score_threshold: null,
  search_type: null,
  slim_chunks: null
)
```

