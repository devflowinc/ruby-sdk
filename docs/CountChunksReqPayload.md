# TrieveRubyClient::CountChunksReqPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filters** | [**ChunkFilter**](ChunkFilter.md) |  | [optional] |
| **limit** | **Integer** | Set limit to restrict the maximum number of chunks to count. This is useful for when you want to reduce the latency of the count operation. By default the limit will be the number of chunks in the dataset. | [optional] |
| **query** | **String** | Query is the search query. This can be any string. The query will be used to create an embedding vector and/or SPLADE vector which will be used to find the result set. |  |
| **score_threshold** | **Float** | Set score_threshold to a float to filter out chunks with a score below the threshold. This threshold applies before weight and bias modifications. If not specified, this defaults to 0.0. | [optional] |
| **search_type** | [**SearchMethod**](SearchMethod.md) |  |  |

## Example

```ruby
require 'trieve_ruby_client'

instance = TrieveRubyClient::CountChunksReqPayload.new(
  filters: null,
  limit: null,
  query: null,
  score_threshold: null,
  search_type: null
)
```

