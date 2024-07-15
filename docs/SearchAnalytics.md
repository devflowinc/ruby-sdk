# TrieveRubyClient::SearchAnalytics

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'trieve_ruby_client'

TrieveRubyClient::SearchAnalytics.openapi_one_of
# =>
# [
#   :'CountQueries',
#   :'HeadQueries1',
#   :'LatencyGraph',
#   :'LowConfidenceQueries',
#   :'NoResultQueries',
#   :'QueryDetails',
#   :'RPSGraph',
#   :'SearchMetrics',
#   :'SearchQueries'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'trieve_ruby_client'

TrieveRubyClient::SearchAnalytics.openapi_discriminator_name
# => :'type'
```
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'trieve_ruby_client'

TrieveRubyClient::SearchAnalytics.build(data)
# => #<CountQueries:0x00007fdd4aab02a0>

TrieveRubyClient::SearchAnalytics.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `CountQueries`
- `HeadQueries1`
- `LatencyGraph`
- `LowConfidenceQueries`
- `NoResultQueries`
- `QueryDetails`
- `RPSGraph`
- `SearchMetrics`
- `SearchQueries`
- `nil` (if no type matches)

