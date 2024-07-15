# TrieveRubyClient::SearchQueryEvent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_at** | **String** |  |  |
| **dataset_id** | **String** |  |  |
| **id** | **String** |  |  |
| **latency** | **Float** |  |  |
| **query** | **String** |  |  |
| **request_params** | **String** |  |  |
| **results** | [**Array&lt;SearchResultType&gt;**](SearchResultType.md) |  |  |
| **search_type** | **String** |  |  |
| **top_score** | **Float** |  |  |

## Example

```ruby
require 'trieve_ruby_client'

instance = TrieveRubyClient::SearchQueryEvent.new(
  created_at: null,
  dataset_id: null,
  id: null,
  latency: null,
  query: null,
  request_params: null,
  results: null,
  search_type: null,
  top_score: null
)
```

