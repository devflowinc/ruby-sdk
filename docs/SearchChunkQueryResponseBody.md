# TrieveRubyClient::SearchChunkQueryResponseBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **score_chunks** | [**Array&lt;ScoreChunkDTO&gt;**](ScoreChunkDTO.md) |  |  |
| **total_chunk_pages** | **Integer** |  |  |

## Example

```ruby
require 'trieve_ruby_client'

instance = TrieveRubyClient::SearchChunkQueryResponseBody.new(
  score_chunks: null,
  total_chunk_pages: null
)
```

