# TrieveRubyClient::EventsApi

All URIs are relative to *http://localhost:8090*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_events**](EventsApi.md#get_events) | **POST** /api/events | Get events for the dataset |


## get_events

> <EventReturn> get_events(tr_dataset, get_events_data)

Get events for the dataset

Get events for the dataset  Get events for the auth'ed user. Currently, this is only for events belonging to the auth'ed user. Soon, we plan to associate events to datasets instead of users.

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

api_instance = TrieveRubyClient::EventsApi.new
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request
get_events_data = TrieveRubyClient::GetEventsData.new # GetEventsData | JSON request payload to get events for a dataset

begin
  # Get events for the dataset
  result = api_instance.get_events(tr_dataset, get_events_data)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling EventsApi->get_events: #{e}"
end
```

#### Using the get_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventReturn>, Integer, Hash)> get_events_with_http_info(tr_dataset, get_events_data)

```ruby
begin
  # Get events for the dataset
  data, status_code, headers = api_instance.get_events_with_http_info(tr_dataset, get_events_data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventReturn>
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling EventsApi->get_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **get_events_data** | [**GetEventsData**](GetEventsData.md) | JSON request payload to get events for a dataset |  |

### Return type

[**EventReturn**](EventReturn.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

