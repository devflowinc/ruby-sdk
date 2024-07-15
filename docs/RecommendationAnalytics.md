# TrieveRubyClient::RecommendationAnalytics

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'trieve_ruby_client'

TrieveRubyClient::RecommendationAnalytics.openapi_one_of
# =>
# [
#   :'LowConfidenceRecommendations',
#   :'RecommendationQueries'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'trieve_ruby_client'

TrieveRubyClient::RecommendationAnalytics.openapi_discriminator_name
# => :'type'
```
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'trieve_ruby_client'

TrieveRubyClient::RecommendationAnalytics.build(data)
# => #<LowConfidenceRecommendations:0x00007fdd4aab02a0>

TrieveRubyClient::RecommendationAnalytics.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `LowConfidenceRecommendations`
- `RecommendationQueries`
- `nil` (if no type matches)

