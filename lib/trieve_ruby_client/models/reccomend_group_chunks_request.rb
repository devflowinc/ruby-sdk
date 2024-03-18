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
  class ReccomendGroupChunksRequest
    attr_accessor :filters

    # The number of chunks to fetch for each group. This is the number of chunks which will be returned in the response for each group. The default is 10.
    attr_accessor :group_size

    # The number of groups to return. This is the number of groups which will be returned in the response. The default is 10.
    attr_accessor :limit

    # The  ids of the groups to be used as negative examples for the recommendation. The groups in this array will be used to filter out similar groups.
    attr_accessor :negative_group_ids

    # The  ids of the groups to be used as negative examples for the recommendation. The groups in this array will be used to filter out similar groups.
    attr_accessor :negative_group_tracking_ids

    # The  ids of the groups to be used as positive examples for the recommendation. The groups in this array will be used to find similar groups.
    attr_accessor :positive_group_ids

    # The  ids of the groups to be used as positive examples for the recommendation. The groups in this array will be used to find similar groups.
    attr_accessor :positive_group_tracking_ids

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'filters' => :'filters',
        :'group_size' => :'group_size',
        :'limit' => :'limit',
        :'negative_group_ids' => :'negative_group_ids',
        :'negative_group_tracking_ids' => :'negative_group_tracking_ids',
        :'positive_group_ids' => :'positive_group_ids',
        :'positive_group_tracking_ids' => :'positive_group_tracking_ids'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'filters' => :'ChunkFilter',
        :'group_size' => :'Integer',
        :'limit' => :'Integer',
        :'negative_group_ids' => :'Array<String>',
        :'negative_group_tracking_ids' => :'Array<String>',
        :'positive_group_ids' => :'Array<String>',
        :'positive_group_tracking_ids' => :'Array<String>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'filters',
        :'group_size',
        :'limit',
        :'negative_group_ids',
        :'negative_group_tracking_ids',
        :'positive_group_ids',
        :'positive_group_tracking_ids'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `TrieveRubyClient::ReccomendGroupChunksRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `TrieveRubyClient::ReccomendGroupChunksRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'filters')
        self.filters = attributes[:'filters']
      end

      if attributes.key?(:'group_size')
        self.group_size = attributes[:'group_size']
      end

      if attributes.key?(:'limit')
        self.limit = attributes[:'limit']
      end

      if attributes.key?(:'negative_group_ids')
        if (value = attributes[:'negative_group_ids']).is_a?(Array)
          self.negative_group_ids = value
        end
      end

      if attributes.key?(:'negative_group_tracking_ids')
        if (value = attributes[:'negative_group_tracking_ids']).is_a?(Array)
          self.negative_group_tracking_ids = value
        end
      end

      if attributes.key?(:'positive_group_ids')
        if (value = attributes[:'positive_group_ids']).is_a?(Array)
          self.positive_group_ids = value
        end
      end

      if attributes.key?(:'positive_group_tracking_ids')
        if (value = attributes[:'positive_group_tracking_ids']).is_a?(Array)
          self.positive_group_tracking_ids = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@group_size.nil? && @group_size < 0
        invalid_properties.push('invalid value for "group_size", must be greater than or equal to 0.')
      end

      if !@limit.nil? && @limit < 0
        invalid_properties.push('invalid value for "limit", must be greater than or equal to 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@group_size.nil? && @group_size < 0
      return false if !@limit.nil? && @limit < 0
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] group_size Value to be assigned
    def group_size=(group_size)
      if !group_size.nil? && group_size < 0
        fail ArgumentError, 'invalid value for "group_size", must be greater than or equal to 0.'
      end

      @group_size = group_size
    end

    # Custom attribute writer method with validation
    # @param [Object] limit Value to be assigned
    def limit=(limit)
      if !limit.nil? && limit < 0
        fail ArgumentError, 'invalid value for "limit", must be greater than or equal to 0.'
      end

      @limit = limit
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          filters == o.filters &&
          group_size == o.group_size &&
          limit == o.limit &&
          negative_group_ids == o.negative_group_ids &&
          negative_group_tracking_ids == o.negative_group_tracking_ids &&
          positive_group_ids == o.positive_group_ids &&
          positive_group_tracking_ids == o.positive_group_tracking_ids
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [filters, group_size, limit, negative_group_ids, negative_group_tracking_ids, positive_group_ids, positive_group_tracking_ids].hash
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
