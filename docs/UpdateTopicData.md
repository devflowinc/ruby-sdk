# TrieveRubyClient::UpdateTopicData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The new name of the topic. A name is not generated from this field, it is used as-is. |  |
| **topic_id** | **String** | The id of the topic to target. |  |

## Example

```ruby
require 'trieve_ruby_client'

instance = TrieveRubyClient::UpdateTopicData.new(
  name: null,
  topic_id: null
)
```

