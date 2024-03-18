# TrieveRubyClient::StripeSubscription

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_at** | **Time** |  |  |
| **current_period_end** | **Time** |  | [optional] |
| **id** | **String** |  |  |
| **organization_id** | **String** |  |  |
| **plan_id** | **String** |  |  |
| **stripe_id** | **String** |  |  |
| **updated_at** | **Time** |  |  |

## Example

```ruby
require 'trieve_ruby_client'

instance = TrieveRubyClient::StripeSubscription.new(
  created_at: null,
  current_period_end: null,
  id: null,
  organization_id: null,
  plan_id: null,
  stripe_id: null,
  updated_at: null
)
```

