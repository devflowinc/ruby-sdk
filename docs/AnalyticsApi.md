# TrieveRubyClient::AnalyticsApi

All URIs are relative to *https://api.trieve.ai*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_cluster_analytics**](AnalyticsApi.md#get_cluster_analytics) | **POST** /api/analytics/search/cluster | Get Cluster Analytics |
| [**get_rag_analytics**](AnalyticsApi.md#get_rag_analytics) | **POST** /api/analytics/rag | Get RAG Analytics |
| [**get_recommendation_analytics**](AnalyticsApi.md#get_recommendation_analytics) | **POST** /api/analytics/recommendation | Get Recommendation Analytics |
| [**get_search_analytics**](AnalyticsApi.md#get_search_analytics) | **POST** /api/analytics/search | Get Search Analytics |


## get_cluster_analytics

> <ClusterAnalyticsResponse> get_cluster_analytics(tr_dataset, cluster_analytics)

Get Cluster Analytics

This route allows you to view the cluster analytics for a dataset.

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

api_instance = TrieveRubyClient::AnalyticsApi.new
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request
cluster_analytics = TrieveRubyClient::ClusterQueries.new({cluster_id: 'cluster_id_example', type: 'cluster_queries'}) # ClusterAnalytics | JSON request payload to filter the graph

begin
  # Get Cluster Analytics
  result = api_instance.get_cluster_analytics(tr_dataset, cluster_analytics)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling AnalyticsApi->get_cluster_analytics: #{e}"
end
```

#### Using the get_cluster_analytics_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClusterAnalyticsResponse>, Integer, Hash)> get_cluster_analytics_with_http_info(tr_dataset, cluster_analytics)

```ruby
begin
  # Get Cluster Analytics
  data, status_code, headers = api_instance.get_cluster_analytics_with_http_info(tr_dataset, cluster_analytics)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClusterAnalyticsResponse>
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling AnalyticsApi->get_cluster_analytics_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **cluster_analytics** | [**ClusterAnalytics**](ClusterAnalytics.md) | JSON request payload to filter the graph |  |

### Return type

[**ClusterAnalyticsResponse**](ClusterAnalyticsResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_rag_analytics

> <RAGAnalyticsResponse> get_rag_analytics(tr_dataset, rag_analytics)

Get RAG Analytics

This route allows you to view the RAG analytics for a dataset.

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

api_instance = TrieveRubyClient::AnalyticsApi.new
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request
rag_analytics = TrieveRubyClient::RAGQueries.new({type: 'rag_queries'}) # RAGAnalytics | JSON request payload to filter the graph

begin
  # Get RAG Analytics
  result = api_instance.get_rag_analytics(tr_dataset, rag_analytics)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling AnalyticsApi->get_rag_analytics: #{e}"
end
```

#### Using the get_rag_analytics_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RAGAnalyticsResponse>, Integer, Hash)> get_rag_analytics_with_http_info(tr_dataset, rag_analytics)

```ruby
begin
  # Get RAG Analytics
  data, status_code, headers = api_instance.get_rag_analytics_with_http_info(tr_dataset, rag_analytics)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RAGAnalyticsResponse>
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling AnalyticsApi->get_rag_analytics_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **rag_analytics** | [**RAGAnalytics**](RAGAnalytics.md) | JSON request payload to filter the graph |  |

### Return type

[**RAGAnalyticsResponse**](RAGAnalyticsResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_recommendation_analytics

> <RecommendationAnalyticsResponse> get_recommendation_analytics(tr_dataset, recommendation_analytics)

Get Recommendation Analytics

This route allows you to view the recommendation analytics for a dataset.

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

api_instance = TrieveRubyClient::AnalyticsApi.new
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request
recommendation_analytics = TrieveRubyClient::LowConfidenceRecommendations.new({type: 'low_confidence_recommendations'}) # RecommendationAnalytics | JSON request payload to filter the graph

begin
  # Get Recommendation Analytics
  result = api_instance.get_recommendation_analytics(tr_dataset, recommendation_analytics)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling AnalyticsApi->get_recommendation_analytics: #{e}"
end
```

#### Using the get_recommendation_analytics_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RecommendationAnalyticsResponse>, Integer, Hash)> get_recommendation_analytics_with_http_info(tr_dataset, recommendation_analytics)

```ruby
begin
  # Get Recommendation Analytics
  data, status_code, headers = api_instance.get_recommendation_analytics_with_http_info(tr_dataset, recommendation_analytics)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RecommendationAnalyticsResponse>
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling AnalyticsApi->get_recommendation_analytics_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **recommendation_analytics** | [**RecommendationAnalytics**](RecommendationAnalytics.md) | JSON request payload to filter the graph |  |

### Return type

[**RecommendationAnalyticsResponse**](RecommendationAnalyticsResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_search_analytics

> <SearchAnalyticsResponse> get_search_analytics(tr_dataset, search_analytics)

Get Search Analytics

This route allows you to view the search analytics for a dataset.

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

api_instance = TrieveRubyClient::AnalyticsApi.new
tr_dataset = 'tr_dataset_example' # String | The dataset id to use for the request
search_analytics = TrieveRubyClient::CountQueries.new({type: 'count_queries'}) # SearchAnalytics | JSON request payload to filter the graph

begin
  # Get Search Analytics
  result = api_instance.get_search_analytics(tr_dataset, search_analytics)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling AnalyticsApi->get_search_analytics: #{e}"
end
```

#### Using the get_search_analytics_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SearchAnalyticsResponse>, Integer, Hash)> get_search_analytics_with_http_info(tr_dataset, search_analytics)

```ruby
begin
  # Get Search Analytics
  data, status_code, headers = api_instance.get_search_analytics_with_http_info(tr_dataset, search_analytics)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchAnalyticsResponse>
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling AnalyticsApi->get_search_analytics_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_dataset** | **String** | The dataset id to use for the request |  |
| **search_analytics** | [**SearchAnalytics**](SearchAnalytics.md) | JSON request payload to filter the graph |  |

### Return type

[**SearchAnalyticsResponse**](SearchAnalyticsResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

