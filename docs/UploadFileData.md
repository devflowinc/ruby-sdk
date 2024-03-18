# TrieveRubyClient::UploadFileData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **base64_file** | **String** | Base64 encoded file. Convert + to -, / to _, and remove the ending &#x3D; if present. This is the standard base64url encoding. |  |
| **create_chunks** | **Boolean** | Create chunks is a boolean which determines whether or not to create chunks from the file. If false, you can manually chunk the file and send the chunks to the create_chunk endpoint with the file_id to associate chunks with the file. Meant mostly for advanced users. | [optional] |
| **description** | **String** | Description is an optional convience field so you do not have to remember what the file contains or is about. It will be included on the group resulting from the file which will hold its chunk. | [optional] |
| **file_mime_type** | **String** | MIME type of the file being uploaded. |  |
| **file_name** | **String** | Name of the file being uploaded, including the extension. |  |
| **link** | **String** | Link to the file. This can also be any string. This can be used to filter when searching for the file&#39;s resulting chunks. The link value will not affect embedding creation. | [optional] |
| **metadata** | **Object** | Metadata is a JSON object which can be used to filter chunks. This is useful for when you want to filter chunks by arbitrary metadata. Unlike with tag filtering, there is a performance hit for filtering on metadata. Will be passed down to the file&#39;s chunks. | [optional] |
| **tag_set** | **Array&lt;String&gt;** | Tag set is a comma separated list of tags which will be passed down to the chunks made from the file. Tags are used to filter chunks when searching. HNSW indices are created for each tag such that there is no performance loss when filtering on them. | [optional] |
| **time_stamp** | **String** | Time stamp should be an ISO 8601 combined date and time without timezone. Time_stamp is used for time window filtering and recency-biasing search results. Will be passed down to the file&#39;s chunks. | [optional] |

## Example

```ruby
require 'trieve_ruby_client'

instance = TrieveRubyClient::UploadFileData.new(
  base64_file: null,
  create_chunks: null,
  description: null,
  file_mime_type: null,
  file_name: null,
  link: null,
  metadata: null,
  tag_set: null,
  time_stamp: null
)
```

