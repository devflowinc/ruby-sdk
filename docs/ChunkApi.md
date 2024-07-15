# TrieveRubyClient::ChunkApi

All URIs are relative to *https://api.trieve.ai*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**autocomplete**](ChunkApi.md#autocomplete) | **POST** /api/chunk/autocomplete | Autocomplete |
| [**count_chunks**](ChunkApi.md#count_chunks) | **POST** /api/chunk/count | Count chunks above threshold |
| [**create_chunk**](ChunkApi.md#create_chunk) | **POST** /api/chunk | Create or Upsert Chunk or Chunks |
| [**delete_chunk**](ChunkApi.md#delete_chunk) | **DELETE** /api/chunk/{chunk_id} | Delete Chunk |
| [**delete_chunk_by_tracking_id**](ChunkApi.md#delete_chunk_by_tracking_id) | **DELETE** /api/chunk/tracking_id/{tracking_id} | Delete Chunk By Tracking Id |
| [**generate_off_chunks**](ChunkApi.md#generate_off_chunks) | **POST** /api/chunk/generate | RAG on Specified Chunks |
| [**get_chunk_by_id**](ChunkApi.md#get_chunk_by_id) | **GET** /api/chunk/{chunk_id} | Get Chunk By Id |
| [**get_chunk_by_tracking_id**](ChunkApi.md#get_chunk_by_tracking_id) | **GET** /api/chunk/tracking_id/{tracking_id} | Get Chunk By Tracking Id |
| [**get_chunks_by_ids**](ChunkApi.md#get_chunks_by_ids) | **POST** /api/chunks | Get Chunks By Ids |
| [**get_chunks_by_tracking_ids**](ChunkApi.md#get_chunks_by_tracking_ids) | **POST** /api/chunks/tracking | Get Chunks By Tracking Ids |
| [**get_recommended_chunks**](ChunkApi.md#get_recommended_chunks) | **POST** /api/chunk/recommend | Get Recommended Chunks |
| [**get_suggested_queries**](ChunkApi.md#get_suggested_queries) | **POST** /api/chunk/gen_suggestions | Generate suggested queries |
| [**search_chunks**](ChunkApi.md#search_chunks) | **POST** /api/chunk/search | Search |
| [**update_chunk**](ChunkApi.md#update_chunk) | **PUT** /api/chunk | Update Chunk |
| [**update_chunk_by_tracking_id**](ChunkApi.md#update_chunk_by_tracking_id) | **PUT** /api/chunk/tracking_id/update | Update Chunk By Tracking Id |


## autocomplete

> <SearchResponseTypes> autocomplete(tr_dataset, autocomplete_req_payload, opts)

Autocomplete

This route provides the primary autocomplete functionality for the API. This prioritize prefix matching with semantic or full-text search.

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
autocomplete_req_payload = TrieveRubyClient::AutocompleteReqPayload.new({query: 'query_example', search_type: TrieveRubyClient::SearchMethod::FULL_TEXT}) # AutocompleteReqPayload | JSON request payload to semantically search for chunks (chunks)
opts = {
  x_api_version: TrieveRubyClient::APIVersion::V1 # APIVersion | The API version to use for this request. Defaults to V2 for orgs created after July 12, 2024 and V1 otherwise.
}

begin
  # Autocomplete
  result = api_instance.autocomplete(tr_dataset, autocomplete_req_payload, opts)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkApi->autocomplete: #{e}"
end
```

#### Using the autocomplete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SearchResponseTypes>, Integer, Hash)> autocomplete_with_http_info(tr_dataset, autocomplete_req_payload, opts)

```ruby
begin
  # Autocomplete
  data, status_code, headers = api_instance.autocomplete_with_http_info(tr_dataset, autocomplete_req_payload, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchResponseTypes>
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkApi->autocomplete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **autocomplete_req_payload** | [**AutocompleteReqPayload**](AutocompleteReqPayload.md) | JSON request payload to semantically search for chunks (chunks) |  |
| **x_api_version** | [**APIVersion**](.md) | The API version to use for this request. Defaults to V2 for orgs created after July 12, 2024 and V1 otherwise. | [optional] |

### Return type

[**SearchResponseTypes**](SearchResponseTypes.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## count_chunks

> <CountChunkQueryResponseBody> count_chunks(tr_dataset, count_chunks_req_payload)

Count chunks above threshold

This route can be used to determine the number of chunks that match a given search criteria including filters and score threshold. It may be high latency for large datasets. Auth'ed user or api key must have an admin or owner role for the specified dataset's organization. There is a dataset configuration imposed restriction on the maximum limit value (default 10,000) which is used to prevent DDOS attacks.

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
count_chunks_req_payload = TrieveRubyClient::CountChunksReqPayload.new({query: 'query_example', search_type: TrieveRubyClient::SearchMethod::FULL_TEXT}) # CountChunksReqPayload | 

begin
  # Count chunks above threshold
  result = api_instance.count_chunks(tr_dataset, count_chunks_req_payload)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkApi->count_chunks: #{e}"
end
```

#### Using the count_chunks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CountChunkQueryResponseBody>, Integer, Hash)> count_chunks_with_http_info(tr_dataset, count_chunks_req_payload)

```ruby
begin
  # Count chunks above threshold
  data, status_code, headers = api_instance.count_chunks_with_http_info(tr_dataset, count_chunks_req_payload)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CountChunkQueryResponseBody>
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkApi->count_chunks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **count_chunks_req_payload** | [**CountChunksReqPayload**](CountChunksReqPayload.md) |  |  |

### Return type

[**CountChunkQueryResponseBody**](CountChunkQueryResponseBody.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_chunk

> <ReturnQueuedChunk> create_chunk(tr_dataset, create_chunk_req_payload_enum)

Create or Upsert Chunk or Chunks

Create a new chunk. If the chunk has the same tracking_id as an existing chunk, the request will fail. Once a chunk is created, it can be searched for using the search endpoint. If uploading in bulk, the maximum amount of chunks that can be uploaded at once is 120 chunks. Auth'ed user or api key must have an admin or owner role for the specified dataset's organization.

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
create_chunk_req_payload_enum = nil # CreateChunkReqPayloadEnum | JSON request payload to create a new chunk (chunk)

begin
  # Create or Upsert Chunk or Chunks
  result = api_instance.create_chunk(tr_dataset, create_chunk_req_payload_enum)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkApi->create_chunk: #{e}"
end
```

#### Using the create_chunk_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReturnQueuedChunk>, Integer, Hash)> create_chunk_with_http_info(tr_dataset, create_chunk_req_payload_enum)

```ruby
begin
  # Create or Upsert Chunk or Chunks
  data, status_code, headers = api_instance.create_chunk_with_http_info(tr_dataset, create_chunk_req_payload_enum)
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
| **create_chunk_req_payload_enum** | [**CreateChunkReqPayloadEnum**](CreateChunkReqPayloadEnum.md) | JSON request payload to create a new chunk (chunk) |  |

### Return type

[**ReturnQueuedChunk**](ReturnQueuedChunk.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_chunk

> delete_chunk(tr_dataset, chunk_id)

Delete Chunk

Delete a chunk by its id. If deleting a root chunk which has a collision, the most recently created collision will become a new root chunk. Auth'ed user or api key must have an admin or owner role for the specified dataset's organization.

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

Delete a chunk by tracking_id. This is useful for when you are coordinating with an external system and want to use the tracking_id to identify the chunk. If deleting a root chunk which has a collision, the most recently created collision will become a new root chunk. Auth'ed user or api key must have an admin or owner role for the specified dataset's organization.

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

This endpoint exists as an alternative to the topic+message concept where our API handles chat memory. With this endpoint, the user is responsible for providing the context window and the prompt. See more in the \"search before generate\" page at docs.trieve.ai.

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
generate_chunks_request = TrieveRubyClient::GenerateChunksRequest.new({chunk_ids: ['chunk_ids_example'], prev_messages: [TrieveRubyClient::ChatMessageProxy.new({content: 'content_example', role: TrieveRubyClient::RoleProxy::SYSTEM})]}) # GenerateChunksRequest | JSON request payload to perform RAG on some chunks (chunks)

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

> <ChunkReturnTypes> get_chunk_by_id(tr_dataset, chunk_id, opts)

Get Chunk By Id

Get a singular chunk by id.

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
opts = {
  x_api_version: TrieveRubyClient::APIVersion::V1 # APIVersion | The API version to use for this request. Defaults to V2 for orgs created after July 12, 2024 and V1 otherwise.
}

begin
  # Get Chunk By Id
  result = api_instance.get_chunk_by_id(tr_dataset, chunk_id, opts)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkApi->get_chunk_by_id: #{e}"
end
```

#### Using the get_chunk_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ChunkReturnTypes>, Integer, Hash)> get_chunk_by_id_with_http_info(tr_dataset, chunk_id, opts)

```ruby
begin
  # Get Chunk By Id
  data, status_code, headers = api_instance.get_chunk_by_id_with_http_info(tr_dataset, chunk_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ChunkReturnTypes>
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkApi->get_chunk_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **chunk_id** | **String** | Id of the chunk you want to fetch. |  |
| **x_api_version** | [**APIVersion**](.md) | The API version to use for this request. Defaults to V2 for orgs created after July 12, 2024 and V1 otherwise. | [optional] |

### Return type

[**ChunkReturnTypes**](ChunkReturnTypes.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_chunk_by_tracking_id

> <ChunkReturnTypes> get_chunk_by_tracking_id(tr_dataset, tracking_id, opts)

Get Chunk By Tracking Id

Get a singular chunk by tracking_id. This is useful for when you are coordinating with an external system and want to use your own id as the primary reference for a chunk.

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
opts = {
  x_api_version: TrieveRubyClient::APIVersion::V1 # APIVersion | The API version to use for this request. Defaults to V2 for orgs created after July 12, 2024 and V1 otherwise.
}

begin
  # Get Chunk By Tracking Id
  result = api_instance.get_chunk_by_tracking_id(tr_dataset, tracking_id, opts)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkApi->get_chunk_by_tracking_id: #{e}"
end
```

#### Using the get_chunk_by_tracking_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ChunkReturnTypes>, Integer, Hash)> get_chunk_by_tracking_id_with_http_info(tr_dataset, tracking_id, opts)

```ruby
begin
  # Get Chunk By Tracking Id
  data, status_code, headers = api_instance.get_chunk_by_tracking_id_with_http_info(tr_dataset, tracking_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ChunkReturnTypes>
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkApi->get_chunk_by_tracking_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **tracking_id** | **String** | tracking_id of the chunk you want to fetch |  |
| **x_api_version** | [**APIVersion**](.md) | The API version to use for this request. Defaults to V2 for orgs created after July 12, 2024 and V1 otherwise. | [optional] |

### Return type

[**ChunkReturnTypes**](ChunkReturnTypes.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_chunks_by_ids

> <Array<ChunkReturnTypes>> get_chunks_by_ids(tr_dataset, get_chunks_data, opts)

Get Chunks By Ids

Get multiple chunks by multiple ids.

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
opts = {
  x_api_version: TrieveRubyClient::APIVersion::V1 # APIVersion | The API version to use for this request. Defaults to V2 for orgs created after July 12, 2024 and V1 otherwise.
}

begin
  # Get Chunks By Ids
  result = api_instance.get_chunks_by_ids(tr_dataset, get_chunks_data, opts)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkApi->get_chunks_by_ids: #{e}"
end
```

#### Using the get_chunks_by_ids_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ChunkReturnTypes>>, Integer, Hash)> get_chunks_by_ids_with_http_info(tr_dataset, get_chunks_data, opts)

```ruby
begin
  # Get Chunks By Ids
  data, status_code, headers = api_instance.get_chunks_by_ids_with_http_info(tr_dataset, get_chunks_data, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ChunkReturnTypes>>
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkApi->get_chunks_by_ids_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **get_chunks_data** | [**GetChunksData**](GetChunksData.md) | JSON request payload to get the chunks in the request |  |
| **x_api_version** | [**APIVersion**](.md) | The API version to use for this request. Defaults to V2 for orgs created after July 12, 2024 and V1 otherwise. | [optional] |

### Return type

[**Array&lt;ChunkReturnTypes&gt;**](ChunkReturnTypes.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_chunks_by_tracking_ids

> <Array<ChunkReturnTypes>> get_chunks_by_tracking_ids(tr_dataset, get_tracking_chunks_data, opts)

Get Chunks By Tracking Ids

Get multiple chunks by ids.

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
opts = {
  x_api_version: TrieveRubyClient::APIVersion::V1 # APIVersion | The API version to use for this request. Defaults to V2 for orgs created after July 12, 2024 and V1 otherwise.
}

begin
  # Get Chunks By Tracking Ids
  result = api_instance.get_chunks_by_tracking_ids(tr_dataset, get_tracking_chunks_data, opts)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkApi->get_chunks_by_tracking_ids: #{e}"
end
```

#### Using the get_chunks_by_tracking_ids_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ChunkReturnTypes>>, Integer, Hash)> get_chunks_by_tracking_ids_with_http_info(tr_dataset, get_tracking_chunks_data, opts)

```ruby
begin
  # Get Chunks By Tracking Ids
  data, status_code, headers = api_instance.get_chunks_by_tracking_ids_with_http_info(tr_dataset, get_tracking_chunks_data, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ChunkReturnTypes>>
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkApi->get_chunks_by_tracking_ids_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **get_tracking_chunks_data** | [**GetTrackingChunksData**](GetTrackingChunksData.md) | JSON request payload to get the chunks in the request |  |
| **x_api_version** | [**APIVersion**](.md) | The API version to use for this request. Defaults to V2 for orgs created after July 12, 2024 and V1 otherwise. | [optional] |

### Return type

[**Array&lt;ChunkReturnTypes&gt;**](ChunkReturnTypes.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_recommended_chunks

> <RecommendResponseTypes> get_recommended_chunks(tr_dataset, recommend_chunks_request, opts)

Get Recommended Chunks

Get recommendations of chunks similar to the positive samples in the request and dissimilar to the negative. You must provide at least one of either positive_chunk_ids or positive_tracking_ids.

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
opts = {
  x_api_version: TrieveRubyClient::APIVersion::V1 # APIVersion | The API version to use for this request. Defaults to V2 for orgs created after July 12, 2024 and V1 otherwise.
}

begin
  # Get Recommended Chunks
  result = api_instance.get_recommended_chunks(tr_dataset, recommend_chunks_request, opts)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkApi->get_recommended_chunks: #{e}"
end
```

#### Using the get_recommended_chunks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RecommendResponseTypes>, Integer, Hash)> get_recommended_chunks_with_http_info(tr_dataset, recommend_chunks_request, opts)

```ruby
begin
  # Get Recommended Chunks
  data, status_code, headers = api_instance.get_recommended_chunks_with_http_info(tr_dataset, recommend_chunks_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RecommendResponseTypes>
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkApi->get_recommended_chunks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **recommend_chunks_request** | [**RecommendChunksRequest**](RecommendChunksRequest.md) | JSON request payload to get recommendations of chunks similar to the chunks in the request |  |
| **x_api_version** | [**APIVersion**](.md) | The API version to use for this request. Defaults to V2 for orgs created after July 12, 2024 and V1 otherwise. | [optional] |

### Return type

[**RecommendResponseTypes**](RecommendResponseTypes.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_suggested_queries

> <SuggestedQueriesResponse> get_suggested_queries(tr_dataset, suggested_queries_req_payload)

Generate suggested queries

This endpoint will generate 3 suggested queries based off a hybrid search using RAG with the query provided in the request body and return them as a JSON object.

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
suggested_queries_req_payload = TrieveRubyClient::SuggestedQueriesReqPayload.new({query: 'query_example'}) # SuggestedQueriesReqPayload | JSON request payload to get alternative suggested queries

begin
  # Generate suggested queries
  result = api_instance.get_suggested_queries(tr_dataset, suggested_queries_req_payload)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkApi->get_suggested_queries: #{e}"
end
```

#### Using the get_suggested_queries_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SuggestedQueriesResponse>, Integer, Hash)> get_suggested_queries_with_http_info(tr_dataset, suggested_queries_req_payload)

```ruby
begin
  # Generate suggested queries
  data, status_code, headers = api_instance.get_suggested_queries_with_http_info(tr_dataset, suggested_queries_req_payload)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SuggestedQueriesResponse>
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkApi->get_suggested_queries_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **suggested_queries_req_payload** | [**SuggestedQueriesReqPayload**](SuggestedQueriesReqPayload.md) | JSON request payload to get alternative suggested queries |  |

### Return type

[**SuggestedQueriesResponse**](SuggestedQueriesResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## search_chunks

> <SearchResponseTypes> search_chunks(tr_dataset, search_chunks_req_payload, opts)

Search

This route provides the primary search functionality for the API. It can be used to search for chunks by semantic similarity, full-text similarity, or a combination of both. Results' `chunk_html` values will be modified with `<b><mark>` tags for sub-sentence highlighting.

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
search_chunks_req_payload = TrieveRubyClient::SearchChunksReqPayload.new({query: 'query_example', search_type: TrieveRubyClient::SearchMethod::FULL_TEXT}) # SearchChunksReqPayload | JSON request payload to semantically search for chunks (chunks)
opts = {
  x_api_version: TrieveRubyClient::APIVersion::V1 # APIVersion | The API version to use for this request. Defaults to V2 for orgs created after July 12, 2024 and V1 otherwise.
}

begin
  # Search
  result = api_instance.search_chunks(tr_dataset, search_chunks_req_payload, opts)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkApi->search_chunks: #{e}"
end
```

#### Using the search_chunks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SearchResponseTypes>, Integer, Hash)> search_chunks_with_http_info(tr_dataset, search_chunks_req_payload, opts)

```ruby
begin
  # Search
  data, status_code, headers = api_instance.search_chunks_with_http_info(tr_dataset, search_chunks_req_payload, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchResponseTypes>
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkApi->search_chunks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **search_chunks_req_payload** | [**SearchChunksReqPayload**](SearchChunksReqPayload.md) | JSON request payload to semantically search for chunks (chunks) |  |
| **x_api_version** | [**APIVersion**](.md) | The API version to use for this request. Defaults to V2 for orgs created after July 12, 2024 and V1 otherwise. | [optional] |

### Return type

[**SearchResponseTypes**](SearchResponseTypes.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_chunk

> update_chunk(tr_dataset, update_chunk_req_payload)

Update Chunk

Update a chunk. If you try to change the tracking_id of the chunk to have the same tracking_id as an existing chunk, the request will fail. Auth'ed user or api key must have an admin or owner role for the specified dataset's organization.

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
update_chunk_req_payload = TrieveRubyClient::UpdateChunkReqPayload.new # UpdateChunkReqPayload | JSON request payload to update a chunk (chunk)

begin
  # Update Chunk
  api_instance.update_chunk(tr_dataset, update_chunk_req_payload)
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling ChunkApi->update_chunk: #{e}"
end
```

#### Using the update_chunk_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_chunk_with_http_info(tr_dataset, update_chunk_req_payload)

```ruby
begin
  # Update Chunk
  data, status_code, headers = api_instance.update_chunk_with_http_info(tr_dataset, update_chunk_req_payload)
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
| **update_chunk_req_payload** | [**UpdateChunkReqPayload**](UpdateChunkReqPayload.md) | JSON request payload to update a chunk (chunk) |  |

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

Update a chunk by tracking_id. This is useful for when you are coordinating with an external system and want to use the tracking_id to identify the chunk. Auth'ed user or api key must have an admin or owner role for the specified dataset's organization.

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

