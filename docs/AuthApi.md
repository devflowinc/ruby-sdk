# OpenapiClient::AuthApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**callback**](AuthApi.md#callback) | **GET** /api/auth/callback | openid_callback |
| [**get_me**](AuthApi.md#get_me) | **GET** /api/auth/me | get_me |
| [**login**](AuthApi.md#login) | **GET** /api/auth | login |
| [**logout**](AuthApi.md#logout) | **DELETE** /api/auth | logout |


## callback

> <SlimUser> callback

openid_callback

openid_callback  This is the callback route for the OAuth provider, it should not be called directly. Redirects to browser with set-cookie header.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::AuthApi.new

begin
  # openid_callback
  result = api_instance.callback
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AuthApi->callback: #{e}"
end
```

#### Using the callback_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SlimUser>, Integer, Hash)> callback_with_http_info

```ruby
begin
  # openid_callback
  data, status_code, headers = api_instance.callback_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SlimUser>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AuthApi->callback_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**SlimUser**](SlimUser.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_me

> <SlimUser> get_me

get_me

get_me  Get the user corresponding to your current auth credentials.

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

api_instance = OpenapiClient::AuthApi.new

begin
  # get_me
  result = api_instance.get_me
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AuthApi->get_me: #{e}"
end
```

#### Using the get_me_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SlimUser>, Integer, Hash)> get_me_with_http_info

```ruby
begin
  # get_me
  data, status_code, headers = api_instance.get_me_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SlimUser>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AuthApi->get_me_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**SlimUser**](SlimUser.md)

### Authorization

[Cookie](../README.md#Cookie), [ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## login

> login(opts)

login

login  This will redirect you to the OAuth provider for authentication with email/pass, SSO, Google, Github, etc.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::AuthApi.new
opts = {
  inv_code: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | Code sent via email as a result of successful call to send_invitation
  organization_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | ID of organization to authenticate into
  redirect_uri: 'redirect_uri_example' # String | URL to redirect to after successful login
}

begin
  # login
  api_instance.login(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling AuthApi->login: #{e}"
end
```

#### Using the login_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> login_with_http_info(opts)

```ruby
begin
  # login
  data, status_code, headers = api_instance.login_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling AuthApi->login_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **inv_code** | **String** | Code sent via email as a result of successful call to send_invitation | [optional] |
| **organization_id** | **String** | ID of organization to authenticate into | [optional] |
| **redirect_uri** | **String** | URL to redirect to after successful login | [optional] |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## logout

> logout

logout

logout  Invalidate your current auth credential stored typically stored in a cookie. This does not invalidate your API key.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::AuthApi.new

begin
  # logout
  api_instance.logout
rescue OpenapiClient::ApiError => e
  puts "Error when calling AuthApi->logout: #{e}"
end
```

#### Using the logout_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> logout_with_http_info

```ruby
begin
  # logout
  data, status_code, headers = api_instance.logout_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling AuthApi->logout_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

