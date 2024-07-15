# TrieveRubyClient::SearchAnalyticsResponse

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'trieve_ruby_client'

TrieveRubyClient::SearchAnalyticsResponse.openapi_one_of
# =>
# [
#   :'DatasetAnalytics',
#   :'HeadQueryResponse',
#   :'LatencyGraphResponse',
#   :'QueryCountResponse',
#   :'RPSGraphResponse',
#   :'SearchQueryEvent',
#   :'SearchQueryResponse'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'trieve_ruby_client'

TrieveRubyClient::SearchAnalyticsResponse.build(data)
# => #<DatasetAnalytics:0x00007fdd4aab02a0>

TrieveRubyClient::SearchAnalyticsResponse.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `DatasetAnalytics`
- `HeadQueryResponse`
- `LatencyGraphResponse`
- `QueryCountResponse`
- `RPSGraphResponse`
- `SearchQueryEvent`
- `SearchQueryResponse`
- `nil` (if no type matches)

