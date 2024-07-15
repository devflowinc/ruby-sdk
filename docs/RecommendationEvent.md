# TrieveRubyClient::RecommendationEvent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_at** | **String** |  |  |
| **dataset_id** | **String** |  |  |
| **id** | **String** |  |  |
| **negative_ids** | **Array&lt;String&gt;** |  |  |
| **negative_tracking_ids** | **Array&lt;String&gt;** |  |  |
| **positive_ids** | **Array&lt;String&gt;** |  |  |
| **positive_tracking_ids** | **Array&lt;String&gt;** |  |  |
| **recommendation_type** | **String** |  |  |
| **request_params** | **String** |  |  |
| **results** | [**Array&lt;SearchResultType&gt;**](SearchResultType.md) |  |  |
| **top_score** | **Float** |  |  |

## Example

```ruby
require 'trieve_ruby_client'

instance = TrieveRubyClient::RecommendationEvent.new(
  created_at: null,
  dataset_id: null,
  id: null,
  negative_ids: null,
  negative_tracking_ids: null,
  positive_ids: null,
  positive_tracking_ids: null,
  recommendation_type: null,
  request_params: null,
  results: null,
  top_score: null
)
```

