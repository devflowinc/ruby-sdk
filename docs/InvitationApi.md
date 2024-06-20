# TrieveRubyClient::InvitationApi

All URIs are relative to *https://api.trieve.ai*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**post_invitation**](InvitationApi.md#post_invitation) | **POST** /api/invitation | Send Invitation |


## post_invitation

> post_invitation(tr_organization, invitation_data)

Send Invitation

Send Invitation  Invitations act as a way to invite users to join an organization. After a user is invited, they will automatically be added to the organization with the role specified in the invitation once they set their. Auth'ed user or api key must have an admin or owner role for the specified dataset's organization.

### Examples

```ruby
require 'time'
require 'trieve_ruby_client'
# setup authorization
TrieveRubyClient.configure do |config|
  # Configure API key authorization: ApiKey
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'
end

api_instance = TrieveRubyClient::InvitationApi.new
tr_organization = 'tr_organization_example' # String | The organization id to use for the request
invitation_data = TrieveRubyClient::InvitationData.new({app_url: 'app_url_example', email: 'email_example', organization_id: 'organization_id_example', redirect_uri: 'redirect_uri_example', user_role: 37}) # InvitationData | JSON request payload to send an invitation

begin
  # Send Invitation
  api_instance.post_invitation(tr_organization, invitation_data)
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling InvitationApi->post_invitation: #{e}"
end
```

#### Using the post_invitation_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> post_invitation_with_http_info(tr_organization, invitation_data)

```ruby
begin
  # Send Invitation
  data, status_code, headers = api_instance.post_invitation_with_http_info(tr_organization, invitation_data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue TrieveRubyClient::ApiError => e
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

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

