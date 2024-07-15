# TrieveRubyClient::ChunkFilter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **jsonb_prefilter** | **Boolean** | JOSNB prefilter tells the server to perform a full scan over the metadata JSONB column instead of using the filtered HNSW. Datasets on the enterprise plan with custom metadata indices will perform better with the filtered HNSW instead. When false, the server will use the filtered HNSW index to filter chunks. When true, the server will perform a full scan over the metadata JSONB column to filter chunks. Default is true. | [optional] |
| **must** | [**Array&lt;ConditionType&gt;**](ConditionType.md) | All of these field conditions have to match for the chunk to be included in the result set. | [optional] |
| **must_not** | [**Array&lt;ConditionType&gt;**](ConditionType.md) | None of these field conditions can match for the chunk to be included in the result set. | [optional] |
| **should** | [**Array&lt;ConditionType&gt;**](ConditionType.md) | Only one of these field conditions has to match for the chunk to be included in the result set. | [optional] |

## Example

```ruby
require 'trieve_ruby_client'

instance = TrieveRubyClient::ChunkFilter.new(
  jsonb_prefilter: null,
  must: null,
  must_not: null,
  should: null
)
```

