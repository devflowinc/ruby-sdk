# OpenapiClient::InvitationApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**post_invitation**](InvitationApi.md#post_invitation) | **POST** /api/invitation | send_invitation |


## post_invitation

> post_invitation(tr_organization, invitation_data)

send_invitation

send_invitation  Invitations act as a way to invite users to join an organization. After a user is invited, they will automatically be added to the organization with the role specified in the invitation once they set their.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: Cookie
  config.api_key['Cookie'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Cookie'] = 'Bearer'

  # Configure API key authorization: ApiKey
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'
end

api_instance = OpenapiClient::InvitationApi.new
tr_organization = 'tr_organization_example' # String | The organization id to use for the request
invitation_data = OpenapiClient::InvitationData.new({app_url: 'app_url_example', email: 'email_example', organization_id: 'organization_id_example', redirect_uri: 'redirect_uri_example', user_role: 37}) # InvitationData | JSON request payload to send an invitation

begin
  # send_invitation
  api_instance.post_invitation(tr_organization, invitation_data)
rescue OpenapiClient::ApiError => e
  puts "Error when calling InvitationApi->post_invitation: #{e}"
end
```

#### Using the post_invitation_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> post_invitation_with_http_info(tr_organization, invitation_data)

```ruby
begin
  # send_invitation
  data, status_code, headers = api_instance.post_invitation_with_http_info(tr_organization, invitation_data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling InvitationApi->post_invitation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_organization** | **String** | The organization id to use for the request |  |
| **invitation_data** | [**InvitationData**](InvitationData.md) | JSON request payload to send an invitation |  |

### Return type

nil (empty response body)

### Authorization

[Cookie](../README.md#Cookie), [ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

