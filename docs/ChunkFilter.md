# TrieveRubyClient::ChunkFilter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **must** | [**Array&lt;FieldCondition&gt;**](FieldCondition.md) | All of these field conditions have to match for the chunk to be included in the result set. | [optional] |
| **must_not** | [**Array&lt;FieldCondition&gt;**](FieldCondition.md) | None of these field conditions can match for the chunk to be included in the result set. | [optional] |
| **should** | [**Array&lt;FieldCondition&gt;**](FieldCondition.md) | Only one of these field conditions has to match for the chunk to be included in the result set. | [optional] |

## Example

```ruby
require 'trieve_ruby_client'

instance = TrieveRubyClient::ChunkFilter.new(
  must: null,
  must_not: null,
  should: null
)
```

