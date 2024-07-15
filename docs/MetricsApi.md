# TrieveRubyClient::MetricsApi

All URIs are relative to *https://api.trieve.ai*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_metrics**](MetricsApi.md#get_metrics) | **POST** /metrics | Get Prometheus Metrics |


## get_metrics

> String get_metrics

Get Prometheus Metrics

This route allows you to view the number of items in each queue in the Prometheus format.

### Examples

```ruby
require 'time'
require 'trieve_ruby_client'
# setup authorization
TrieveRubyClient.configure do |config|
  # Configure API key authorization: X-API-KEY
  config.api_key['X-API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-KEY'] = 'Bearer'
end

api_instance = TrieveRubyClient::MetricsApi.new

begin
  # Get Prometheus Metrics
  result = api_instance.get_metrics
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling MetricsApi->get_metrics: #{e}"
end
```

#### Using the get_metrics_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> get_metrics_with_http_info

```ruby
begin
  # Get Prometheus Metrics
  data, status_code, headers = api_instance.get_metrics_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling MetricsApi->get_metrics_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**String**

### Authorization

[X-API-KEY](../README.md#X-API-KEY)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json

