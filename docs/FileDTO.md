# TrieveRubyClient::FileDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_at** | **Time** |  |  |
| **file_name** | **String** |  |  |
| **id** | **String** |  |  |
| **link** | **String** |  | [optional] |
| **metadata** | **Object** |  | [optional] |
| **s3_url** | **String** |  |  |
| **size** | **Integer** |  |  |
| **updated_at** | **Time** |  |  |

## Example

```ruby
require 'trieve_ruby_client'

instance = TrieveRubyClient::FileDTO.new(
  created_at: null,
  file_name: null,
  id: null,
  link: null,
  metadata: null,
  s3_url: null,
  size: null,
  updated_at: null
)
```

