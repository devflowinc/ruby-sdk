# TrieveRubyClient::ChunkApi

All URIs are relative to *https://api.trieve.ai*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_chunk**](ChunkApi.md#create_chunk) | **POST** /api/chunk | Create or Upsert Chunk or Chunks |
| [**create_suggested_queries_handler**](ChunkApi.md#create_suggested_queries_handler) | **POST** /api/chunk/gen_suggestions | Generate suggested queries |
| [**delete_chunk**](ChunkApi.md#delete_chunk) | **DELETE** /api/chunk/{chunk_id} | Delete Chunk |
| [**delete_chunk_by_tracking_id**](ChunkApi.md#delete_chunk_by_tracking_id) | **DELETE** /api/chunk/tracking_id/{tracking_id} | Delete Chunk By Tracking Id |
| [**generate_off_chunks**](ChunkApi.md#generate_off_chunks) | **POST** /api/chunk/generate | RAG on Specified Chunks |
| [**get_chunk_by_id**](ChunkApi.md#get_chunk_by_id) | **GET** /api/chunk/{chunk_id} | Get Chunk By Id |
| [**get_chunk_by_tracking_id**](ChunkApi.md#get_chunk_by_tracking_id) | **GET** /api/chunk/tracking_id/{tracking_id} | Get Chunk By Tracking Id |
| [**get_chunks_by_ids**](ChunkApi.md#get_chunks_by_ids) | **POST** /api/chunks | Get Chunks By Ids |
| [**get_chunks_by_tracking_ids**](ChunkApi.md#get_chunks_by_tracking_ids) | **POST** /api/chunks/tracking | Get Chunks By TrackingIds |
| [**get_recommended_chunks**](ChunkApi.md#get_recommended_chunks) | **POST** /api/chunk/recommend | Get Recommended Chunks |
| [**search_chunks**](ChunkApi.md#search_chunks) | **POST** /api/chunk/search | Search |
| [**update_chunk**](ChunkApi.md#update_chunk) | **PUT** /api/chunk | Update Chunk |
| [**update_chunk_by_tracking_id**](ChunkApi.md#update_chunk_by_tracking_id) | **PUT** /api/chunk/tracking_id/update | Update Chunk By Tracking Id |


## create_chunk

> <ReturnQueuedChunk> create_chunk(tr_dataset, create_chunk_data)

Create or Upsert Chunk or Chunks

Create or Upsert Chunk or Chunks  Create a new chunk. If the chunk has the same tracking_id as an existing chunk, the request will fail. Once a chunk is created, it can be searched for using the search endpoint. If uploading in bulk, the maximum amount of chunks that can be uploaded at once is 120 chunks.

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
create_chunk_data = nil # CreateChunkData | JSON request payload to create a new chunk (chunk)

begin
  # Create or Upsert Chunk or Chunks
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
  # Create or Upsert Chunk or Chunks
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

Generate suggested queries

Generate suggested queries  This endpoint will generate 3 suggested queries based off the query provided in the request body and return them as a JSON object.

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
  # Generate suggested queries
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
  # Generate suggested queries
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

> delete_chunk(tr_dataset, chunk_id)

Delete Chunk

Delete Chunk  Delete a chunk by its id. If deleting a root chunk which has a collision, the most recently created collision will become a new root chunk.

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
chunk_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Id of the chunk you want to fetch.

begin
  # Delete Chunk
  api_instance.delete_chunk(tr_dataset, chunk_id)
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkApi->delete_chunk: #{e}"
end
```

#### Using the delete_chunk_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_chunk_with_http_info(tr_dataset, chunk_id)

```ruby
begin
  # Delete Chunk
  data, status_code, headers = api_instance.delete_chunk_with_http_info(tr_dataset, chunk_id)
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
| **chunk_id** | **String** | Id of the chunk you want to fetch. |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_chunk_by_tracking_id

> delete_chunk_by_tracking_id(tr_dataset, tracking_id)

Delete Chunk By Tracking Id

Delete Chunk By Tracking Id  Delete a chunk by tracking_id. This is useful for when you are coordinating with an external system and want to use the tracking_id to identify the chunk. If deleting a root chunk which has a collision, the most recently created collision will become a new root chunk.

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
  # Delete Chunk By Tracking Id
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
  # Delete Chunk By Tracking Id
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

RAG on Specified Chunks

RAG on Specified Chunks  This endpoint exists as an alternative to the topic+message concept where our API handles chat memory. With this endpoint, the user is responsible for providing the context window and the prompt. See more in the \"search before generate\" page at docs.trieve.ai.

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
  # RAG on Specified Chunks
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
  # RAG on Specified Chunks
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

> <ChunkMetadata> get_chunk_by_id(tr_dataset, chunk_id)

Get Chunk By Id

Get Chunk By Id  Get a singular chunk by id.

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
chunk_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Id of the chunk you want to fetch.

begin
  # Get Chunk By Id
  result = api_instance.get_chunk_by_id(tr_dataset, chunk_id)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkApi->get_chunk_by_id: #{e}"
end
```

#### Using the get_chunk_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ChunkMetadata>, Integer, Hash)> get_chunk_by_id_with_http_info(tr_dataset, chunk_id)

```ruby
begin
  # Get Chunk By Id
  data, status_code, headers = api_instance.get_chunk_by_id_with_http_info(tr_dataset, chunk_id)
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
| **chunk_id** | **String** | Id of the chunk you want to fetch. |  |

### Return type

[**ChunkMetadata**](ChunkMetadata.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_chunk_by_tracking_id

> <ChunkMetadata> get_chunk_by_tracking_id(tr_dataset, tracking_id)

Get Chunk By Tracking Id

Get Chunk By Tracking Id  Get a singular chunk by tracking_id. This is useful for when you are coordinating with an external system and want to use your own id as the primary reference for a chunk.

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
  # Get Chunk By Tracking Id
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
  # Get Chunk By Tracking Id
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


## get_chunks_by_ids

> <Array<ChunkMetadata>> get_chunks_by_ids(tr_dataset, get_chunks_data)

Get Chunks By Ids

Get Chunks By Ids  Get multiple chunks by multiple ids.

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
get_chunks_data = TrieveRubyClient::GetChunksData.new({ids: ['ids_example']}) # GetChunksData | JSON request payload to get the chunks in the request

begin
  # Get Chunks By Ids
  result = api_instance.get_chunks_by_ids(tr_dataset, get_chunks_data)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkApi->get_chunks_by_ids: #{e}"
end
```

#### Using the get_chunks_by_ids_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ChunkMetadata>>, Integer, Hash)> get_chunks_by_ids_with_http_info(tr_dataset, get_chunks_data)

```ruby
begin
  # Get Chunks By Ids
  data, status_code, headers = api_instance.get_chunks_by_ids_with_http_info(tr_dataset, get_chunks_data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ChunkMetadata>>
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkApi->get_chunks_by_ids_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **get_chunks_data** | [**GetChunksData**](GetChunksData.md) | JSON request payload to get the chunks in the request |  |

### Return type

[**Array&lt;ChunkMetadata&gt;**](ChunkMetadata.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_chunks_by_tracking_ids

> <ChunkMetadata> get_chunks_by_tracking_ids(tr_dataset, get_tracking_chunks_data)

Get Chunks By TrackingIds

Get Chunks By TrackingIds  Get multiple chunks by ids.

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
get_tracking_chunks_data = TrieveRubyClient::GetTrackingChunksData.new({tracking_ids: ['tracking_ids_example']}) # GetTrackingChunksData | JSON request payload to get the chunks in the request

begin
  # Get Chunks By TrackingIds
  result = api_instance.get_chunks_by_tracking_ids(tr_dataset, get_tracking_chunks_data)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkApi->get_chunks_by_tracking_ids: #{e}"
end
```

#### Using the get_chunks_by_tracking_ids_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ChunkMetadata>, Integer, Hash)> get_chunks_by_tracking_ids_with_http_info(tr_dataset, get_tracking_chunks_data)

```ruby
begin
  # Get Chunks By TrackingIds
  data, status_code, headers = api_instance.get_chunks_by_tracking_ids_with_http_info(tr_dataset, get_tracking_chunks_data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ChunkMetadata>
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkApi->get_chunks_by_tracking_ids_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **get_tracking_chunks_data** | [**GetTrackingChunksData**](GetTrackingChunksData.md) | JSON request payload to get the chunks in the request |  |

### Return type

[**ChunkMetadata**](ChunkMetadata.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_recommended_chunks

> <Array<ChunkMetadataWithScore>> get_recommended_chunks(tr_dataset, recommend_chunks_request)

Get Recommended Chunks

Get Recommended Chunks  Get recommendations of chunks similar to the chunks in the request. Think about this as a feature similar to the \"add to playlist\" recommendation feature on Spotify. This request pairs especially well with our groups endpoint.

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
  # Get Recommended Chunks
  result = api_instance.get_recommended_chunks(tr_dataset, recommend_chunks_request)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkApi->get_recommended_chunks: #{e}"
end
```

#### Using the get_recommended_chunks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ChunkMetadataWithScore>>, Integer, Hash)> get_recommended_chunks_with_http_info(tr_dataset, recommend_chunks_request)

```ruby
begin
  # Get Recommended Chunks
  data, status_code, headers = api_instance.get_recommended_chunks_with_http_info(tr_dataset, recommend_chunks_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ChunkMetadataWithScore>>
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

[**Array&lt;ChunkMetadataWithScore&gt;**](ChunkMetadataWithScore.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## search_chunks

> <SearchChunkQueryResponseBody> search_chunks(tr_dataset, search_chunk_data)

Search

Search  This route provides the primary search functionality for the API. It can be used to search for chunks by semantic similarity, full-text similarity, or a combination of both. Results' `chunk_html` values will be modified with `<b><mark>` tags for sub-sentence highlighting.

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
  # Search
  result = api_instance.search_chunks(tr_dataset, search_chunk_data)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkApi->search_chunks: #{e}"
end
```

#### Using the search_chunks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SearchChunkQueryResponseBody>, Integer, Hash)> search_chunks_with_http_info(tr_dataset, search_chunk_data)

```ruby
begin
  # Search
  data, status_code, headers = api_instance.search_chunks_with_http_info(tr_dataset, search_chunk_data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchChunkQueryResponseBody>
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkApi->search_chunks_with_http_info: #{e}"
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

Update Chunk

Update Chunk  Update a chunk. If you try to change the tracking_id of the chunk to have the same tracking_id as an existing chunk, the request will fail.

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
  # Update Chunk
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
  # Update Chunk
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

Update Chunk By Tracking Id

Update Chunk By Tracking Id  Update a chunk by tracking_id. This is useful for when you are coordinating with an external system and want to use the tracking_id to identify the chunk.

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
  # Update Chunk By Tracking Id
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
  # Update Chunk By Tracking Id
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

