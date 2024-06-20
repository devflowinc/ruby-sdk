# TrieveRubyClient::SuggestedQueriesReqPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **query** | **String** | The query to base the generated suggested queries off of using RAG. A hybrid search for 10 chunks from your dataset using this query will be performed and the context of the chunks will be used to generate the suggested queries. |  |

## Example

```ruby
require 'trieve_ruby_client'

instance = TrieveRubyClient::SuggestedQueriesReqPayload.new(
  query: null
)
```

