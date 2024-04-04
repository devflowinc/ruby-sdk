# TrieveRubyClient::SearchGroupSlimChunksResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bookmarks** | [**Array&lt;ScoreSlimChunks&gt;**](ScoreSlimChunks.md) |  |  |
| **group** | [**ChunkGroup**](ChunkGroup.md) |  |  |
| **total_pages** | **Integer** |  |  |

## Example

```ruby
require 'trieve_ruby_client'

instance = TrieveRubyClient::SearchGroupSlimChunksResult.new(
  bookmarks: null,
  group: null,
  total_pages: null
)
```

