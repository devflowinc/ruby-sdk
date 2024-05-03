# TrieveRubyClient::EditMessageData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **highlight_citations** | **Boolean** | Whether or not to highlight the citations in the response. If this is set to true or not included, the citations will be highlighted. If this is set to false, the citations will not be highlighted. Default is true. | [optional] |
| **highlight_delimiters** | **Array&lt;String&gt;** | The delimiters to use for highlighting the citations. If this is not included, the default delimiters will be used. Default is &#x60;[\&quot;.\&quot;, \&quot;!\&quot;, \&quot;?\&quot;, \&quot;\\n\&quot;, \&quot;\\t\&quot;, \&quot;,\&quot;]&#x60;. | [optional] |
| **message_sort_order** | **Integer** | The sort order of the message to edit. |  |
| **new_message_content** | **String** | The new content of the message to replace the old content with. |  |
| **stream_response** | **Boolean** | Whether or not to stream the response. If this is set to true or not included, the response will be a stream. If this is set to false, the response will be a normal JSON response. Default is true. | [optional] |
| **topic_id** | **String** | The id of the topic to edit the message at the given sort order for. |  |

## Example

```ruby
require 'trieve_ruby_client'

instance = TrieveRubyClient::EditMessageData.new(
  highlight_citations: null,
  highlight_delimiters: null,
  message_sort_order: null,
  new_message_content: null,
  stream_response: null,
  topic_id: null
)
```

