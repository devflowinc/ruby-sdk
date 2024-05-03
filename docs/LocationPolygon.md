# TrieveRubyClient::LocationPolygon

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **exterior** | [**Array&lt;GeoInfo&gt;**](GeoInfo.md) |  |  |
| **interior** | **Array&lt;Array&lt;GeoInfo&gt;&gt;** |  | [optional] |

## Example

```ruby
require 'trieve_ruby_client'

instance = TrieveRubyClient::LocationPolygon.new(
  exterior: null,
  interior: null
)
```

