# TrieveRubyClient::RecommendationAnalyticsResponse

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'trieve_ruby_client'

TrieveRubyClient::RecommendationAnalyticsResponse.openapi_one_of
# =>
# [
#   :'RecommendationsEventResponse'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'trieve_ruby_client'

TrieveRubyClient::RecommendationAnalyticsResponse.build(data)
# => #<RecommendationsEventResponse:0x00007fdd4aab02a0>

TrieveRubyClient::RecommendationAnalyticsResponse.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `RecommendationsEventResponse`
- `nil` (if no type matches)

