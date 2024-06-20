# TrieveRubyClient::CreateMessageReqPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **completion_first** | **Boolean** | Completion first decides whether the stream should contain the stream of the completion response or the chunks first. Default is false. Keep in mind that || is used to separate the chunks from the completion response. If || is in the completion then you may want to split on ||{ instead. | [optional] |
| **filters** | [**ChunkFilter**](ChunkFilter.md) |  | [optional] |
| **frequency_penalty** | **Float** | Frequency penalty is a number between -2.0 and 2.0. Positive values penalize new tokens based on their existing frequency in the text so far, decreasing the model&#39;s likelihood to repeat the same line verbatim. Default is 0.7. | [optional] |
| **highlight_delimiters** | **Array&lt;String&gt;** | The delimiters to use for highlighting the citations. If this is not included, the default delimiters will be used. Default is &#x60;[\&quot;.\&quot;, \&quot;!\&quot;, \&quot;?\&quot;, \&quot;\\n\&quot;, \&quot;\\t\&quot;, \&quot;,\&quot;]&#x60;. | [optional] |
| **highlight_results** | **Boolean** | Set highlight_results to false for a slight latency improvement (1-10ms). If not specified, this defaults to true. This will add &#x60;&lt;b&gt;&lt;mark&gt;&#x60; tags to the chunk_html of the chunks to highlight matching splits and return the highlights on each scored chunk in the response. | [optional] |
| **max_tokens** | **Integer** | The maximum number of tokens to generate in the chat completion. Default is None. | [optional] |
| **new_message_content** | **String** | The content of the user message to attach to the topic and then generate an assistant message in response to. |  |
| **presence_penalty** | **Float** | Presence penalty is a number between -2.0 and 2.0. Positive values penalize new tokens based on whether they appear in the text so far, increasing the model&#39;s likelihood to talk about new topics. Default is 0.7. | [optional] |
| **search_type** | **String** | Search_type can be either \&quot;semantic\&quot;, \&quot;fulltext\&quot;, or \&quot;hybrid\&quot;. \&quot;hybrid\&quot; will pull in one page (10 chunks) of both semantic and full-text results then re-rank them using BAAI/bge-reranker-large. \&quot;semantic\&quot; will pull in one page (10 chunks) of the nearest cosine distant vectors. \&quot;fulltext\&quot; will pull in one page (10 chunks) of full-text results based on SPLADE. Default is \&quot;hybrid\&quot;. | [optional] |
| **stop_tokens** | **Array&lt;String&gt;** | Stop tokens are up to 4 sequences where the API will stop generating further tokens. Default is None. | [optional] |
| **stream_response** | **Boolean** | Whether or not to stream the response. If this is set to true or not included, the response will be a stream. If this is set to false, the response will be a normal JSON response. Default is true. | [optional] |
| **temperature** | **Float** | What sampling temperature to use, between 0 and 2. Higher values like 0.8 will make the output more random, while lower values like 0.2 will make it more focused and deterministic. Default is 0.5. | [optional] |
| **topic_id** | **String** | The ID of the topic to attach the message to. |  |

## Example

```ruby
require 'trieve_ruby_client'

instance = TrieveRubyClient::CreateMessageReqPayload.new(
  completion_first: null,
  filters: null,
  frequency_penalty: null,
  highlight_delimiters: null,
  highlight_results: null,
  max_tokens: null,
  new_message_content: null,
  presence_penalty: null,
  search_type: null,
  stop_tokens: null,
  stream_response: null,
  temperature: null,
  topic_id: null
)
```

