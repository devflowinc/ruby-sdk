# TrieveRubyClient::RagQueryEvent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_at** | **String** |  |  |
| **dataset_id** | **String** |  |  |
| **id** | **String** |  |  |
| **rag_type** | **String** |  |  |
| **results** | [**Array&lt;ChunkMetadataStringTagSet&gt;**](ChunkMetadataStringTagSet.md) |  |  |
| **search_id** | **String** |  |  |
| **user_message** | **String** |  |  |

## Example

```ruby
require 'trieve_ruby_client'

instance = TrieveRubyClient::RagQueryEvent.new(
  created_at: null,
  dataset_id: null,
  id: null,
  rag_type: null,
  results: null,
  search_id: null,
  user_message: null
)
```

