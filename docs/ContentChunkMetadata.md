# TrieveRubyClient::ContentChunkMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chunk_html** | **String** |  | [optional] |
| **id** | **String** |  |  |
| **image_urls** | **Array&lt;String&gt;** |  | [optional] |
| **qdrant_point_id** | **String** |  | [optional] |
| **time_stamp** | **Time** |  | [optional] |
| **tracking_id** | **String** |  | [optional] |
| **weight** | **Float** |  |  |

## Example

```ruby
require 'trieve_ruby_client'

instance = TrieveRubyClient::ContentChunkMetadata.new(
  chunk_html: null,
  id: null,
  image_urls: null,
  qdrant_point_id: null,
  time_stamp: null,
  tracking_id: null,
  weight: null
)
```

