# OpenapiClient::CreateChunkData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chunk_html** | **String** | HTML content of the chunk. This can also be plaintext. The innerText of the HTML will be used to create the embedding vector. The point of using HTML is for convienience, as some users have applications where users submit HTML content. | [optional] |
| **chunk_vector** | **Array&lt;Float&gt;** | Chunk_vector is a vector of floats which can be used instead of generating a new embedding. This is useful for when you are using a pre-embedded dataset. If this is not provided, the innerText of the chunk_html will be used to create the embedding. | [optional] |
| **file_id** | **String** | File_uuid is the uuid of the file that the chunk is associated with. This is used to associate chunks with files. This is useful for when you want to delete a file and all of its associated chunks. | [optional] |
| **group_ids** | **Array&lt;String&gt;** | Group ids are the ids of the groups that the chunk should be placed into. This is useful for when you want to create a chunk and add it to a group or multiple groups in one request. Necessary because this route queues the chunk for ingestion and the chunk may not exist yet immediately after response. | [optional] |
| **group_tracking_ids** | **Array&lt;String&gt;** | Group tracking_ids are the tracking_ids of the groups that the chunk should be placed into. This is useful for when you want to create a chunk and add it to a group or multiple groups in one request. Necessary because this route queues the chunk for ingestion and the chunk may not exist yet immediately after response. | [optional] |
| **link** | **String** | Link to the chunk. This can also be any string. Frequently, this is a link to the source of the chunk. The link value will not affect the embedding creation. | [optional] |
| **metadata** | **Object** | Metadata is a JSON object which can be used to filter chunks. This is useful for when you want to filter chunks by arbitrary metadata. Unlike with tag filtering, there is a performance hit for filtering on metadata. | [optional] |
| **split_avg** | **Boolean** | Split avg is a boolean which tells the server to split the text in the chunk_html into smaller chunks and average their resulting vectors. This is useful for when you want to create a chunk from a large piece of text and want to split it into smaller chunks to create a more fuzzy average dense vector. The sparse vector will be generated normally with no averaging. By default this is false. | [optional] |
| **tag_set** | **Array&lt;String&gt;** | Tag set is a list of tags. This can be used to filter chunks by tag. Unlike with metadata filtering, HNSW indices will exist for each tag such that there is not a performance hit for filtering on them. | [optional] |
| **time_stamp** | **String** | Time_stamp should be an ISO 8601 combined date and time without timezone. It is used for time window filtering and recency-biasing search results. | [optional] |
| **tracking_id** | **String** | Tracking_id is a string which can be used to identify a chunk. This is useful for when you are coordinating with an external system and want to use the tracking_id to identify the chunk. | [optional] |
| **upsert_by_tracking_id** | **Boolean** | Upsert when a chunk with the same tracking_id exists. By default this is false, and the request will fail if a chunk with the same tracking_id exists. If this is true, the chunk will be updated if a chunk with the same tracking_id exists. | [optional] |
| **weight** | **Float** | Weight is a float which can be used to bias search results. This is useful for when you want to bias search results for a chunk. The magnitude only matters relative to other chunks in the chunk&#39;s dataset dataset. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CreateChunkData.new(
  chunk_html: null,
  chunk_vector: null,
  file_id: null,
  group_ids: null,
  group_tracking_ids: null,
  link: null,
  metadata: null,
  split_avg: null,
  tag_set: null,
  time_stamp: null,
  tracking_id: null,
  upsert_by_tracking_id: null,
  weight: null
)
```

