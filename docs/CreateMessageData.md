# TrieveRubyClient::CreateMessageData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **highlight_delimiters** | **Array&lt;String&gt;** | The delimiters to use for highlighting the citations. If this is not included, the default delimiters will be used. Default is &#x60;[\&quot;.\&quot;, \&quot;!\&quot;, \&quot;?\&quot;, \&quot;\\n\&quot;, \&quot;\\t\&quot;, \&quot;,\&quot;]&#x60;. | [optional] |
| **highlight_results** | **Boolean** | Set highlight_results to false for a slight latency improvement (1-10ms). If not specified, this defaults to true. This will add &#x60;&lt;b&gt;&lt;mark&gt;&#x60; tags to the chunk_html of the chunks to highlight matching sub-sentences. | [optional] |
| **new_message_content** | **String** | The content of the user message to attach to the topic and then generate an assistant message in response to. |  |
| **stream_response** | **Boolean** | Whether or not to stream the response. If this is set to true or not included, the response will be a stream. If this is set to false, the response will be a normal JSON response. Default is true. | [optional] |
| **topic_id** | **String** | The ID of the topic to attach the message to. |  |

## Example

```ruby
require 'trieve_ruby_client'

instance = TrieveRubyClient::CreateMessageData.new(
  highlight_delimiters: null,
  highlight_results: null,
  new_message_content: null,
  stream_response: null,
  topic_id: null
)
```

