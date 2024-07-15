# TrieveRubyClient::ChunkReturnTypes

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'trieve_ruby_client'

TrieveRubyClient::ChunkReturnTypes.openapi_one_of
# =>
# [
#   :'ChunkMetadata',
#   :'ChunkMetadataStringTagSet'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'trieve_ruby_client'

TrieveRubyClient::ChunkReturnTypes.build(data)
# => #<ChunkMetadata:0x00007fdd4aab02a0>

TrieveRubyClient::ChunkReturnTypes.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `ChunkMetadata`
- `ChunkMetadataStringTagSet`
- `nil` (if no type matches)

