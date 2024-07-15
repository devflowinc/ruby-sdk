# TrieveRubyClient::NewChunkMetadataTypes

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'trieve_ruby_client'

TrieveRubyClient::NewChunkMetadataTypes.openapi_one_of
# =>
# [
#   :'ChunkMetadata',
#   :'ContentChunkMetadata',
#   :'SlimChunkMetadataWithArrayTagSet'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'trieve_ruby_client'

TrieveRubyClient::NewChunkMetadataTypes.build(data)
# => #<ChunkMetadata:0x00007fdd4aab02a0>

TrieveRubyClient::NewChunkMetadataTypes.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `ChunkMetadata`
- `ContentChunkMetadata`
- `SlimChunkMetadataWithArrayTagSet`
- `nil` (if no type matches)

