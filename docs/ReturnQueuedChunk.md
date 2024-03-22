# TrieveRubyClient::ReturnQueuedChunk

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'trieve_ruby_client'

TrieveRubyClient::ReturnQueuedChunk.openapi_one_of
# =>
# [
#   :'BatchQueuedChunkResponse',
#   :'SingleQueuedChunkResponse'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'trieve_ruby_client'

TrieveRubyClient::ReturnQueuedChunk.build(data)
# => #<BatchQueuedChunkResponse:0x00007fdd4aab02a0>

TrieveRubyClient::ReturnQueuedChunk.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `BatchQueuedChunkResponse`
- `SingleQueuedChunkResponse`
- `nil` (if no type matches)

