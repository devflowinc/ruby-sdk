# TrieveRubyClient::SearchWithinGroupResults

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bookmarks** | [**Array&lt;ScoreChunkDTO&gt;**](ScoreChunkDTO.md) |  |  |
| **group** | [**ChunkGroup**](ChunkGroup.md) |  |  |
| **total_pages** | **Integer** |  |  |

## Example

```ruby
require 'trieve_ruby_client'

instance = TrieveRubyClient::SearchWithinGroupResults.new(
  bookmarks: null,
  group: null,
  total_pages: null
)
```

