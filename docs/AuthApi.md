# TrieveRubyClient::AuthApi

All URIs are relative to *http://localhost:8090*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**callback**](AuthApi.md#callback) | **GET** /api/auth/callback | OpenID Connect callback |
| [**get_me**](AuthApi.md#get_me) | **GET** /api/auth/me | Get Me |
| [**login**](AuthApi.md#login) | **GET** /api/auth | Login |
| [**logout**](AuthApi.md#logout) | **DELETE** /api/auth | Logout |


## callback

> <SlimUser> callback

OpenID Connect callback

OpenID Connect callback  This is the callback route for the OAuth provider, it should not be called directly. Redirects to browser with set-cookie header.

### Examples

```ruby
require 'time'
require 'trieve_ruby_client'

api_instance = TrieveRubyClient::AuthApi.new

begin
  # OpenID Connect callback
  result = api_instance.callback
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling AuthApi->callback: #{e}"
end
```

#### Using the callback_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SlimUser>, Integer, Hash)> callback_with_http_info

```ruby
begin
  # OpenID Connect callback
  data, status_code, headers = api_instance.callback_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SlimUser>
rescue TrieveRubyClient::ApiError => e
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

Get Me

Get Me  Get the user corresponding to your current auth credentials.

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

api_instance = TrieveRubyClient::AuthApi.new

begin
  # Get Me
  result = api_instance.get_me
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling AuthApi->get_me: #{e}"
end
```

#### Using the get_me_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SlimUser>, Integer, Hash)> get_me_with_http_info

```ruby
begin
  # Get Me
  data, status_code, headers = api_instance.get_me_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SlimUser>
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling AuthApi->get_me_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**SlimUser**](SlimUser.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## login

> login(content)

Login

Login  This will redirect you to the OAuth provider for authentication with email/pass, SSO, Google, Github, etc.

### Examples

```ruby
require 'time'
require 'trieve_ruby_client'

api_instance = TrieveRubyClient::AuthApi.new
content = TrieveRubyClient::AuthQuery.new # AuthQuery | Query parameters for login to be included as kv pairs after ? on the request URL.

begin
  # Login
  api_instance.login(content)
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling AuthApi->login: #{e}"
end
```

#### Using the login_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> login_with_http_info(content)

```ruby
begin
  # Login
  data, status_code, headers = api_instance.login_with_http_info(content)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling AuthApi->login_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **content** | [**AuthQuery**](.md) | Query parameters for login to be included as kv pairs after ? on the request URL. |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## logout

> logout

Logout

Logout  Invalidate your current auth credential stored typically stored in a cookie. This does not invalidate your API key.

### Examples

```ruby
require 'time'
require 'trieve_ruby_client'

api_instance = TrieveRubyClient::AuthApi.new

begin
  # Logout
  api_instance.logout
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling AuthApi->logout: #{e}"
end
```

#### Using the logout_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> logout_with_http_info

```ruby
begin
  # Logout
  data, status_code, headers = api_instance.logout_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue TrieveRubyClient::ApiError => e
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

