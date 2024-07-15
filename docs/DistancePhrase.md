# TrieveRubyClient::DistancePhrase

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **distance_factor** | **Float** | Amount to multiplicatevly increase the frequency of the tokens in the phrase by |  |
| **phrase** | **String** | The phrase to boost in the fulltext document frequency index |  |

## Example

```ruby
require 'trieve_ruby_client'

instance = TrieveRubyClient::DistancePhrase.new(
  distance_factor: null,
  phrase: null
)
```

