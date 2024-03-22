# TrieveRubyClient::AuthQuery

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **inv_code** | **String** | Code sent via email as a result of successful call to send_invitation | [optional] |
| **organization_id** | **String** | ID of organization to authenticate into | [optional] |
| **redirect_uri** | **String** | URL to redirect to after successful login | [optional] |

## Example

```ruby
require 'trieve_ruby_client'

instance = TrieveRubyClient::AuthQuery.new(
  inv_code: null,
  organization_id: null,
  redirect_uri: null
)
```

