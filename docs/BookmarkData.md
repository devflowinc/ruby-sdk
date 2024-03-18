# TrieveRubyClient::BookmarkData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chunks** | [**Array&lt;ChunkMetadataWithFileData&gt;**](ChunkMetadataWithFileData.md) |  |  |
| **group** | [**ChunkGroup**](ChunkGroup.md) |  |  |
| **total_pages** | **Integer** |  |  |

## Example

```ruby
require 'trieve_ruby_client'

instance = TrieveRubyClient::BookmarkData.new(
  chunks: null,
  group: null,
  total_pages: null
)
```

