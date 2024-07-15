# TrieveRubyClient::GetChunksForGroupsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chunks** | [**Array&lt;ChunkMetadata&gt;**](ChunkMetadata.md) |  |  |
| **group** | [**ChunkGroupAndFileId**](ChunkGroupAndFileId.md) |  |  |
| **total_pages** | **Integer** |  |  |

## Example

```ruby
require 'trieve_ruby_client'

instance = TrieveRubyClient::GetChunksForGroupsResponse.new(
  chunks: null,
  group: null,
  total_pages: null
)
```

