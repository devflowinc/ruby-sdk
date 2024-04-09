# TrieveRubyClient::CreateChunkGroupData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | Description to assign to the chunk_group. Convenience field for you to avoid having to remember what the group is for. |  |
| **metadata** | **Object** | Optional metadata to assign to the chunk_group. This is a JSON object that can store any additional information you want to associate with the chunks inside of the chunk_group. | [optional] |
| **name** | **String** | Name to assign to the chunk_group. Does not need to be unique. |  |
| **tag_set** | **Array&lt;String&gt;** | Optional tags to assign to the chunk_group. This is a list of strings that can be used to categorize the chunks inside the chunk_group. | [optional] |
| **tracking_id** | **String** | Optional tracking id to assign to the chunk_group. This is a unique identifier for the chunk_group. | [optional] |

## Example

```ruby
require 'trieve_ruby_client'

instance = TrieveRubyClient::CreateChunkGroupData.new(
  description: null,
  metadata: null,
  name: null,
  tag_set: null,
  tracking_id: null
)
```

