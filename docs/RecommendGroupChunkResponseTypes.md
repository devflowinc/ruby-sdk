# TrieveRubyClient::RecommendGroupChunkResponseTypes

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'trieve_ruby_client'

TrieveRubyClient::RecommendGroupChunkResponseTypes.openapi_one_of
# =>
# [
#   :'Array<GroupScoreChunkDTO>',
#   :'Array<GroupSlimChunksDTO>'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'trieve_ruby_client'

TrieveRubyClient::RecommendGroupChunkResponseTypes.build(data)
# => #<Array<GroupScoreChunkDTO>:0x00007fdd4aab02a0>

TrieveRubyClient::RecommendGroupChunkResponseTypes.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `Array<GroupScoreChunkDTO>`
- `Array<GroupSlimChunksDTO>`
- `nil` (if no type matches)

