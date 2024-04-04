# TrieveRubyClient::StripeApi

All URIs are relative to *https://api.trieve.ai*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cancel_subscription**](StripeApi.md#cancel_subscription) | **DELETE** /api/stripe/subscription/{subscription_id} | Cancel Subscription |
| [**direct_to_payment_link**](StripeApi.md#direct_to_payment_link) | **GET** /api/stripe/payment_link/{plan_id}/{organization_id} | Checkout |
| [**get_all_plans**](StripeApi.md#get_all_plans) | **GET** /api/stripe/plans | Get All Plans |
| [**update_subscription_plan**](StripeApi.md#update_subscription_plan) | **PATCH** /api/stripe/subscription_plan/{subscription_id}/{plan_id} | Update Subscription Plan |


## cancel_subscription

> cancel_subscription(tr_organization, subscription_id)

Cancel Subscription

Cancel Subscription  Cancel a subscription by its id

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

api_instance = TrieveRubyClient::StripeApi.new
tr_organization = 'tr_organization_example' # String | The organization id to use for the request
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | id of the subscription you want to cancel

begin
  # Cancel Subscription
  api_instance.cancel_subscription(tr_organization, subscription_id)
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling StripeApi->cancel_subscription: #{e}"
end
```

#### Using the cancel_subscription_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> cancel_subscription_with_http_info(tr_organization, subscription_id)

```ruby
begin
  # Cancel Subscription
  data, status_code, headers = api_instance.cancel_subscription_with_http_info(tr_organization, subscription_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling StripeApi->cancel_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_organization** | **String** | The organization id to use for the request |  |
| **subscription_id** | **String** | id of the subscription you want to cancel |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## direct_to_payment_link

> direct_to_payment_link(plan_id, organization_id)

Checkout

Checkout  Get a direct link to the stripe checkout page for the plan and organization

### Examples

```ruby
require 'time'
require 'trieve_ruby_client'

api_instance = TrieveRubyClient::StripeApi.new
plan_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | id of the plan you want to subscribe to
organization_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | id of the organization you want to subscribe to the plan

begin
  # Checkout
  api_instance.direct_to_payment_link(plan_id, organization_id)
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling StripeApi->direct_to_payment_link: #{e}"
end
```

#### Using the direct_to_payment_link_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> direct_to_payment_link_with_http_info(plan_id, organization_id)

```ruby
begin
  # Checkout
  data, status_code, headers = api_instance.direct_to_payment_link_with_http_info(plan_id, organization_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling StripeApi->direct_to_payment_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_id** | **String** | id of the plan you want to subscribe to |  |
| **organization_id** | **String** | id of the organization you want to subscribe to the plan |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_plans

> <Array<StripePlan>> get_all_plans

Get All Plans

Get All Plans  Get a list of all plans

### Examples

```ruby
require 'time'
require 'trieve_ruby_client'

api_instance = TrieveRubyClient::StripeApi.new

begin
  # Get All Plans
  result = api_instance.get_all_plans
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling StripeApi->get_all_plans: #{e}"
end
```

#### Using the get_all_plans_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<StripePlan>>, Integer, Hash)> get_all_plans_with_http_info

```ruby
begin
  # Get All Plans
  data, status_code, headers = api_instance.get_all_plans_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<StripePlan>>
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling StripeApi->get_all_plans_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;StripePlan&gt;**](StripePlan.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_subscription_plan

> update_subscription_plan(tr_organization, subscription_id, plan_id)

Update Subscription Plan

Update Subscription Plan  Update a subscription to a new plan

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

api_instance = TrieveRubyClient::StripeApi.new
tr_organization = 'tr_organization_example' # String | The organization id to use for the request
subscription_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | id of the subscription you want to update
plan_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | id of the plan you want to subscribe to

begin
  # Update Subscription Plan
  api_instance.update_subscription_plan(tr_organization, subscription_id, plan_id)
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling StripeApi->update_subscription_plan: #{e}"
end
```

#### Using the update_subscription_plan_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_subscription_plan_with_http_info(tr_organization, subscription_id, plan_id)

```ruby
begin
  # Update Subscription Plan
  data, status_code, headers = api_instance.update_subscription_plan_with_http_info(tr_organization, subscription_id, plan_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling StripeApi->update_subscription_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_organization** | **String** | The organization id to use for the request |  |
| **subscription_id** | **String** | id of the subscription you want to update |  |
| **plan_id** | **String** | id of the plan you want to subscribe to |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

