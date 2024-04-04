# TrieveRubyClient::SearchOverGroupsResponseTypes

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'trieve_ruby_client'

TrieveRubyClient::SearchOverGroupsResponseTypes.openapi_one_of
# =>
# [
#   :'SearchOverGroupsResponseBody',
#   :'SearchOverGroupsSlimChunksResponseBody'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'trieve_ruby_client'

TrieveRubyClient::SearchOverGroupsResponseTypes.build(data)
# => #<SearchOverGroupsResponseBody:0x00007fdd4aab02a0>

TrieveRubyClient::SearchOverGroupsResponseTypes.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `SearchOverGroupsResponseBody`
- `SearchOverGroupsSlimChunksResponseBody`
- `nil` (if no type matches)

