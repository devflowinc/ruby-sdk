# TrieveRubyClient::GroupScoreChunkDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** |  |  |
| **group_tracking_id** | **String** |  | [optional] |
| **metadata** | [**Array&lt;ScoreChunkDTO&gt;**](ScoreChunkDTO.md) |  |  |

## Example

```ruby
require 'trieve_ruby_client'

instance = TrieveRubyClient::GroupScoreChunkDTO.new(
  group_id: null,
  group_tracking_id: null,
  metadata: null
)
```

