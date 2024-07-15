# TrieveRubyClient::CreateMessageReqPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **completion_first** | **Boolean** | Completion first decides whether the stream should contain the stream of the completion response or the chunks first. Default is false. Keep in mind that || is used to separate the chunks from the completion response. If || is in the completion then you may want to split on ||{ instead. | [optional] |
| **concat_user_messages_query** | **Boolean** | If concat user messages query is set to true, all of the user messages in the topic will be concatenated together and used as the search query. If not specified, this defaults to false. Default is false. | [optional] |
| **filters** | [**ChunkFilter**](ChunkFilter.md) |  | [optional] |
| **frequency_penalty** | **Float** | Frequency penalty is a number between -2.0 and 2.0. Positive values penalize new tokens based on their existing frequency in the text so far, decreasing the model&#39;s likelihood to repeat the same line verbatim. Default is 0.7. | [optional] |
| **highlight_delimiters** | **Array&lt;String&gt;** | The delimiters to use for highlighting the citations. If this is not included, the default delimiters will be used. Default is &#x60;[\&quot;.\&quot;, \&quot;!\&quot;, \&quot;?\&quot;, \&quot;\\n\&quot;, \&quot;\\t\&quot;, \&quot;,\&quot;]&#x60;. | [optional] |
| **highlight_results** | **Boolean** | Set highlight_results to false for a slight latency improvement (1-10ms). If not specified, this defaults to true. This will add &#x60;&lt;b&gt;&lt;mark&gt;&#x60; tags to the chunk_html of the chunks to highlight matching splits and return the highlights on each scored chunk in the response. | [optional] |
| **max_tokens** | **Integer** | The maximum number of tokens to generate in the chat completion. Default is None. | [optional] |
| **new_message_content** | **String** | The content of the user message to attach to the topic and then generate an assistant message in response to. |  |
| **page_size** | **Integer** | Page size is the number of chunks to fetch during RAG. If 0, then no search will be performed. If specified, this will override the N retrievals to include in the dataset configuration. Default is None. | [optional] |
| **presence_penalty** | **Float** | Presence penalty is a number between -2.0 and 2.0. Positive values penalize new tokens based on whether they appear in the text so far, increasing the model&#39;s likelihood to talk about new topics. Default is 0.7. | [optional] |
| **score_threshold** | **Float** | Set score_threshold to a float to filter out chunks with a score below the threshold. This threshold applies before weight and bias modifications. If not specified, this defaults to 0.0. | [optional] |
| **search_query** | **String** | Query is the search query. This can be any string. The search_query will be used to create a dense embedding vector and/or sparse vector which will be used to find the result set. If not specified, will default to the last user message or HyDE if HyDE is enabled in the dataset configuration. Default is None. | [optional] |
| **search_type** | [**SearchMethod**](SearchMethod.md) |  | [optional] |
| **stop_tokens** | **Array&lt;String&gt;** | Stop tokens are up to 4 sequences where the API will stop generating further tokens. Default is None. | [optional] |
| **stream_response** | **Boolean** | Whether or not to stream the response. If this is set to true or not included, the response will be a stream. If this is set to false, the response will be a normal JSON response. Default is true. | [optional] |
| **system_prompt** | **String** | Optionally, override the system prompt in dataset server settings. | [optional] |
| **temperature** | **Float** | What sampling temperature to use, between 0 and 2. Higher values like 0.8 will make the output more random, while lower values like 0.2 will make it more focused and deterministic. Default is 0.5. | [optional] |
| **topic_id** | **String** | The ID of the topic to attach the message to. |  |

## Example

```ruby
require 'trieve_ruby_client'

instance = TrieveRubyClient::CreateMessageReqPayload.new(
  completion_first: null,
  concat_user_messages_query: null,
  filters: null,
  frequency_penalty: null,
  highlight_delimiters: null,
  highlight_results: null,
  max_tokens: null,
  new_message_content: null,
  page_size: null,
  presence_penalty: null,
  score_threshold: null,
  search_query: null,
  search_type: null,
  stop_tokens: null,
  stream_response: null,
  system_prompt: null,
  temperature: null,
  topic_id: null
)
```

