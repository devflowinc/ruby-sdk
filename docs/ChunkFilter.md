# TrieveRubyClient::ChunkFilter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **must** | [**Array&lt;ConditionType&gt;**](ConditionType.md) | All of these field conditions have to match for the chunk to be included in the result set. | [optional] |
| **must_not** | [**Array&lt;ConditionType&gt;**](ConditionType.md) | None of these field conditions can match for the chunk to be included in the result set. | [optional] |
| **should** | [**Array&lt;ConditionType&gt;**](ConditionType.md) | Only one of these field conditions has to match for the chunk to be included in the result set. | [optional] |

## Example

```ruby
require 'trieve_ruby_client'

instance = TrieveRubyClient::ChunkFilter.new(
  must: null,
  must_not: null,
  should: null
)
```

