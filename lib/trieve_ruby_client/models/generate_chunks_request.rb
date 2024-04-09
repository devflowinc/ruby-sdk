=begin
#Trieve API

#Trieve OpenAPI Specification. This document describes all of the operations available through the Trieve API.

The version of the OpenAPI document: 0.6.0
Contact: developers@trieve.ai
Generated by: https://openapi-generator.tech
Generator version: 7.4.0

=end

require 'date'
require 'time'

module TrieveRubyClient
  class GenerateChunksRequest
    # The ids of the chunks to be retrieved and injected into the context window for RAG.
    attr_accessor :chunk_ids

    # The model to use for the chat. This can be any model from the openrouter model list. If no model is provided, gpt-3.5-turbo will be used.
    attr_accessor :model

    # The previous messages to be placed into the chat history. The last message in this array will be the prompt for the model to inference on. The length of this array must be at least 1.
    attr_accessor :prev_messages

    # Prompt for the last message in the prev_messages array. This will be used to generate the next message in the chat. The default is 'Respond to the instruction and include the doc numbers that you used in square brackets at the end of the sentences that you used the docs for:'. You can also specify an empty string to leave the final message alone such that your user's final message can be used as the prompt. See docs.trieve.ai or contact us for more information.
    attr_accessor :prompt

    # Whether or not to stream the response. If this is set to true or not included, the response will be a stream. If this is set to false, the response will be a normal JSON response. Default is true.
    attr_accessor :stream_response

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'chunk_ids' => :'chunk_ids',
        :'model' => :'model',
        :'prev_messages' => :'prev_messages',
        :'prompt' => :'prompt',
        :'stream_response' => :'stream_response'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'chunk_ids' => :'Array<String>',
        :'model' => :'String',
        :'prev_messages' => :'Array<ChatMessageProxy>',
        :'prompt' => :'String',
        :'stream_response' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'model',
        :'prompt',
        :'stream_response'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `TrieveRubyClient::GenerateChunksRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `TrieveRubyClient::GenerateChunksRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'chunk_ids')
        if (value = attributes[:'chunk_ids']).is_a?(Array)
          self.chunk_ids = value
        end
      else
        self.chunk_ids = nil
      end

      if attributes.key?(:'model')
        self.model = attributes[:'model']
      end

      if attributes.key?(:'prev_messages')
        if (value = attributes[:'prev_messages']).is_a?(Array)
          self.prev_messages = value
        end
      else
        self.prev_messages = nil
      end

      if attributes.key?(:'prompt')
        self.prompt = attributes[:'prompt']
      end

      if attributes.key?(:'stream_response')
        self.stream_response = attributes[:'stream_response']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @chunk_ids.nil?
        invalid_properties.push('invalid value for "chunk_ids", chunk_ids cannot be nil.')
      end

      if @prev_messages.nil?
        invalid_properties.push('invalid value for "prev_messages", prev_messages cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @chunk_ids.nil?
      return false if @prev_messages.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          chunk_ids == o.chunk_ids &&
          model == o.model &&
          prev_messages == o.prev_messages &&
          prompt == o.prompt &&
          stream_response == o.stream_response
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [chunk_ids, model, prev_messages, prompt, stream_response].hash
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
