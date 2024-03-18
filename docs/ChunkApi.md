# TrieveRubyClient::ChunkApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**bulk_create_chunk**](ChunkApi.md#bulk_create_chunk) | **POST** /api/chunk/bulk | bulk_create_chunk |
| [**create_chunk**](ChunkApi.md#create_chunk) | **POST** /api/chunk | create_chunk |
| [**create_suggested_queries_handler**](ChunkApi.md#create_suggested_queries_handler) | **POST** /api/chunk/gen_suggestions | get_suggested_queries |
| [**delete_chunk**](ChunkApi.md#delete_chunk) | **DELETE** /api/{tracking_or_chunk}/{chunk_id} | delete_chunk |
| [**delete_chunk_by_tracking_id**](ChunkApi.md#delete_chunk_by_tracking_id) | **DELETE** /api/chunk/tracking_id/{tracking_id} | delete_chunk_by_tracking_id |
| [**generate_off_chunks**](ChunkApi.md#generate_off_chunks) | **POST** /api/chunk/generate | augmented_generation_from_chunks |
| [**get_chunk_by_id**](ChunkApi.md#get_chunk_by_id) | **GET** /api/{tracking_or_chunk}/{chunk_id} | get_chunk |
| [**get_chunk_by_tracking_id**](ChunkApi.md#get_chunk_by_tracking_id) | **GET** /api/chunk/tracking_id/{tracking_id} | get_chunk_by_tracking_id |
| [**get_recommended_chunks**](ChunkApi.md#get_recommended_chunks) | **POST** /api/chunk/recommend | get_recommended_chunks |
| [**search_chunk**](ChunkApi.md#search_chunk) | **POST** /api/chunk/search | search |
| [**update_chunk**](ChunkApi.md#update_chunk) | **PUT** /api/chunk/update | update_chunk |
| [**update_chunk_by_tracking_id**](ChunkApi.md#update_chunk_by_tracking_id) | **PUT** /api/chunk/tracking_id/update | update_chunk_by_tracking_id |


## bulk_create_chunk

> <ReturnQueuedChunk> bulk_create_chunk(tr_dataset, create_chunk_data)

bulk_create_chunk

bulk_create_chunk  Create a new chunk from an array of chunks. If the chunk has the same tracking_id as an existing chunk, the request will fail. Once a chunk is created, it can be searched for using the search endpoint.

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

api_instance = TrieveRubyClient::ChunkApi.new
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request
create_chunk_data = TrieveRubyClient::CreateChunkData.new # CreateChunkData | JSON request payload to create a new chunk (chunk)

begin
  # bulk_create_chunk
  result = api_instance.bulk_create_chunk(tr_dataset, create_chunk_data)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkApi->bulk_create_chunk: #{e}"
end
```

#### Using the bulk_create_chunk_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReturnQueuedChunk>, Integer, Hash)> bulk_create_chunk_with_http_info(tr_dataset, create_chunk_data)

```ruby
begin
  # bulk_create_chunk
  data, status_code, headers = api_instance.bulk_create_chunk_with_http_info(tr_dataset, create_chunk_data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReturnQueuedChunk>
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkApi->bulk_create_chunk_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **create_chunk_data** | [**CreateChunkData**](CreateChunkData.md) | JSON request payload to create a new chunk (chunk) |  |

### Return type

[**ReturnQueuedChunk**](ReturnQueuedChunk.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_chunk

> <ReturnQueuedChunk> create_chunk(tr_dataset, create_chunk_data)

create_chunk

create_chunk  Create a new chunk. If the chunk has the same tracking_id as an existing chunk, the request will fail. Once a chunk is created, it can be searched for using the search endpoint.

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

api_instance = TrieveRubyClient::ChunkApi.new
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request
create_chunk_data = TrieveRubyClient::CreateChunkData.new # CreateChunkData | JSON request payload to create a new chunk (chunk)

begin
  # create_chunk
  result = api_instance.create_chunk(tr_dataset, create_chunk_data)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkApi->create_chunk: #{e}"
end
```

#### Using the create_chunk_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReturnQueuedChunk>, Integer, Hash)> create_chunk_with_http_info(tr_dataset, create_chunk_data)

```ruby
begin
  # create_chunk
  data, status_code, headers = api_instance.create_chunk_with_http_info(tr_dataset, create_chunk_data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReturnQueuedChunk>
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkApi->create_chunk_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **create_chunk_data** | [**CreateChunkData**](CreateChunkData.md) | JSON request payload to create a new chunk (chunk) |  |

### Return type

[**ReturnQueuedChunk**](ReturnQueuedChunk.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_suggested_queries_handler

> <SuggestedQueriesResponse> create_suggested_queries_handler(tr_dataset, suggested_queries_request)

get_suggested_queries

get_suggested_queries  This endpoint will generate 3 suggested queries based off the query provided in the request body and return them as a JSON object.

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

api_instance = TrieveRubyClient::ChunkApi.new
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request
suggested_queries_request = TrieveRubyClient::SuggestedQueriesRequest.new({query: 'query_example'}) # SuggestedQueriesRequest | JSON request payload to get alternative suggested queries

begin
  # get_suggested_queries
  result = api_instance.create_suggested_queries_handler(tr_dataset, suggested_queries_request)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkApi->create_suggested_queries_handler: #{e}"
end
```

#### Using the create_suggested_queries_handler_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SuggestedQueriesResponse>, Integer, Hash)> create_suggested_queries_handler_with_http_info(tr_dataset, suggested_queries_request)

```ruby
begin
  # get_suggested_queries
  data, status_code, headers = api_instance.create_suggested_queries_handler_with_http_info(tr_dataset, suggested_queries_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SuggestedQueriesResponse>
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkApi->create_suggested_queries_handler_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **suggested_queries_request** | [**SuggestedQueriesRequest**](SuggestedQueriesRequest.md) | JSON request payload to get alternative suggested queries |  |

### Return type

[**SuggestedQueriesResponse**](SuggestedQueriesResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_chunk

> delete_chunk(tr_dataset, chunk_id, tracking_or_chunk)

delete_chunk

delete_chunk  Delete a chunk by its id. If deleting a root chunk which has a collision, the most recently created collision will become a new root chunk.

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

api_instance = TrieveRubyClient::ChunkApi.new
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request
chunk_id = TODO # Uuid | Id of the chunk you want to fetch. This can be either the chunk_id or the tracking_id.
tracking_or_chunk = 'tracking_or_chunk_example' # String | The type of id you are using to search for the chunk. This can be either 'chunk' or 'tracking_id'

begin
  # delete_chunk
  api_instance.delete_chunk(tr_dataset, chunk_id, tracking_or_chunk)
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkApi->delete_chunk: #{e}"
end
```

#### Using the delete_chunk_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_chunk_with_http_info(tr_dataset, chunk_id, tracking_or_chunk)

```ruby
begin
  # delete_chunk
  data, status_code, headers = api_instance.delete_chunk_with_http_info(tr_dataset, chunk_id, tracking_or_chunk)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkApi->delete_chunk_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **chunk_id** | [**Uuid**](.md) | Id of the chunk you want to fetch. This can be either the chunk_id or the tracking_id. |  |
| **tracking_or_chunk** | **String** | The type of id you are using to search for the chunk. This can be either &#39;chunk&#39; or &#39;tracking_id&#39; |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_chunk_by_tracking_id

> delete_chunk_by_tracking_id(tr_dataset, tracking_id)

delete_chunk_by_tracking_id

delete_chunk_by_tracking_id  Delete a chunk by tracking_id. This is useful for when you are coordinating with an external system and want to use the tracking_id to identify the chunk. If deleting a root chunk which has a collision, the most recently created collision will become a new root chunk.

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

api_instance = TrieveRubyClient::ChunkApi.new
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request
tracking_id = 'tracking_id_example' # String | tracking_id of the chunk you want to delete

begin
  # delete_chunk_by_tracking_id
  api_instance.delete_chunk_by_tracking_id(tr_dataset, tracking_id)
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkApi->delete_chunk_by_tracking_id: #{e}"
end
```

#### Using the delete_chunk_by_tracking_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_chunk_by_tracking_id_with_http_info(tr_dataset, tracking_id)

```ruby
begin
  # delete_chunk_by_tracking_id
  data, status_code, headers = api_instance.delete_chunk_by_tracking_id_with_http_info(tr_dataset, tracking_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkApi->delete_chunk_by_tracking_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **tracking_id** | **String** | tracking_id of the chunk you want to delete |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## generate_off_chunks

> String generate_off_chunks(tr_dataset, generate_chunks_request)

augmented_generation_from_chunks

augmented_generation_from_chunks  This endpoint exists as an alternative to the topic+message concept where our API handles chat memory. With this endpoint, the user is responsible for providing the context window and the prompt. See more in the \"search before generate\" page at docs.trieve.ai.

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

api_instance = TrieveRubyClient::ChunkApi.new
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request
generate_chunks_request = TrieveRubyClient::GenerateChunksRequest.new({chunk_ids: ['chunk_ids_example'], prev_messages: [TrieveRubyClient::ChatMessageProxy.new({content: 'content_example', role: 'role_example'})]}) # GenerateChunksRequest | JSON request payload to perform RAG on some chunks (chunks)

begin
  # augmented_generation_from_chunks
  result = api_instance.generate_off_chunks(tr_dataset, generate_chunks_request)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkApi->generate_off_chunks: #{e}"
end
```

#### Using the generate_off_chunks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> generate_off_chunks_with_http_info(tr_dataset, generate_chunks_request)

```ruby
begin
  # augmented_generation_from_chunks
  data, status_code, headers = api_instance.generate_off_chunks_with_http_info(tr_dataset, generate_chunks_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkApi->generate_off_chunks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **generate_chunks_request** | [**GenerateChunksRequest**](GenerateChunksRequest.md) | JSON request payload to perform RAG on some chunks (chunks) |  |

### Return type

**String**

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: text/plain, application/json


## get_chunk_by_id

> <ChunkMetadata> get_chunk_by_id(tr_dataset, chunk_id, tracking_or_chunk)

get_chunk

get_chunk  Get a singular chunk by id.

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

api_instance = TrieveRubyClient::ChunkApi.new
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request
chunk_id = TODO # Uuid | Id of the chunk you want to fetch. This can be either the chunk_id or the tracking_id.
tracking_or_chunk = 'tracking_or_chunk_example' # String | The type of id you are using to search for the chunk. This can be either 'chunk' or 'tracking_id'

begin
  # get_chunk
  result = api_instance.get_chunk_by_id(tr_dataset, chunk_id, tracking_or_chunk)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkApi->get_chunk_by_id: #{e}"
end
```

#### Using the get_chunk_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ChunkMetadata>, Integer, Hash)> get_chunk_by_id_with_http_info(tr_dataset, chunk_id, tracking_or_chunk)

```ruby
begin
  # get_chunk
  data, status_code, headers = api_instance.get_chunk_by_id_with_http_info(tr_dataset, chunk_id, tracking_or_chunk)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ChunkMetadata>
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkApi->get_chunk_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **chunk_id** | [**Uuid**](.md) | Id of the chunk you want to fetch. This can be either the chunk_id or the tracking_id. |  |
| **tracking_or_chunk** | **String** | The type of id you are using to search for the chunk. This can be either &#39;chunk&#39; or &#39;tracking_id&#39; |  |

### Return type

[**ChunkMetadata**](ChunkMetadata.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_chunk_by_tracking_id

> <ChunkMetadata> get_chunk_by_tracking_id(tr_dataset, tracking_id)

get_chunk_by_tracking_id

get_chunk_by_tracking_id  Get a singular chunk by tracking_id. This is useful for when you are coordinating with an external system and want to use your own id as the primary reference for a chunk.

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

api_instance = TrieveRubyClient::ChunkApi.new
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request
tracking_id = 'tracking_id_example' # String | tracking_id of the chunk you want to fetch

begin
  # get_chunk_by_tracking_id
  result = api_instance.get_chunk_by_tracking_id(tr_dataset, tracking_id)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkApi->get_chunk_by_tracking_id: #{e}"
end
```

#### Using the get_chunk_by_tracking_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ChunkMetadata>, Integer, Hash)> get_chunk_by_tracking_id_with_http_info(tr_dataset, tracking_id)

```ruby
begin
  # get_chunk_by_tracking_id
  data, status_code, headers = api_instance.get_chunk_by_tracking_id_with_http_info(tr_dataset, tracking_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ChunkMetadata>
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkApi->get_chunk_by_tracking_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **tracking_id** | **String** | tracking_id of the chunk you want to fetch |  |

### Return type

[**ChunkMetadata**](ChunkMetadata.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_recommended_chunks

> <Array<ChunkMetadataWithFileData>> get_recommended_chunks(tr_dataset, recommend_chunks_request)

get_recommended_chunks

get_recommended_chunks  Get recommendations of chunks similar to the chunks in the request. Think about this as a feature similar to the \"add to playlist\" recommendation feature on Spotify. This request pairs especially well with our groups endpoint.

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

api_instance = TrieveRubyClient::ChunkApi.new
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request
recommend_chunks_request = TrieveRubyClient::RecommendChunksRequest.new # RecommendChunksRequest | JSON request payload to get recommendations of chunks similar to the chunks in the request

begin
  # get_recommended_chunks
  result = api_instance.get_recommended_chunks(tr_dataset, recommend_chunks_request)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkApi->get_recommended_chunks: #{e}"
end
```

#### Using the get_recommended_chunks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ChunkMetadataWithFileData>>, Integer, Hash)> get_recommended_chunks_with_http_info(tr_dataset, recommend_chunks_request)

```ruby
begin
  # get_recommended_chunks
  data, status_code, headers = api_instance.get_recommended_chunks_with_http_info(tr_dataset, recommend_chunks_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ChunkMetadataWithFileData>>
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkApi->get_recommended_chunks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **recommend_chunks_request** | [**RecommendChunksRequest**](RecommendChunksRequest.md) | JSON request payload to get recommendations of chunks similar to the chunks in the request |  |

### Return type

[**Array&lt;ChunkMetadataWithFileData&gt;**](ChunkMetadataWithFileData.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## search_chunk

> <SearchChunkQueryResponseBody> search_chunk(tr_dataset, search_chunk_data)

search

search  This route provides the primary search functionality for the API. It can be used to search for chunks by semantic similarity, full-text similarity, or a combination of both. Results' `chunk_html` values will be modified with `<b>` tags for sub-sentence highlighting.

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

api_instance = TrieveRubyClient::ChunkApi.new
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request
search_chunk_data = TrieveRubyClient::SearchChunkData.new({query: 'query_example', search_type: 'search_type_example'}) # SearchChunkData | JSON request payload to semantically search for chunks (chunks)

begin
  # search
  result = api_instance.search_chunk(tr_dataset, search_chunk_data)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkApi->search_chunk: #{e}"
end
```

#### Using the search_chunk_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SearchChunkQueryResponseBody>, Integer, Hash)> search_chunk_with_http_info(tr_dataset, search_chunk_data)

```ruby
begin
  # search
  data, status_code, headers = api_instance.search_chunk_with_http_info(tr_dataset, search_chunk_data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchChunkQueryResponseBody>
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkApi->search_chunk_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **search_chunk_data** | [**SearchChunkData**](SearchChunkData.md) | JSON request payload to semantically search for chunks (chunks) |  |

### Return type

[**SearchChunkQueryResponseBody**](SearchChunkQueryResponseBody.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_chunk

> update_chunk(tr_dataset, update_chunk_data)

update_chunk

update_chunk  Update a chunk. If you try to change the tracking_id of the chunk to have the same tracking_id as an existing chunk, the request will fail.

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

api_instance = TrieveRubyClient::ChunkApi.new
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request
update_chunk_data = TrieveRubyClient::UpdateChunkData.new # UpdateChunkData | JSON request payload to update a chunk (chunk)

begin
  # update_chunk
  api_instance.update_chunk(tr_dataset, update_chunk_data)
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkApi->update_chunk: #{e}"
end
```

#### Using the update_chunk_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_chunk_with_http_info(tr_dataset, update_chunk_data)

```ruby
begin
  # update_chunk
  data, status_code, headers = api_instance.update_chunk_with_http_info(tr_dataset, update_chunk_data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkApi->update_chunk_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **update_chunk_data** | [**UpdateChunkData**](UpdateChunkData.md) | JSON request payload to update a chunk (chunk) |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_chunk_by_tracking_id

> update_chunk_by_tracking_id(tr_dataset, update_chunk_by_tracking_id_data)

update_chunk_by_tracking_id

update_chunk_by_tracking_id  Update a chunk by tracking_id. This is useful for when you are coordinating with an external system and want to use the tracking_id to identify the chunk.

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

api_instance = TrieveRubyClient::ChunkApi.new
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request
update_chunk_by_tracking_id_data = TrieveRubyClient::UpdateChunkByTrackingIdData.new({tracking_id: 'tracking_id_example'}) # UpdateChunkByTrackingIdData | JSON request payload to update a chunk by tracking_id (chunks)

begin
  # update_chunk_by_tracking_id
  api_instance.update_chunk_by_tracking_id(tr_dataset, update_chunk_by_tracking_id_data)
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkApi->update_chunk_by_tracking_id: #{e}"
end
```

#### Using the update_chunk_by_tracking_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_chunk_by_tracking_id_with_http_info(tr_dataset, update_chunk_by_tracking_id_data)

```ruby
begin
  # update_chunk_by_tracking_id
  data, status_code, headers = api_instance.update_chunk_by_tracking_id_with_http_info(tr_dataset, update_chunk_by_tracking_id_data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkApi->update_chunk_by_tracking_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **update_chunk_by_tracking_id_data** | [**UpdateChunkByTrackingIdData**](UpdateChunkByTrackingIdData.md) | JSON request payload to update a chunk by tracking_id (chunks) |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

