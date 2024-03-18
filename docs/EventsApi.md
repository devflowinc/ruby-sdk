# OpenapiClient::EventsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_events**](EventsApi.md#get_events) | **GET** /api/events/{page} | get_events |


## get_events

> <EventReturn> get_events(tr_dataset, page)

get_events

get_events  Get events for the auth'ed user. Currently, this is only for events belonging to the auth'ed user. Soon, we plan to associate events to datasets instead of users. Each page contains 10 events.

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

api_instance = OpenapiClient::EventsApi.new
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request
page = 789 # Integer | Page number of events to get

begin
  # get_events
  result = api_instance.get_events(tr_dataset, page)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventsApi->get_events: #{e}"
end
```

#### Using the get_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventReturn>, Integer, Hash)> get_events_with_http_info(tr_dataset, page)

```ruby
begin
  # get_events
  data, status_code, headers = api_instance.get_events_with_http_info(tr_dataset, page)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventReturn>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventsApi->get_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **page** | **Integer** | Page number of events to get |  |

### Return type

[**EventReturn**](EventReturn.md)

### Authorization

[Cookie](../README.md#Cookie), [ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

