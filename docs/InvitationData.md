# OpenapiClient::InvitationData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_url** | **String** | The url of the app that the user will be directed to in order to set their password. Usually admin.trieve.ai, but may differ for local dev or self-hosted setups. |  |
| **email** | **String** | The email of the user to invite. Must be a valid email as they will be sent an email to register. |  |
| **organization_id** | **String** | The id of the organization to invite the user to. |  |
| **redirect_uri** | **String** | The url that the user will be redirected to after setting their password. |  |
| **user_role** | **Integer** | The role the user will have in the organization. 0 &#x3D; User, 1 &#x3D; Admin, 2 &#x3D; Owner. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::InvitationData.new(
  app_url: null,
  email: null,
  organization_id: null,
  redirect_uri: null,
  user_role: null
)
```

