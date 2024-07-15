=begin
#Trieve API

#Trieve OpenAPI Specification. This document describes all of the operations available through the Trieve API.

The version of the OpenAPI document: 0.11.0
Contact: developers@trieve.ai
Generated by: https://openapi-generator.tech
Generator version: 7.4.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for TrieveRubyClient::HeadQueries1
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe TrieveRubyClient::HeadQueries1 do
  let(:instance) { TrieveRubyClient::HeadQueries1.new }

  describe 'test an instance of HeadQueries1' do
    it 'should create an instance of HeadQueries1' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(TrieveRubyClient::HeadQueries1)
    end
  end

  describe 'test attribute "filter"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "page"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "type"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["head_queries"])
      # validator.allowable_values.each do |value|
      #   expect { instance.type = value }.not_to raise_error
      # end
    end
  end

end