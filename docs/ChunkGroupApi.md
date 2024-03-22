# TrieveRubyClient::ChunkGroupApi

All URIs are relative to *http://localhost:8090*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_chunk_to_group**](ChunkGroupApi.md#add_chunk_to_group) | **POST** /api/chunk_group/chunk/{group_id} | Add Chunk to Group |
| [**add_chunk_to_group_by_tracking_id**](ChunkGroupApi.md#add_chunk_to_group_by_tracking_id) | **POST** /api/chunk_group/tracking_id/{tracking_id} | Add Chunk to Group by Tracking ID |
| [**create_chunk_group**](ChunkGroupApi.md#create_chunk_group) | **POST** /api/chunk_group | Create Chunk Group |
| [**delete_chunk_group**](ChunkGroupApi.md#delete_chunk_group) | **DELETE** /api/chunk_group/{tracking_or_chunk}/{group_id} | Delete Group |
| [**delete_group_by_tracking_id**](ChunkGroupApi.md#delete_group_by_tracking_id) | **DELETE** /api/chunk_group/tracking_id/{tracking_id} | Delete Group by Tracking ID |
| [**get_chunk_group**](ChunkGroupApi.md#get_chunk_group) | **GET** /api/chunk_group/{tracking_or_chunk}/{group_id} | Get Group |
| [**get_chunks_in_group**](ChunkGroupApi.md#get_chunks_in_group) | **GET** /api/chunk_group/{tracking_or_chunk}/{group_id}/{page} | Get Chunks in Group |
| [**get_chunks_in_group_by_tracking_id**](ChunkGroupApi.md#get_chunks_in_group_by_tracking_id) | **GET** /api/chunk_group/tracking_id/{group_tracking_id}/{page} | Get Chunks in Group by Tracking ID |
| [**get_group_by_tracking_id**](ChunkGroupApi.md#get_group_by_tracking_id) | **GET** /api/chunk_group/tracking_id/{tracking_id} | Get Group by Tracking ID |
| [**get_groups_chunk_is_in**](ChunkGroupApi.md#get_groups_chunk_is_in) | **POST** /api/chunk_group/chunks | Get Groups for Chunks |
| [**get_recommended_groups**](ChunkGroupApi.md#get_recommended_groups) | **POST** /api/chunk_group/recommend | Get Recommended Groups |
| [**get_specific_dataset_chunk_groups**](ChunkGroupApi.md#get_specific_dataset_chunk_groups) | **GET** /api/dataset/groups/{dataset_id}/{page} | Get Groups for Dataset |
| [**remove_chunk_from_group**](ChunkGroupApi.md#remove_chunk_from_group) | **DELETE** /api/chunk_group/chunk/{group_id} | Remove Chunk from Group |
| [**search_over_groups**](ChunkGroupApi.md#search_over_groups) | **POST** /api/chunk_group/group_oriented_search | Search Over Groups |
| [**search_within_group**](ChunkGroupApi.md#search_within_group) | **POST** /api/chunk_group/search | Search Within Group |
| [**update_chunk_group**](ChunkGroupApi.md#update_chunk_group) | **PUT** /api/chunk_group | Update Group |
| [**update_group_by_tracking_id**](ChunkGroupApi.md#update_group_by_tracking_id) | **PUT** /api/chunk_group/tracking_id/{tracking_id} | Update Group by Tracking ID |


## add_chunk_to_group

> add_chunk_to_group(tr_dataset, group_id, add_chunk_to_group_data)

Add Chunk to Group

Add Chunk to Group  Route to add a chunk to a group

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

api_instance = TrieveRubyClient::ChunkGroupApi.new
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request
group_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Id of the group to add the chunk to as a bookmark
add_chunk_to_group_data = TrieveRubyClient::AddChunkToGroupData.new({chunk_id: 'chunk_id_example'}) # AddChunkToGroupData | JSON request payload to add a chunk to a group (bookmark it)

begin
  # Add Chunk to Group
  api_instance.add_chunk_to_group(tr_dataset, group_id, add_chunk_to_group_data)
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkGroupApi->add_chunk_to_group: #{e}"
end
```

#### Using the add_chunk_to_group_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> add_chunk_to_group_with_http_info(tr_dataset, group_id, add_chunk_to_group_data)

```ruby
begin
  # Add Chunk to Group
  data, status_code, headers = api_instance.add_chunk_to_group_with_http_info(tr_dataset, group_id, add_chunk_to_group_data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkGroupApi->add_chunk_to_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **group_id** | **String** | Id of the group to add the chunk to as a bookmark |  |
| **add_chunk_to_group_data** | [**AddChunkToGroupData**](AddChunkToGroupData.md) | JSON request payload to add a chunk to a group (bookmark it) |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## add_chunk_to_group_by_tracking_id

> add_chunk_to_group_by_tracking_id(tr_dataset, tracking_id, add_chunk_to_group_data)

Add Chunk to Group by Tracking ID

Add Chunk to Group by Tracking ID  Route to add a chunk to a group by tracking id. Think of a bookmark as a chunk which is a member of a group.

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

api_instance = TrieveRubyClient::ChunkGroupApi.new
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request
tracking_id = 'tracking_id_example' # String | Id of the group to add the chunk to as a bookmark
add_chunk_to_group_data = TrieveRubyClient::AddChunkToGroupData.new({chunk_id: 'chunk_id_example'}) # AddChunkToGroupData | JSON request payload to add a chunk to a group (bookmark it)

begin
  # Add Chunk to Group by Tracking ID
  api_instance.add_chunk_to_group_by_tracking_id(tr_dataset, tracking_id, add_chunk_to_group_data)
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkGroupApi->add_chunk_to_group_by_tracking_id: #{e}"
end
```

#### Using the add_chunk_to_group_by_tracking_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> add_chunk_to_group_by_tracking_id_with_http_info(tr_dataset, tracking_id, add_chunk_to_group_data)

```ruby
begin
  # Add Chunk to Group by Tracking ID
  data, status_code, headers = api_instance.add_chunk_to_group_by_tracking_id_with_http_info(tr_dataset, tracking_id, add_chunk_to_group_data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkGroupApi->add_chunk_to_group_by_tracking_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **tracking_id** | **String** | Id of the group to add the chunk to as a bookmark |  |
| **add_chunk_to_group_data** | [**AddChunkToGroupData**](AddChunkToGroupData.md) | JSON request payload to add a chunk to a group (bookmark it) |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_chunk_group

> <ChunkGroup> create_chunk_group(tr_dataset, create_chunk_group_data)

Create Chunk Group

Create Chunk Group  Create a new chunk_group.

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

api_instance = TrieveRubyClient::ChunkGroupApi.new
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request
create_chunk_group_data = TrieveRubyClient::CreateChunkGroupData.new({description: 'description_example', name: 'name_example'}) # CreateChunkGroupData | JSON request payload to cretea a chunkGroup

begin
  # Create Chunk Group
  result = api_instance.create_chunk_group(tr_dataset, create_chunk_group_data)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkGroupApi->create_chunk_group: #{e}"
end
```

#### Using the create_chunk_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ChunkGroup>, Integer, Hash)> create_chunk_group_with_http_info(tr_dataset, create_chunk_group_data)

```ruby
begin
  # Create Chunk Group
  data, status_code, headers = api_instance.create_chunk_group_with_http_info(tr_dataset, create_chunk_group_data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ChunkGroup>
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkGroupApi->create_chunk_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **create_chunk_group_data** | [**CreateChunkGroupData**](CreateChunkGroupData.md) | JSON request payload to cretea a chunkGroup |  |

### Return type

[**ChunkGroup**](ChunkGroup.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_chunk_group

> delete_chunk_group(tr_dataset, tracking_or_chunk, group_id, delete_chunks)

Delete Group

Delete Group  This will delete a chunk_group. This will not delete the chunks that are in the group. We will soon support deleting a chunk_group along with its member chunks.

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

api_instance = TrieveRubyClient::ChunkGroupApi.new
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request
tracking_or_chunk = 'tracking_or_chunk_example' # String | The type of id you are using to search for the group. This can be either 'chunk' or 'tracking_id'
group_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Id of the group you want to fetch. This can be either the group_id or the tracking_id. If both are provided, the group_id will be used.
delete_chunks = true # Boolean | Delete the chunks within the group

begin
  # Delete Group
  api_instance.delete_chunk_group(tr_dataset, tracking_or_chunk, group_id, delete_chunks)
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkGroupApi->delete_chunk_group: #{e}"
end
```

#### Using the delete_chunk_group_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_chunk_group_with_http_info(tr_dataset, tracking_or_chunk, group_id, delete_chunks)

```ruby
begin
  # Delete Group
  data, status_code, headers = api_instance.delete_chunk_group_with_http_info(tr_dataset, tracking_or_chunk, group_id, delete_chunks)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkGroupApi->delete_chunk_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **tracking_or_chunk** | **String** | The type of id you are using to search for the group. This can be either &#39;chunk&#39; or &#39;tracking_id&#39; |  |
| **group_id** | **String** | Id of the group you want to fetch. This can be either the group_id or the tracking_id. If both are provided, the group_id will be used. |  |
| **delete_chunks** | **Boolean** | Delete the chunks within the group |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_group_by_tracking_id

> delete_group_by_tracking_id(tr_dataset, tracking_id)

Delete Group by Tracking ID

Delete Group by Tracking ID  Delete a chunk_group with the given tracking id.

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

api_instance = TrieveRubyClient::ChunkGroupApi.new
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request
tracking_id = 'tracking_id_example' # String | Tracking id of the chunk_group to delete

begin
  # Delete Group by Tracking ID
  api_instance.delete_group_by_tracking_id(tr_dataset, tracking_id)
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkGroupApi->delete_group_by_tracking_id: #{e}"
end
```

#### Using the delete_group_by_tracking_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_group_by_tracking_id_with_http_info(tr_dataset, tracking_id)

```ruby
begin
  # Delete Group by Tracking ID
  data, status_code, headers = api_instance.delete_group_by_tracking_id_with_http_info(tr_dataset, tracking_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkGroupApi->delete_group_by_tracking_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **tracking_id** | **String** | Tracking id of the chunk_group to delete |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_chunk_group

> <ChunkGroup> get_chunk_group(tr_dataset, tracking_or_chunk, group_id)

Get Group

Get Group  Fetch the group with the given id. get_group

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

api_instance = TrieveRubyClient::ChunkGroupApi.new
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request
tracking_or_chunk = 'tracking_or_chunk_example' # String | The type of id you are using to search for the group. This can be either 'chunk' or 'tracking_id'
group_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Id of the group you want to fetch. This can be either the group_id or the tracking_id.

begin
  # Get Group
  result = api_instance.get_chunk_group(tr_dataset, tracking_or_chunk, group_id)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkGroupApi->get_chunk_group: #{e}"
end
```

#### Using the get_chunk_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ChunkGroup>, Integer, Hash)> get_chunk_group_with_http_info(tr_dataset, tracking_or_chunk, group_id)

```ruby
begin
  # Get Group
  data, status_code, headers = api_instance.get_chunk_group_with_http_info(tr_dataset, tracking_or_chunk, group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ChunkGroup>
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkGroupApi->get_chunk_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **tracking_or_chunk** | **String** | The type of id you are using to search for the group. This can be either &#39;chunk&#39; or &#39;tracking_id&#39; |  |
| **group_id** | **String** | Id of the group you want to fetch. This can be either the group_id or the tracking_id. |  |

### Return type

[**ChunkGroup**](ChunkGroup.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_chunks_in_group

> <BookmarkData> get_chunks_in_group(tr_dataset, tracking_or_chunk, group_id, page)

Get Chunks in Group

Get Chunks in Group  Route to get all chunks for a group. The response is paginated, with each page containing 10 chunks. Support for custom page size is coming soon.

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

api_instance = TrieveRubyClient::ChunkGroupApi.new
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request
tracking_or_chunk = 'tracking_or_chunk_example' # String | The type of id you are using to search for the group. This can be either 'chunk' or 'tracking_id'
group_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Id of the group you want to fetch. This can be either the group_id or the tracking_id. If both are provided, the group_id will be used.
page = 789 # Integer | The page of chunks to get from the group

begin
  # Get Chunks in Group
  result = api_instance.get_chunks_in_group(tr_dataset, tracking_or_chunk, group_id, page)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkGroupApi->get_chunks_in_group: #{e}"
end
```

#### Using the get_chunks_in_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BookmarkData>, Integer, Hash)> get_chunks_in_group_with_http_info(tr_dataset, tracking_or_chunk, group_id, page)

```ruby
begin
  # Get Chunks in Group
  data, status_code, headers = api_instance.get_chunks_in_group_with_http_info(tr_dataset, tracking_or_chunk, group_id, page)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BookmarkData>
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkGroupApi->get_chunks_in_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **tracking_or_chunk** | **String** | The type of id you are using to search for the group. This can be either &#39;chunk&#39; or &#39;tracking_id&#39; |  |
| **group_id** | **String** | Id of the group you want to fetch. This can be either the group_id or the tracking_id. If both are provided, the group_id will be used. |  |
| **page** | **Integer** | The page of chunks to get from the group |  |

### Return type

[**BookmarkData**](BookmarkData.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_chunks_in_group_by_tracking_id

> <BookmarkData> get_chunks_in_group_by_tracking_id(tr_dataset, group_tracking_id, page)

Get Chunks in Group by Tracking ID

Get Chunks in Group by Tracking ID  Route to get all chunks for a group. The response is paginated, with each page containing 10 chunks. Support for custom page size is coming soon.

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

api_instance = TrieveRubyClient::ChunkGroupApi.new
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request
group_tracking_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the group to get the chunks from
page = 789 # Integer | The page of chunks to get from the group

begin
  # Get Chunks in Group by Tracking ID
  result = api_instance.get_chunks_in_group_by_tracking_id(tr_dataset, group_tracking_id, page)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkGroupApi->get_chunks_in_group_by_tracking_id: #{e}"
end
```

#### Using the get_chunks_in_group_by_tracking_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BookmarkData>, Integer, Hash)> get_chunks_in_group_by_tracking_id_with_http_info(tr_dataset, group_tracking_id, page)

```ruby
begin
  # Get Chunks in Group by Tracking ID
  data, status_code, headers = api_instance.get_chunks_in_group_by_tracking_id_with_http_info(tr_dataset, group_tracking_id, page)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BookmarkData>
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkGroupApi->get_chunks_in_group_by_tracking_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **group_tracking_id** | **String** | The id of the group to get the chunks from |  |
| **page** | **Integer** | The page of chunks to get from the group |  |

### Return type

[**BookmarkData**](BookmarkData.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_group_by_tracking_id

> <ChunkGroup> get_group_by_tracking_id(tr_dataset, tracking_id)

Get Group by Tracking ID

Get Group by Tracking ID  Fetch the group with the given tracking id. get_group_by_tracking_id

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

api_instance = TrieveRubyClient::ChunkGroupApi.new
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request
tracking_id = 'tracking_id_example' # String | The tracking id of the group to fetch.

begin
  # Get Group by Tracking ID
  result = api_instance.get_group_by_tracking_id(tr_dataset, tracking_id)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkGroupApi->get_group_by_tracking_id: #{e}"
end
```

#### Using the get_group_by_tracking_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ChunkGroup>, Integer, Hash)> get_group_by_tracking_id_with_http_info(tr_dataset, tracking_id)

```ruby
begin
  # Get Group by Tracking ID
  data, status_code, headers = api_instance.get_group_by_tracking_id_with_http_info(tr_dataset, tracking_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ChunkGroup>
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkGroupApi->get_group_by_tracking_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **tracking_id** | **String** | The tracking id of the group to fetch. |  |

### Return type

[**ChunkGroup**](ChunkGroup.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_groups_chunk_is_in

> <Array<BookmarkGroupResult>> get_groups_chunk_is_in(tr_dataset, get_groups_for_chunks_data)

Get Groups for Chunks

Get Groups for Chunks  Route to get the groups that a chunk is in.

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

api_instance = TrieveRubyClient::ChunkGroupApi.new
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request
get_groups_for_chunks_data = TrieveRubyClient::GetGroupsForChunksData.new({chunk_ids: ['chunk_ids_example']}) # GetGroupsForChunksData | JSON request payload to get the groups that a chunk is in

begin
  # Get Groups for Chunks
  result = api_instance.get_groups_chunk_is_in(tr_dataset, get_groups_for_chunks_data)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkGroupApi->get_groups_chunk_is_in: #{e}"
end
```

#### Using the get_groups_chunk_is_in_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<BookmarkGroupResult>>, Integer, Hash)> get_groups_chunk_is_in_with_http_info(tr_dataset, get_groups_for_chunks_data)

```ruby
begin
  # Get Groups for Chunks
  data, status_code, headers = api_instance.get_groups_chunk_is_in_with_http_info(tr_dataset, get_groups_for_chunks_data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<BookmarkGroupResult>>
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkGroupApi->get_groups_chunk_is_in_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **get_groups_for_chunks_data** | [**GetGroupsForChunksData**](GetGroupsForChunksData.md) | JSON request payload to get the groups that a chunk is in |  |

### Return type

[**Array&lt;BookmarkGroupResult&gt;**](BookmarkGroupResult.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_recommended_groups

> <Array<GroupScoreChunkDTO>> get_recommended_groups(tr_dataset, reccomend_group_chunks_request)

Get Recommended Groups

Get Recommended Groups  Route to get recommended groups. This route will return groups which are similar to the groups in the request body.

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

api_instance = TrieveRubyClient::ChunkGroupApi.new
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request
reccomend_group_chunks_request = TrieveRubyClient::ReccomendGroupChunksRequest.new # ReccomendGroupChunksRequest | JSON request payload to get recommendations of chunks similar to the chunks in the request

begin
  # Get Recommended Groups
  result = api_instance.get_recommended_groups(tr_dataset, reccomend_group_chunks_request)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkGroupApi->get_recommended_groups: #{e}"
end
```

#### Using the get_recommended_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GroupScoreChunkDTO>>, Integer, Hash)> get_recommended_groups_with_http_info(tr_dataset, reccomend_group_chunks_request)

```ruby
begin
  # Get Recommended Groups
  data, status_code, headers = api_instance.get_recommended_groups_with_http_info(tr_dataset, reccomend_group_chunks_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GroupScoreChunkDTO>>
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkGroupApi->get_recommended_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **reccomend_group_chunks_request** | [**ReccomendGroupChunksRequest**](ReccomendGroupChunksRequest.md) | JSON request payload to get recommendations of chunks similar to the chunks in the request |  |

### Return type

[**Array&lt;GroupScoreChunkDTO&gt;**](GroupScoreChunkDTO.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_specific_dataset_chunk_groups

> <GroupData> get_specific_dataset_chunk_groups(tr_dataset, dataset_id, page)

Get Groups for Dataset

Get Groups for Dataset  Fetch the groups which belong to a dataset specified by its id.

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

api_instance = TrieveRubyClient::ChunkGroupApi.new
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request
dataset_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the dataset to fetch groups for.
page = 789 # Integer | The page of groups to fetch. Each page contains 10 groups. Support for custom page size is coming soon.

begin
  # Get Groups for Dataset
  result = api_instance.get_specific_dataset_chunk_groups(tr_dataset, dataset_id, page)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkGroupApi->get_specific_dataset_chunk_groups: #{e}"
end
```

#### Using the get_specific_dataset_chunk_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupData>, Integer, Hash)> get_specific_dataset_chunk_groups_with_http_info(tr_dataset, dataset_id, page)

```ruby
begin
  # Get Groups for Dataset
  data, status_code, headers = api_instance.get_specific_dataset_chunk_groups_with_http_info(tr_dataset, dataset_id, page)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupData>
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkGroupApi->get_specific_dataset_chunk_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **dataset_id** | **String** | The id of the dataset to fetch groups for. |  |
| **page** | **Integer** | The page of groups to fetch. Each page contains 10 groups. Support for custom page size is coming soon. |  |

### Return type

[**GroupData**](GroupData.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_chunk_from_group

> remove_chunk_from_group(tr_dataset, group_id, create_chunk_group_data)

Remove Chunk from Group

Remove Chunk from Group  Route to remove a chunk from a group.

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

api_instance = TrieveRubyClient::ChunkGroupApi.new
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request
group_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Id of the group to remove the bookmark'ed chunk from
create_chunk_group_data = TrieveRubyClient::CreateChunkGroupData.new({description: 'description_example', name: 'name_example'}) # CreateChunkGroupData | JSON request payload to cretea a chunkGroup

begin
  # Remove Chunk from Group
  api_instance.remove_chunk_from_group(tr_dataset, group_id, create_chunk_group_data)
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkGroupApi->remove_chunk_from_group: #{e}"
end
```

#### Using the remove_chunk_from_group_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> remove_chunk_from_group_with_http_info(tr_dataset, group_id, create_chunk_group_data)

```ruby
begin
  # Remove Chunk from Group
  data, status_code, headers = api_instance.remove_chunk_from_group_with_http_info(tr_dataset, group_id, create_chunk_group_data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkGroupApi->remove_chunk_from_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **group_id** | **String** | Id of the group to remove the bookmark&#39;ed chunk from |  |
| **create_chunk_group_data** | [**CreateChunkGroupData**](CreateChunkGroupData.md) | JSON request payload to cretea a chunkGroup |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## search_over_groups

> <SearchOverGroupsResponseBody> search_over_groups(search_over_groups_data)

Search Over Groups

Search Over Groups  This route allows you to get groups as results instead of chunks. Each group returned will have the matching chunks sorted by similarity within the group. This is useful for when you want to get groups of chunks which are similar to the search query. If choosing hybrid search, the results will be re-ranked using BAAI/bge-reranker-large. Compatible with semantic, fulltext, or hybrid search modes.

### Examples

```ruby
require 'time'
require 'trieve_ruby_client'

api_instance = TrieveRubyClient::ChunkGroupApi.new
search_over_groups_data = TrieveRubyClient::SearchOverGroupsData.new({query: 'query_example', search_type: 'search_type_example'}) # SearchOverGroupsData | JSON request payload to semantically search over groups

begin
  # Search Over Groups
  result = api_instance.search_over_groups(search_over_groups_data)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkGroupApi->search_over_groups: #{e}"
end
```

#### Using the search_over_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SearchOverGroupsResponseBody>, Integer, Hash)> search_over_groups_with_http_info(search_over_groups_data)

```ruby
begin
  # Search Over Groups
  data, status_code, headers = api_instance.search_over_groups_with_http_info(search_over_groups_data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchOverGroupsResponseBody>
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkGroupApi->search_over_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **search_over_groups_data** | [**SearchOverGroupsData**](SearchOverGroupsData.md) | JSON request payload to semantically search over groups |  |

### Return type

[**SearchOverGroupsResponseBody**](SearchOverGroupsResponseBody.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## search_within_group

> <SearchGroupsResult> search_within_group(tr_dataset, search_within_group_data)

Search Within Group

Search Within Group  This route allows you to search only within a group. This is useful for when you only want search results to contain chunks which are members of a specific group. If choosing hybrid search, the results will be re-ranked using BAAI/bge-reranker-large.

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

api_instance = TrieveRubyClient::ChunkGroupApi.new
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request
search_within_group_data = TrieveRubyClient::SearchWithinGroupData.new({query: 'query_example', search_type: 'search_type_example'}) # SearchWithinGroupData | JSON request payload to semantically search a group

begin
  # Search Within Group
  result = api_instance.search_within_group(tr_dataset, search_within_group_data)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkGroupApi->search_within_group: #{e}"
end
```

#### Using the search_within_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SearchGroupsResult>, Integer, Hash)> search_within_group_with_http_info(tr_dataset, search_within_group_data)

```ruby
begin
  # Search Within Group
  data, status_code, headers = api_instance.search_within_group_with_http_info(tr_dataset, search_within_group_data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchGroupsResult>
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkGroupApi->search_within_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **search_within_group_data** | [**SearchWithinGroupData**](SearchWithinGroupData.md) | JSON request payload to semantically search a group |  |

### Return type

[**SearchGroupsResult**](SearchGroupsResult.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_chunk_group

> update_chunk_group(tr_dataset, update_chunk_group_data)

Update Group

Update Group  Update a chunk_group.

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

api_instance = TrieveRubyClient::ChunkGroupApi.new
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request
update_chunk_group_data = TrieveRubyClient::UpdateChunkGroupData.new # UpdateChunkGroupData | JSON request payload to update a chunkGroup

begin
  # Update Group
  api_instance.update_chunk_group(tr_dataset, update_chunk_group_data)
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkGroupApi->update_chunk_group: #{e}"
end
```

#### Using the update_chunk_group_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_chunk_group_with_http_info(tr_dataset, update_chunk_group_data)

```ruby
begin
  # Update Group
  data, status_code, headers = api_instance.update_chunk_group_with_http_info(tr_dataset, update_chunk_group_data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkGroupApi->update_chunk_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **update_chunk_group_data** | [**UpdateChunkGroupData**](UpdateChunkGroupData.md) | JSON request payload to update a chunkGroup |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_group_by_tracking_id

> update_group_by_tracking_id(tr_dataset, tracking_id, update_group_by_tracking_id_data)

Update Group by Tracking ID

Update Group by Tracking ID  Update a chunk_group with the given tracking id.

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

api_instance = TrieveRubyClient::ChunkGroupApi.new
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request
tracking_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Tracking id of the chunk_group to update
update_group_by_tracking_id_data = TrieveRubyClient::UpdateGroupByTrackingIDData.new({tracking_id: 'tracking_id_example'}) # UpdateGroupByTrackingIDData | JSON request payload to update a chunkGroup

begin
  # Update Group by Tracking ID
  api_instance.update_group_by_tracking_id(tr_dataset, tracking_id, update_group_by_tracking_id_data)
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkGroupApi->update_group_by_tracking_id: #{e}"
end
```

#### Using the update_group_by_tracking_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_group_by_tracking_id_with_http_info(tr_dataset, tracking_id, update_group_by_tracking_id_data)

```ruby
begin
  # Update Group by Tracking ID
  data, status_code, headers = api_instance.update_group_by_tracking_id_with_http_info(tr_dataset, tracking_id, update_group_by_tracking_id_data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkGroupApi->update_group_by_tracking_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **tracking_id** | **String** | Tracking id of the chunk_group to update |  |
| **update_group_by_tracking_id_data** | [**UpdateGroupByTrackingIDData**](UpdateGroupByTrackingIDData.md) | JSON request payload to update a chunkGroup |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

