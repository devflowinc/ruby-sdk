# TrieveRubyClient::OrganizationApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_organization**](OrganizationApi.md#create_organization) | **POST** /api/organization | create_organization |
| [**delete_organization_by_id**](OrganizationApi.md#delete_organization_by_id) | **DELETE** /api/organization/{organization_id} | delete_organization |
| [**get_organization_by_id**](OrganizationApi.md#get_organization_by_id) | **GET** /api/organization/{organization_id} | get_organization |
| [**get_organization_usage**](OrganizationApi.md#get_organization_usage) | **GET** /api/organization/usage/{organization_id} | get_organization_usage |
| [**get_organization_users**](OrganizationApi.md#get_organization_users) | **GET** /api/organization/users/{organization_id} | get_organization_users |
| [**update_organization**](OrganizationApi.md#update_organization) | **PUT** /api/organization | update_organization |


## create_organization

> <Organization> create_organization(create_organization_data)

create_organization

create_organization  Create a new organization. The auth'ed user who creates the organization will be the default owner of the organization.

### Examples

```ruby
require 'time'
require 'trieve_ruby_client'
# setup authorization
TrieveRubyClient.configure do |config|
  # Configure API key authorization: Cookie
  config.api_key['Cookie'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Cookie'] = 'Bearer'

  # Configure API key authorization: ApiKey
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'
end

api_instance = TrieveRubyClient::OrganizationApi.new
create_organization_data = TrieveRubyClient::CreateOrganizationData.new({name: 'name_example'}) # CreateOrganizationData | The organization data that you want to create

begin
  # create_organization
  result = api_instance.create_organization(create_organization_data)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling OrganizationApi->create_organization: #{e}"
end
```

#### Using the create_organization_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Organization>, Integer, Hash)> create_organization_with_http_info(create_organization_data)

```ruby
begin
  # create_organization
  data, status_code, headers = api_instance.create_organization_with_http_info(create_organization_data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Organization>
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling OrganizationApi->create_organization_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_organization_data** | [**CreateOrganizationData**](CreateOrganizationData.md) | The organization data that you want to create |  |

### Return type

[**Organization**](Organization.md)

### Authorization

[Cookie](../README.md#Cookie), [ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_organization_by_id

> <Organization> delete_organization_by_id(tr_organization, organization_id)

delete_organization

delete_organization  Delete an organization by its id. The auth'ed user must be an owner of the organization to delete it.

### Examples

```ruby
require 'time'
require 'trieve_ruby_client'
# setup authorization
TrieveRubyClient.configure do |config|
  # Configure API key authorization: Cookie
  config.api_key['Cookie'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Cookie'] = 'Bearer'

  # Configure API key authorization: ApiKey
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'
end

api_instance = TrieveRubyClient::OrganizationApi.new
tr_organization = 'tr_organization_example' # String | The organization id to use for the request
organization_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the organization you want to fetch.

begin
  # delete_organization
  result = api_instance.delete_organization_by_id(tr_organization, organization_id)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling OrganizationApi->delete_organization_by_id: #{e}"
end
```

#### Using the delete_organization_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Organization>, Integer, Hash)> delete_organization_by_id_with_http_info(tr_organization, organization_id)

```ruby
begin
  # delete_organization
  data, status_code, headers = api_instance.delete_organization_by_id_with_http_info(tr_organization, organization_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Organization>
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling OrganizationApi->delete_organization_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_organization** | **String** | The organization id to use for the request |  |
| **organization_id** | **String** | The id of the organization you want to fetch. |  |

### Return type

[**Organization**](Organization.md)

### Authorization

[Cookie](../README.md#Cookie), [ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_organization_by_id

> <Organization> get_organization_by_id(tr_organization, organization_id)

get_organization

get_organization  Fetch the details of an organization by its id. The auth'ed user must be an admin or owner of the organization to fetch it.

### Examples

```ruby
require 'time'
require 'trieve_ruby_client'
# setup authorization
TrieveRubyClient.configure do |config|
  # Configure API key authorization: Cookie
  config.api_key['Cookie'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Cookie'] = 'Bearer'

  # Configure API key authorization: ApiKey
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'
end

api_instance = TrieveRubyClient::OrganizationApi.new
tr_organization = 'tr_organization_example' # String | The organization id to use for the request
organization_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the organization you want to fetch.

begin
  # get_organization
  result = api_instance.get_organization_by_id(tr_organization, organization_id)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling OrganizationApi->get_organization_by_id: #{e}"
end
```

#### Using the get_organization_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Organization>, Integer, Hash)> get_organization_by_id_with_http_info(tr_organization, organization_id)

```ruby
begin
  # get_organization
  data, status_code, headers = api_instance.get_organization_by_id_with_http_info(tr_organization, organization_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Organization>
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling OrganizationApi->get_organization_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_organization** | **String** | The organization id to use for the request |  |
| **organization_id** | **String** | The id of the organization you want to fetch. |  |

### Return type

[**Organization**](Organization.md)

### Authorization

[Cookie](../README.md#Cookie), [ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_organization_usage

> <OrganizationUsageCount> get_organization_usage(tr_organization, organization_id)

get_organization_usage

get_organization_usage  Fetch the current usage specification of an organization by its id. The auth'ed user must be an admin or owner of the organization to fetch it.

### Examples

```ruby
require 'time'
require 'trieve_ruby_client'
# setup authorization
TrieveRubyClient.configure do |config|
  # Configure API key authorization: Cookie
  config.api_key['Cookie'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Cookie'] = 'Bearer'

  # Configure API key authorization: ApiKey
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'
end

api_instance = TrieveRubyClient::OrganizationApi.new
tr_organization = 'tr_organization_example' # String | The organization id to use for the request
organization_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the organization you want to fetch the usage of.

begin
  # get_organization_usage
  result = api_instance.get_organization_usage(tr_organization, organization_id)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling OrganizationApi->get_organization_usage: #{e}"
end
```

#### Using the get_organization_usage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrganizationUsageCount>, Integer, Hash)> get_organization_usage_with_http_info(tr_organization, organization_id)

```ruby
begin
  # get_organization_usage
  data, status_code, headers = api_instance.get_organization_usage_with_http_info(tr_organization, organization_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrganizationUsageCount>
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling OrganizationApi->get_organization_usage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_organization** | **String** | The organization id to use for the request |  |
| **organization_id** | **String** | The id of the organization you want to fetch the usage of. |  |

### Return type

[**OrganizationUsageCount**](OrganizationUsageCount.md)

### Authorization

[Cookie](../README.md#Cookie), [ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_organization_users

> <Array<SlimUser>> get_organization_users(tr_organization, organization_id)

get_organization_users

get_organization_users  Fetch the users of an organization by its id. The auth'ed user must be an admin or owner of the organization to fetch it.

### Examples

```ruby
require 'time'
require 'trieve_ruby_client'
# setup authorization
TrieveRubyClient.configure do |config|
  # Configure API key authorization: Cookie
  config.api_key['Cookie'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Cookie'] = 'Bearer'

  # Configure API key authorization: ApiKey
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'
end

api_instance = TrieveRubyClient::OrganizationApi.new
tr_organization = 'tr_organization_example' # String | The organization id to use for the request
organization_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the organization you want to fetch the users of.

begin
  # get_organization_users
  result = api_instance.get_organization_users(tr_organization, organization_id)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling OrganizationApi->get_organization_users: #{e}"
end
```

#### Using the get_organization_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SlimUser>>, Integer, Hash)> get_organization_users_with_http_info(tr_organization, organization_id)

```ruby
begin
  # get_organization_users
  data, status_code, headers = api_instance.get_organization_users_with_http_info(tr_organization, organization_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SlimUser>>
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling OrganizationApi->get_organization_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_organization** | **String** | The organization id to use for the request |  |
| **organization_id** | **String** | The id of the organization you want to fetch the users of. |  |

### Return type

[**Array&lt;SlimUser&gt;**](SlimUser.md)

### Authorization

[Cookie](../README.md#Cookie), [ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_organization

> <Organization> update_organization(tr_organization, update_organization_data)

update_organization

update_organization  Update an organization. Only the owner of the organization can update it.

### Examples

```ruby
require 'time'
require 'trieve_ruby_client'
# setup authorization
TrieveRubyClient.configure do |config|
  # Configure API key authorization: Cookie
  config.api_key['Cookie'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Cookie'] = 'Bearer'

  # Configure API key authorization: ApiKey
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKey'] = 'Bearer'
end

api_instance = TrieveRubyClient::OrganizationApi.new
tr_organization = 'tr_organization_example' # String | The organization id to use for the request
update_organization_data = TrieveRubyClient::UpdateOrganizationData.new({organization_id: 'organization_id_example'}) # UpdateOrganizationData | The organization data that you want to update

begin
  # update_organization
  result = api_instance.update_organization(tr_organization, update_organization_data)
  p result
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling OrganizationApi->update_organization: #{e}"
end
```

#### Using the update_organization_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Organization>, Integer, Hash)> update_organization_with_http_info(tr_organization, update_organization_data)

```ruby
begin
  # update_organization
  data, status_code, headers = api_instance.update_organization_with_http_info(tr_organization, update_organization_data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Organization>
rescue TrieveRubyClient::ApiError => e
  puts "Error when calling OrganizationApi->update_organization_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tr_organization** | **String** | The organization id to use for the request |  |
| **update_organization_data** | [**UpdateOrganizationData**](UpdateOrganizationData.md) | The organization data that you want to update |  |

### Return type

[**Organization**](Organization.md)

### Authorization

[Cookie](../README.md#Cookie), [ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

