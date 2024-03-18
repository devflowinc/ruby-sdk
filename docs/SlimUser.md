# OpenapiClient::SlimUser

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** |  |  |
| **id** | **String** |  |  |
| **name** | **String** |  | [optional] |
| **orgs** | [**Array&lt;Organization&gt;**](Organization.md) |  |  |
| **user_orgs** | [**Array&lt;UserOrganization&gt;**](UserOrganization.md) |  |  |
| **username** | **String** |  | [optional] |
| **visible_email** | **Boolean** |  |  |
| **website** | **String** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SlimUser.new(
  email: null,
  id: null,
  name: null,
  orgs: null,
  user_orgs: null,
  username: null,
  visible_email: null,
  website: null
)
```

