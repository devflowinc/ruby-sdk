# TrieveRubyClient::DatasetApi

All URIs are relative to *https://api.trieve.ai*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**clear_dataset**](DatasetApi.md#clear_dataset) | **PUT** /api/dataset/clear/{dataset_id} | Clear Dataset |
| [**create_dataset**](DatasetApi.md#create_dataset) | **POST** /api/dataset | Create dataset |
| [**delete_dataset**](DatasetApi.md#delete_dataset) | **DELETE** /api/dataset/{dataset_id} | Delete Dataset |
| [**delete_dataset_by_tracking_id**](DatasetApi.md#delete_dataset_by_tracking_id) | **DELETE** /api/dataset/tracking_id/{tracking_id} | Delete Dataset by Tracking ID |
| [**get_client_dataset_config**](DatasetApi.md#get_client_dataset_config) | **GET** /api/dataset/envs | Get Client Configuration |
| [**get_dataset**](DatasetApi.md#get_dataset) | **GET** /api/dataset/{dataset_id} | Get Dataset |
| [**get_datasets_from_organization**](DatasetApi.md#get_datasets_from_organization) | **GET** /api/dataset/organization/{organization_id} | Get Datasets from Organization |
| [**get_usage_by_dataset_id**](DatasetApi.md#get_usage_by_dataset_id) | **GET** /api/dataset/usage/{dataset_id} | Get Usage By Dataset ID |
| [**update_dataset**](DatasetApi.md#update_dataset) | **PUT** /api/dataset | Update Dataset |


## clear_dataset

> clear_dataset(tr_dataset, dataset_id)

Clear Dataset

Clear Dataset  Clears a dataset. The auth'ed user must be an owner of the organization to clear a dataset.

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

api_instance = TrieveRubyClient::DatasetApi.new
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request
dataset_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the dataset you want to clear.

begin
  # Clear Dataset
  api_instance.clear_dataset(tr_dataset, dataset_id)
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling DatasetApi->clear_dataset: #{e}"
end
```

#### Using the clear_dataset_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> clear_dataset_with_http_info(tr_dataset, dataset_id)

```ruby
begin
  # Clear Dataset
  data, status_code, headers = api_instance.clear_dataset_with_http_info(tr_dataset, dataset_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling DatasetApi->clear_dataset_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **dataset_id** | **String** | The id of the dataset you want to clear. |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_dataset

> <Dataset> create_dataset(tr_organization, create_dataset_request)

Create dataset

Create dataset  Create a new dataset. The auth'ed user must be an owner of the organization to create a dataset.

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

api_instance = TrieveRubyClient::DatasetApi.new
tr_organization = 'tr_organization_example' # String | The organization id to use for the request
create_dataset_request = TrieveRubyClient::CreateDatasetRequest.new({client_configuration: 3.56, dataset_name: 'dataset_name_example', organization_id: 'organization_id_example', server_configuration: 3.56}) # CreateDatasetRequest | JSON request payload to create a new dataset

begin
  # Create dataset
  result = api_instance.create_dataset(tr_organization, create_dataset_request)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling DatasetApi->create_dataset: #{e}"
end
```

#### Using the create_dataset_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Dataset>, Integer, Hash)> create_dataset_with_http_info(tr_organization, create_dataset_request)

```ruby
begin
  # Create dataset
  data, status_code, headers = api_instance.create_dataset_with_http_info(tr_organization, create_dataset_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Dataset>
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling DatasetApi->create_dataset_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_organization** | **String** | The organization id to use for the request |  |
| **create_dataset_request** | [**CreateDatasetRequest**](CreateDatasetRequest.md) | JSON request payload to create a new dataset |  |

### Return type

[**Dataset**](Dataset.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_dataset

> delete_dataset(tr_dataset, dataset_id)

Delete Dataset

Delete Dataset  Delete a dataset. The auth'ed user must be an owner of the organization to delete a dataset.

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

api_instance = TrieveRubyClient::DatasetApi.new
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request
dataset_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the dataset you want to delete.

begin
  # Delete Dataset
  api_instance.delete_dataset(tr_dataset, dataset_id)
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling DatasetApi->delete_dataset: #{e}"
end
```

#### Using the delete_dataset_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_dataset_with_http_info(tr_dataset, dataset_id)

```ruby
begin
  # Delete Dataset
  data, status_code, headers = api_instance.delete_dataset_with_http_info(tr_dataset, dataset_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling DatasetApi->delete_dataset_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **dataset_id** | **String** | The id of the dataset you want to delete. |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_dataset_by_tracking_id

> delete_dataset_by_tracking_id(tr_dataset, tracking_id)

Delete Dataset by Tracking ID

Delete Dataset by Tracking ID  Delete a dataset by its tracking id. The auth'ed user must be an owner of the organization to delete a dataset.

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

api_instance = TrieveRubyClient::DatasetApi.new
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request
tracking_id = 'tracking_id_example' # String | The tracking id of the dataset you want to delete.

begin
  # Delete Dataset by Tracking ID
  api_instance.delete_dataset_by_tracking_id(tr_dataset, tracking_id)
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling DatasetApi->delete_dataset_by_tracking_id: #{e}"
end
```

#### Using the delete_dataset_by_tracking_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_dataset_by_tracking_id_with_http_info(tr_dataset, tracking_id)

```ruby
begin
  # Delete Dataset by Tracking ID
  data, status_code, headers = api_instance.delete_dataset_by_tracking_id_with_http_info(tr_dataset, tracking_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling DatasetApi->delete_dataset_by_tracking_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **tracking_id** | **String** | The tracking id of the dataset you want to delete. |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_client_dataset_config

> <ClientDatasetConfiguration> get_client_dataset_config(tr_dataset)

Get Client Configuration

Get Client Configuration  Get the client configuration for a dataset. Will use the TR-D

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

api_instance = TrieveRubyClient::DatasetApi.new
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request

begin
  # Get Client Configuration
  result = api_instance.get_client_dataset_config(tr_dataset)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling DatasetApi->get_client_dataset_config: #{e}"
end
```

#### Using the get_client_dataset_config_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClientDatasetConfiguration>, Integer, Hash)> get_client_dataset_config_with_http_info(tr_dataset)

```ruby
begin
  # Get Client Configuration
  data, status_code, headers = api_instance.get_client_dataset_config_with_http_info(tr_dataset)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClientDatasetConfiguration>
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling DatasetApi->get_client_dataset_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |

### Return type

[**ClientDatasetConfiguration**](ClientDatasetConfiguration.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_dataset

> <Dataset> get_dataset(tr_dataset, dataset_id)

Get Dataset

Get Dataset  Get a dataset by id. Auth'ed user or api key must have an admin or owner role for the specified dataset's organization.

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

api_instance = TrieveRubyClient::DatasetApi.new
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request
dataset_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the dataset you want to retrieve.

begin
  # Get Dataset
  result = api_instance.get_dataset(tr_dataset, dataset_id)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling DatasetApi->get_dataset: #{e}"
end
```

#### Using the get_dataset_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Dataset>, Integer, Hash)> get_dataset_with_http_info(tr_dataset, dataset_id)

```ruby
begin
  # Get Dataset
  data, status_code, headers = api_instance.get_dataset_with_http_info(tr_dataset, dataset_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Dataset>
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling DatasetApi->get_dataset_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **dataset_id** | **String** | The id of the dataset you want to retrieve. |  |

### Return type

[**Dataset**](Dataset.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_datasets_from_organization

> <Array<DatasetAndUsage>> get_datasets_from_organization(tr_organization, organization_id, opts)

Get Datasets from Organization

Get Datasets from Organization  Get all datasets for an organization. Auth'ed user or api key must have an admin or owner role for the specified dataset's organization.

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

api_instance = TrieveRubyClient::DatasetApi.new
tr_organization = 'tr_organization_example' # String | The organization id to use for the request
organization_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | id of the organization you want to retrieve datasets for
opts = {
  limit: 789, # Integer | The number of records to return
  offset: 789 # Integer | The number of records to skip
}

begin
  # Get Datasets from Organization
  result = api_instance.get_datasets_from_organization(tr_organization, organization_id, opts)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling DatasetApi->get_datasets_from_organization: #{e}"
end
```

#### Using the get_datasets_from_organization_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<DatasetAndUsage>>, Integer, Hash)> get_datasets_from_organization_with_http_info(tr_organization, organization_id, opts)

```ruby
begin
  # Get Datasets from Organization
  data, status_code, headers = api_instance.get_datasets_from_organization_with_http_info(tr_organization, organization_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<DatasetAndUsage>>
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling DatasetApi->get_datasets_from_organization_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_organization** | **String** | The organization id to use for the request |  |
| **organization_id** | **String** | id of the organization you want to retrieve datasets for |  |
| **limit** | **Integer** | The number of records to return | [optional] |
| **offset** | **Integer** | The number of records to skip | [optional] |

### Return type

[**Array&lt;DatasetAndUsage&gt;**](DatasetAndUsage.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_usage_by_dataset_id

> <DatasetUsageCount> get_usage_by_dataset_id(tr_dataset, dataset_id)

Get Usage By Dataset ID

Get Usage By Dataset ID  Get the usage for a dataset by its id.

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

api_instance = TrieveRubyClient::DatasetApi.new
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request
dataset_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the dataset you want to retrieve usage for.

begin
  # Get Usage By Dataset ID
  result = api_instance.get_usage_by_dataset_id(tr_dataset, dataset_id)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling DatasetApi->get_usage_by_dataset_id: #{e}"
end
```

#### Using the get_usage_by_dataset_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DatasetUsageCount>, Integer, Hash)> get_usage_by_dataset_id_with_http_info(tr_dataset, dataset_id)

```ruby
begin
  # Get Usage By Dataset ID
  data, status_code, headers = api_instance.get_usage_by_dataset_id_with_http_info(tr_dataset, dataset_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DatasetUsageCount>
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling DatasetApi->get_usage_by_dataset_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **dataset_id** | **String** | The id of the dataset you want to retrieve usage for. |  |

### Return type

[**DatasetUsageCount**](DatasetUsageCount.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_dataset

> <Dataset> update_dataset(tr_organization, update_dataset_request)

Update Dataset

Update Dataset  Update a dataset. The auth'ed user must be an owner of the organization to update a dataset.

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

api_instance = TrieveRubyClient::DatasetApi.new
tr_organization = 'tr_organization_example' # String | The organization id to use for the request
update_dataset_request = TrieveRubyClient::UpdateDatasetRequest.new # UpdateDatasetRequest | JSON request payload to update a dataset

begin
  # Update Dataset
  result = api_instance.update_dataset(tr_organization, update_dataset_request)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling DatasetApi->update_dataset: #{e}"
end
```

#### Using the update_dataset_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Dataset>, Integer, Hash)> update_dataset_with_http_info(tr_organization, update_dataset_request)

```ruby
begin
  # Update Dataset
  data, status_code, headers = api_instance.update_dataset_with_http_info(tr_organization, update_dataset_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Dataset>
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling DatasetApi->update_dataset_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_organization** | **String** | The organization id to use for the request |  |
| **update_dataset_request** | [**UpdateDatasetRequest**](UpdateDatasetRequest.md) | JSON request payload to update a dataset |  |

### Return type

[**Dataset**](Dataset.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

