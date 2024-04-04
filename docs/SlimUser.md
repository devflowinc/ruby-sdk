# TrieveRubyClient::SlimUser

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** |  |  |
| **id** | **String** |  |  |
| **name** | **String** |  | [optional] |
| **orgs** | [**Array&lt;Organization&gt;**](Organization.md) |  |  |
| **user_orgs** | [**Array&lt;UserOrganization&gt;**](UserOrganization.md) |  |  |

## Example

```ruby
require 'trieve_ruby_client'

instance = TrieveRubyClient::SlimUser.new(
  email: null,
  id: null,
  name: null,
  orgs: null,
  user_orgs: null
)
```

