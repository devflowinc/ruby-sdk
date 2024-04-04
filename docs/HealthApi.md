# TrieveRubyClient::HealthApi

All URIs are relative to *https://api.trieve.ai*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**health_check**](HealthApi.md#health_check) | **GET** /api/health | Health Check |


## health_check

> health_check

Health Check

Health Check  Confirmation that the service is healthy and can make embedding vectors

### Examples

```ruby
require 'time'
require 'trieve_ruby_client'

api_instance = TrieveRubyClient::HealthApi.new

begin
  # Health Check
  api_instance.health_check
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling HealthApi->health_check: #{e}"
end
```

#### Using the health_check_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> health_check_with_http_info

```ruby
begin
  # Health Check
  data, status_code, headers = api_instance.health_check_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling HealthApi->health_check_with_http_info: #{e}"
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
- **Accept**: application/json

