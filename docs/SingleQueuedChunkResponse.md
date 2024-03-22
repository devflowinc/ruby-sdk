# TrieveRubyClient::SingleQueuedChunkResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chunk_metadata** | [**ChunkMetadata**](ChunkMetadata.md) |  |  |
| **pos_in_queue** | **Integer** | The current position the last access item is in the queue |  |

## Example

```ruby
require 'trieve_ruby_client'

instance = TrieveRubyClient::SingleQueuedChunkResponse.new(
  chunk_metadata: null,
  pos_in_queue: null
)
```

