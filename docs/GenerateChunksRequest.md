# TrieveRubyClient::GenerateChunksRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chunk_ids** | **Array&lt;String&gt;** | The ids of the chunks to be retrieved and injected into the context window for RAG. |  |
| **frequency_penalty** | **Float** | Frequency penalty is a number between -2.0 and 2.0. Positive values penalize new tokens based on their existing frequency in the text so far, decreasing the model&#39;s likelihood to repeat the same line verbatim. Default is 0.7. | [optional] |
| **highlight_results** | **Boolean** | Set highlight_results to false for a slight latency improvement (1-10ms). If not specified, this defaults to true. This will add &#x60;&lt;b&gt;&lt;mark&gt;&#x60;&#x60; tags to the chunk_html of the chunks to highlight matching splits. | [optional] |
| **max_tokens** | **Integer** | The maximum number of tokens to generate in the chat completion. Default is None. | [optional] |
| **presence_penalty** | **Float** | Presence penalty is a number between -2.0 and 2.0. Positive values penalize new tokens based on whether they appear in the text so far, increasing the model&#39;s likelihood to talk about new topics. Default is 0.7. | [optional] |
| **prev_messages** | [**Array&lt;ChatMessageProxy&gt;**](ChatMessageProxy.md) | The previous messages to be placed into the chat history. The last message in this array will be the prompt for the model to inference on. The length of this array must be at least 1. |  |
| **prompt** | **String** | Prompt for the last message in the prev_messages array. This will be used to generate the next message in the chat. The default is &#39;Respond to the instruction and include the doc numbers that you used in square brackets at the end of the sentences that you used the docs for:&#39;. You can also specify an empty string to leave the final message alone such that your user&#39;s final message can be used as the prompt. See docs.trieve.ai or contact us for more information. | [optional] |
| **stop_tokens** | **Array&lt;String&gt;** | Stop tokens are up to 4 sequences where the API will stop generating further tokens. Default is None. | [optional] |
| **stream_response** | **Boolean** | Whether or not to stream the response. If this is set to true or not included, the response will be a stream. If this is set to false, the response will be a normal JSON response. Default is true. | [optional] |
| **temperature** | **Float** | What sampling temperature to use, between 0 and 2. Higher values like 0.8 will make the output more random, while lower values like 0.2 will make it more focused and deterministic. Default is 0.5. | [optional] |

## Example

```ruby
require 'trieve_ruby_client'

instance = TrieveRubyClient::GenerateChunksRequest.new(
  chunk_ids: null,
  frequency_penalty: null,
  highlight_results: null,
  max_tokens: null,
  presence_penalty: null,
  prev_messages: null,
  prompt: null,
  stop_tokens: null,
  stream_response: null,
  temperature: null
)
```

