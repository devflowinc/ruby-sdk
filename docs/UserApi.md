# TrieveRubyClient::UserApi

All URIs are relative to *http://localhost:8090*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_user_api_key**](UserApi.md#delete_user_api_key) | **DELETE** /api/user/delete_api_key | Delete User Api Key |
| [**set_user_api_key**](UserApi.md#set_user_api_key) | **POST** /api/user/set_api_key | Set User Api Key |
| [**update_user**](UserApi.md#update_user) | **PUT** /api/user | Update User |


## delete_user_api_key

> <Array<ApiKeyDTO>> delete_user_api_key(delete_user_api_key_request)

Delete User Api Key

Delete User Api Key  Delete an api key for the auth'ed user.

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

api_instance = TrieveRubyClient::UserApi.new
delete_user_api_key_request = TrieveRubyClient::DeleteUserApiKeyRequest.new({api_key_id: 'api_key_id_example'}) # DeleteUserApiKeyRequest | JSON request payload to delete a user api key

begin
  # Delete User Api Key
  result = api_instance.delete_user_api_key(delete_user_api_key_request)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling UserApi->delete_user_api_key: #{e}"
end
```

#### Using the delete_user_api_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ApiKeyDTO>>, Integer, Hash)> delete_user_api_key_with_http_info(delete_user_api_key_request)

```ruby
begin
  # Delete User Api Key
  data, status_code, headers = api_instance.delete_user_api_key_with_http_info(delete_user_api_key_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ApiKeyDTO>>
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling UserApi->delete_user_api_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **delete_user_api_key_request** | [**DeleteUserApiKeyRequest**](DeleteUserApiKeyRequest.md) | JSON request payload to delete a user api key |  |

### Return type

[**Array&lt;ApiKeyDTO&gt;**](ApiKeyDTO.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_user_api_key

> <SetUserApiKeyResponse> set_user_api_key(set_user_api_key_request)

Set User Api Key

Set User Api Key  Create a new api key for the auth'ed user. Successful response will contain the newly created api key. If a write role is assigned the api key will have permission level of the auth'ed user who calls this endpoint.

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

api_instance = TrieveRubyClient::UserApi.new
set_user_api_key_request = TrieveRubyClient::SetUserApiKeyRequest.new({name: 'name_example', role: 37}) # SetUserApiKeyRequest | JSON request payload to create a new user api key

begin
  # Set User Api Key
  result = api_instance.set_user_api_key(set_user_api_key_request)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling UserApi->set_user_api_key: #{e}"
end
```

#### Using the set_user_api_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SetUserApiKeyResponse>, Integer, Hash)> set_user_api_key_with_http_info(set_user_api_key_request)

```ruby
begin
  # Set User Api Key
  data, status_code, headers = api_instance.set_user_api_key_with_http_info(set_user_api_key_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SetUserApiKeyResponse>
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling UserApi->set_user_api_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **set_user_api_key_request** | [**SetUserApiKeyRequest**](SetUserApiKeyRequest.md) | JSON request payload to create a new user api key |  |

### Return type

[**SetUserApiKeyResponse**](SetUserApiKeyResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_user

> <SlimUser> update_user(update_user_data)

Update User

Update User  Update a user's information. If the user_id is not provided, the auth'ed user will be updated. If the user_id is provided, the auth'ed user must be an admin (1) or owner (2) of the organization.

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

api_instance = TrieveRubyClient::UserApi.new
update_user_data = TrieveRubyClient::UpdateUserData.new({organization_id: 'organization_id_example'}) # UpdateUserData | JSON request payload to update user information for the auth'ed user

begin
  # Update User
  result = api_instance.update_user(update_user_data)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling UserApi->update_user: #{e}"
end
```

#### Using the update_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SlimUser>, Integer, Hash)> update_user_with_http_info(update_user_data)

```ruby
begin
  # Update User
  data, status_code, headers = api_instance.update_user_with_http_info(update_user_data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SlimUser>
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling UserApi->update_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_user_data** | [**UpdateUserData**](UpdateUserData.md) | JSON request payload to update user information for the auth&#39;ed user |  |

### Return type

[**SlimUser**](SlimUser.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

