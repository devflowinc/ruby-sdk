# TrieveRubyClient::CreateTopicReqPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **first_user_message** | **String** | The first message which will belong to the topic. The topic name is generated based on this message similar to how it works in the OpenAI chat UX if a name is not explicitly provided on the name request body key. | [optional] |
| **name** | **String** | The name of the topic. If this is not provided, the topic name is generated from the first_user_message. | [optional] |
| **owner_id** | **String** | The owner_id of the topic. This is typically a browser fingerprint or your user&#39;s id. It is used to group topics together for a user. |  |

## Example

```ruby
require 'trieve_ruby_client'

instance = TrieveRubyClient::CreateTopicReqPayload.new(
  first_user_message: null,
  name: null,
  owner_id: null
)
```

