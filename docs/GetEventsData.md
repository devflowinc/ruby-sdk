# TrieveRubyClient::GetEventsData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_types** | **Array&lt;String&gt;** | The type of events to get. Any combination of file_uploaded, card_uploaded, card_action_failed, or card_updated. Leave undefined to get all events. | [optional] |
| **page** | **Integer** | The page number to get. Default is 1. | [optional] |
| **page_size** | **Integer** | The number of items per page. Default is 10. | [optional] |

## Example

```ruby
require 'trieve_ruby_client'

instance = TrieveRubyClient::GetEventsData.new(
  event_types: null,
  page: null,
  page_size: null
)
```

