# OpenapiClient::SearchGroupsResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bookmarks** | [**Array&lt;ScoreChunkDTO&gt;**](ScoreChunkDTO.md) |  |  |
| **group** | [**ChunkGroup**](ChunkGroup.md) |  |  |
| **total_pages** | **Integer** |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SearchGroupsResult.new(
  bookmarks: null,
  group: null,
  total_pages: null
)
```

