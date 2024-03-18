=begin
#Trieve API

#Trieve OpenAPI Specification. This document describes all of the operations available through the Trieve API.

The version of the OpenAPI document: 0.3.5
Contact: developers@trieve.ai
Generated by: https://openapi-generator.tech
Generator version: 7.4.0

=end

require 'date'
require 'time'

module TrieveRubyClient
  class CreateChunkData
    # HTML content of the chunk. This can also be plaintext. The innerText of the HTML will be used to create the embedding vector. The point of using HTML is for convienience, as some users have applications where users submit HTML content.
    attr_accessor :chunk_html

    # Chunk_vector is a vector of floats which can be used instead of generating a new embedding. This is useful for when you are using a pre-embedded dataset. If this is not provided, the innerText of the chunk_html will be used to create the embedding.
    attr_accessor :chunk_vector

    # File_uuid is the uuid of the file that the chunk is associated with. This is used to associate chunks with files. This is useful for when you want to delete a file and all of its associated chunks.
    attr_accessor :file_id

    # Group ids are the ids of the groups that the chunk should be placed into. This is useful for when you want to create a chunk and add it to a group or multiple groups in one request. Necessary because this route queues the chunk for ingestion and the chunk may not exist yet immediately after response.
    attr_accessor :group_ids

    # Group tracking_ids are the tracking_ids of the groups that the chunk should be placed into. This is useful for when you want to create a chunk and add it to a group or multiple groups in one request. Necessary because this route queues the chunk for ingestion and the chunk may not exist yet immediately after response.
    attr_accessor :group_tracking_ids

    # Link to the chunk. This can also be any string. Frequently, this is a link to the source of the chunk. The link value will not affect the embedding creation.
    attr_accessor :link

    # Metadata is a JSON object which can be used to filter chunks. This is useful for when you want to filter chunks by arbitrary metadata. Unlike with tag filtering, there is a performance hit for filtering on metadata.
    attr_accessor :metadata

    # Split avg is a boolean which tells the server to split the text in the chunk_html into smaller chunks and average their resulting vectors. This is useful for when you want to create a chunk from a large piece of text and want to split it into smaller chunks to create a more fuzzy average dense vector. The sparse vector will be generated normally with no averaging. By default this is false.
    attr_accessor :split_avg

    # Tag set is a list of tags. This can be used to filter chunks by tag. Unlike with metadata filtering, HNSW indices will exist for each tag such that there is not a performance hit for filtering on them.
    attr_accessor :tag_set

    # Time_stamp should be an ISO 8601 combined date and time without timezone. It is used for time window filtering and recency-biasing search results.
    attr_accessor :time_stamp

    # Tracking_id is a string which can be used to identify a chunk. This is useful for when you are coordinating with an external system and want to use the tracking_id to identify the chunk.
    attr_accessor :tracking_id

    # Upsert when a chunk with the same tracking_id exists. By default this is false, and the request will fail if a chunk with the same tracking_id exists. If this is true, the chunk will be updated if a chunk with the same tracking_id exists.
    attr_accessor :upsert_by_tracking_id

    # Weight is a float which can be used to bias search results. This is useful for when you want to bias search results for a chunk. The magnitude only matters relative to other chunks in the chunk's dataset dataset.
    attr_accessor :weight

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'chunk_html' => :'chunk_html',
        :'chunk_vector' => :'chunk_vector',
        :'file_id' => :'file_id',
        :'group_ids' => :'group_ids',
        :'group_tracking_ids' => :'group_tracking_ids',
        :'link' => :'link',
        :'metadata' => :'metadata',
        :'split_avg' => :'split_avg',
        :'tag_set' => :'tag_set',
        :'time_stamp' => :'time_stamp',
        :'tracking_id' => :'tracking_id',
        :'upsert_by_tracking_id' => :'upsert_by_tracking_id',
        :'weight' => :'weight'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'chunk_html' => :'String',
        :'chunk_vector' => :'Array<Float>',
        :'file_id' => :'String',
        :'group_ids' => :'Array<String>',
        :'group_tracking_ids' => :'Array<String>',
        :'link' => :'String',
        :'metadata' => :'Object',
        :'split_avg' => :'Boolean',
        :'tag_set' => :'Array<String>',
        :'time_stamp' => :'String',
        :'tracking_id' => :'String',
        :'upsert_by_tracking_id' => :'Boolean',
        :'weight' => :'Float'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'chunk_html',
        :'chunk_vector',
        :'file_id',
        :'group_ids',
        :'group_tracking_ids',
        :'link',
        :'metadata',
        :'split_avg',
        :'tag_set',
        :'time_stamp',
        :'tracking_id',
        :'upsert_by_tracking_id',
        :'weight'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `TrieveRubyClient::CreateChunkData` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `TrieveRubyClient::CreateChunkData`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'chunk_html')
        self.chunk_html = attributes[:'chunk_html']
      end

      if attributes.key?(:'chunk_vector')
        if (value = attributes[:'chunk_vector']).is_a?(Array)
          self.chunk_vector = value
        end
      end

      if attributes.key?(:'file_id')
        self.file_id = attributes[:'file_id']
      end

      if attributes.key?(:'group_ids')
        if (value = attributes[:'group_ids']).is_a?(Array)
          self.group_ids = value
        end
      end

      if attributes.key?(:'group_tracking_ids')
        if (value = attributes[:'group_tracking_ids']).is_a?(Array)
          self.group_tracking_ids = value
        end
      end

      if attributes.key?(:'link')
        self.link = attributes[:'link']
      end

      if attributes.key?(:'metadata')
        self.metadata = attributes[:'metadata']
      end

      if attributes.key?(:'split_avg')
        self.split_avg = attributes[:'split_avg']
      end

      if attributes.key?(:'tag_set')
        if (value = attributes[:'tag_set']).is_a?(Array)
          self.tag_set = value
        end
      end

      if attributes.key?(:'time_stamp')
        self.time_stamp = attributes[:'time_stamp']
      end

      if attributes.key?(:'tracking_id')
        self.tracking_id = attributes[:'tracking_id']
      end

      if attributes.key?(:'upsert_by_tracking_id')
        self.upsert_by_tracking_id = attributes[:'upsert_by_tracking_id']
      end

      if attributes.key?(:'weight')
        self.weight = attributes[:'weight']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          chunk_html == o.chunk_html &&
          chunk_vector == o.chunk_vector &&
          file_id == o.file_id &&
          group_ids == o.group_ids &&
          group_tracking_ids == o.group_tracking_ids &&
          link == o.link &&
          metadata == o.metadata &&
          split_avg == o.split_avg &&
          tag_set == o.tag_set &&
          time_stamp == o.time_stamp &&
          tracking_id == o.tracking_id &&
          upsert_by_tracking_id == o.upsert_by_tracking_id &&
          weight == o.weight
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [chunk_html, chunk_vector, file_id, group_ids, group_tracking_ids, link, metadata, split_avg, tag_set, time_stamp, tracking_id, upsert_by_tracking_id, weight].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = TrieveRubyClient.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
