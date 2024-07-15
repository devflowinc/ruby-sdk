# TrieveRubyClient::SearchQueries

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | [**SearchAnalyticsFilter**](SearchAnalyticsFilter.md) |  | [optional] |
| **page** | **Integer** |  | [optional] |
| **sort_by** | [**SortBy**](SortBy.md) |  | [optional] |
| **sort_order** | [**SortOrder**](SortOrder.md) |  | [optional] |
| **type** | **String** |  |  |

## Example

```ruby
require 'trieve_ruby_client'

instance = TrieveRubyClient::SearchQueries.new(
  filter: null,
  page: null,
  sort_by: null,
  sort_order: null,
  type: null
)
```

