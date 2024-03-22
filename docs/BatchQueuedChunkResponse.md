# TrieveRubyClient::BatchQueuedChunkResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chunk_metadata** | [**Array&lt;ChunkMetadata&gt;**](ChunkMetadata.md) |  |  |
| **pos_in_queue** | **Integer** | The current position the last access item is in the queue |  |

## Example

```ruby
require 'trieve_ruby_client'

instance = TrieveRubyClient::BatchQueuedChunkResponse.new(
  chunk_metadata: null,
  pos_in_queue: null
)
```

