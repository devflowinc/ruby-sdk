# TrieveRubyClient::GroupScoreChunk

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** |  |  |
| **group_name** | **String** |  | [optional] |
| **group_tracking_id** | **String** |  | [optional] |
| **metadata** | [**Array&lt;ScoreChunkDTO&gt;**](ScoreChunkDTO.md) |  |  |

## Example

```ruby
require 'trieve_ruby_client'

instance = TrieveRubyClient::GroupScoreChunk.new(
  group_id: null,
  group_name: null,
  group_tracking_id: null,
  metadata: null
)
```

