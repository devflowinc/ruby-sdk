# TrieveRubyClient::GroupScoreChunk

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **String** |  | [optional] |
| **group_created_at** | **Time** |  |  |
| **group_dataset_id** | **String** |  |  |
| **group_description** | **String** |  | [optional] |
| **group_id** | **String** |  |  |
| **group_metadata** | **Object** |  | [optional] |
| **group_name** | **String** |  | [optional] |
| **group_tag_set** | **Array&lt;String&gt;** |  | [optional] |
| **group_tracking_id** | **String** |  | [optional] |
| **group_updated_at** | **Time** |  |  |
| **metadata** | [**Array&lt;ScoreChunkDTO&gt;**](ScoreChunkDTO.md) |  |  |

## Example

```ruby
require 'trieve_ruby_client'

instance = TrieveRubyClient::GroupScoreChunk.new(
  file_id: null,
  group_created_at: null,
  group_dataset_id: null,
  group_description: null,
  group_id: null,
  group_metadata: null,
  group_name: null,
  group_tag_set: null,
  group_tracking_id: null,
  group_updated_at: null,
  metadata: null
)
```

