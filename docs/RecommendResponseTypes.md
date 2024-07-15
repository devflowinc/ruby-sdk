# TrieveRubyClient::RecommendResponseTypes

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'trieve_ruby_client'

TrieveRubyClient::RecommendResponseTypes.openapi_one_of
# =>
# [
#   :'Array<ChunkMetadataWithScore>',
#   :'RecommendChunksResponseBody'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'trieve_ruby_client'

TrieveRubyClient::RecommendResponseTypes.build(data)
# => #<Array<ChunkMetadataWithScore>:0x00007fdd4aab02a0>

TrieveRubyClient::RecommendResponseTypes.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `Array<ChunkMetadataWithScore>`
- `RecommendChunksResponseBody`
- `nil` (if no type matches)

