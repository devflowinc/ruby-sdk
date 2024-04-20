# TrieveRubyClient::TopicApi

All URIs are relative to *https://api.trieve.ai*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_topic**](TopicApi.md#create_topic) | **POST** /api/topic | Create Topic |
| [**delete_topic**](TopicApi.md#delete_topic) | **DELETE** /api/topic/{topic_id} | Delete Topic |
| [**get_all_topics_for_owner_id**](TopicApi.md#get_all_topics_for_owner_id) | **GET** /api/topic/owner/{owner_id} | Get All Topics for Owner ID |
| [**update_topic**](TopicApi.md#update_topic) | **PUT** /api/topic | Update Topic |


## create_topic

> <Topic> create_topic(tr_dataset, create_topic_data)

Create Topic

Create Topic  Create a new chat topic. Topics are attached to a owner_id's and act as a coordinator for conversation message history of gen-AI chat sessions.

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

api_instance = TrieveRubyClient::TopicApi.new
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request
create_topic_data = TrieveRubyClient::CreateTopicData.new({owner_id: 'owner_id_example'}) # CreateTopicData | JSON request payload to create chat topic

begin
  # Create Topic
  result = api_instance.create_topic(tr_dataset, create_topic_data)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling TopicApi->create_topic: #{e}"
end
```

#### Using the create_topic_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Topic>, Integer, Hash)> create_topic_with_http_info(tr_dataset, create_topic_data)

```ruby
begin
  # Create Topic
  data, status_code, headers = api_instance.create_topic_with_http_info(tr_dataset, create_topic_data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Topic>
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling TopicApi->create_topic_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **create_topic_data** | [**CreateTopicData**](CreateTopicData.md) | JSON request payload to create chat topic |  |

### Return type

[**Topic**](Topic.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_topic

> delete_topic(tr_dataset, topic_id)

Delete Topic

Delete Topic  Delete an existing chat topic. When a topic is deleted, all associated chat messages are also deleted.

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

api_instance = TrieveRubyClient::TopicApi.new
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request
topic_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the topic you want to delete.

begin
  # Delete Topic
  api_instance.delete_topic(tr_dataset, topic_id)
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling TopicApi->delete_topic: #{e}"
end
```

#### Using the delete_topic_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_topic_with_http_info(tr_dataset, topic_id)

```ruby
begin
  # Delete Topic
  data, status_code, headers = api_instance.delete_topic_with_http_info(tr_dataset, topic_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling TopicApi->delete_topic_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **topic_id** | **String** | The id of the topic you want to delete. |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_topics_for_owner_id

> <Array<Topic>> get_all_topics_for_owner_id(owner_id, tr_dataset)

Get All Topics for Owner ID

Get All Topics for Owner ID  Get all topics belonging to an arbitary owner_id. This is useful for managing message history and chat sessions. It is common to use a browser fingerprint or your user's id as the owner_id.

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

api_instance = TrieveRubyClient::TopicApi.new
owner_id = 'owner_id_example' # String | The owner_id to get topics of; A common approach is to use a browser fingerprint or your user's id
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request

begin
  # Get All Topics for Owner ID
  result = api_instance.get_all_topics_for_owner_id(owner_id, tr_dataset)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling TopicApi->get_all_topics_for_owner_id: #{e}"
end
```

#### Using the get_all_topics_for_owner_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Topic>>, Integer, Hash)> get_all_topics_for_owner_id_with_http_info(owner_id, tr_dataset)

```ruby
begin
  # Get All Topics for Owner ID
  data, status_code, headers = api_instance.get_all_topics_for_owner_id_with_http_info(owner_id, tr_dataset)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Topic>>
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling TopicApi->get_all_topics_for_owner_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **owner_id** | **String** | The owner_id to get topics of; A common approach is to use a browser fingerprint or your user&#39;s id |  |
| **tr_dataset** | **String** | The dataset id to use for the request |  |

### Return type

[**Array&lt;Topic&gt;**](Topic.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_topic

> update_topic(tr_dataset, update_topic_data)

Update Topic

Update Topic  Update an existing chat topic. Currently, only the name of the topic can be updated.

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

api_instance = TrieveRubyClient::TopicApi.new
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request
update_topic_data = TrieveRubyClient::UpdateTopicData.new({name: 'name_example', topic_id: 'topic_id_example'}) # UpdateTopicData | JSON request payload to update a chat topic

begin
  # Update Topic
  api_instance.update_topic(tr_dataset, update_topic_data)
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling TopicApi->update_topic: #{e}"
end
```

#### Using the update_topic_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_topic_with_http_info(tr_dataset, update_topic_data)

```ruby
begin
  # Update Topic
  data, status_code, headers = api_instance.update_topic_with_http_info(tr_dataset, update_topic_data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling TopicApi->update_topic_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **update_topic_data** | [**UpdateTopicData**](UpdateTopicData.md) | JSON request payload to update a chat topic |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

