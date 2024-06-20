# TrieveRubyClient::ChunkMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chunk_html** | **String** |  | [optional] |
| **created_at** | **Time** |  |  |
| **dataset_id** | **String** |  |  |
| **id** | **String** |  |  |
| **image_urls** | **Array&lt;String&gt;** |  | [optional] |
| **link** | **String** |  | [optional] |
| **location** | [**GeoInfo**](GeoInfo.md) |  | [optional] |
| **metadata** | **Object** |  | [optional] |
| **num_value** | **Float** |  | [optional] |
| **qdrant_point_id** | **String** |  | [optional] |
| **tag_set** | **Array&lt;String&gt;** |  | [optional] |
| **time_stamp** | **Time** |  | [optional] |
| **tracking_id** | **String** |  | [optional] |
| **updated_at** | **Time** |  |  |
| **weight** | **Float** |  |  |

## Example

```ruby
require 'trieve_ruby_client'

instance = TrieveRubyClient::ChunkMetadata.new(
  chunk_html: null,
  created_at: null,
  dataset_id: null,
  id: null,
  image_urls: null,
  link: null,
  location: null,
  metadata: null,
  num_value: null,
  qdrant_point_id: null,
  tag_set: null,
  time_stamp: null,
  tracking_id: null,
  updated_at: null,
  weight: null
)
```

