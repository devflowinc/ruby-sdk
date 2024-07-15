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

# Unit tests for TrieveRubyClient::RPSGraph
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe TrieveRubyClient::RPSGraph do
  let(:instance) { TrieveRubyClient::RPSGraph.new }

  describe 'test an instance of RPSGraph' do
    it 'should create an instance of RPSGraph' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(TrieveRubyClient::RPSGraph)
    end
  end

  describe 'test attribute "filter"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "granularity"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "type"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["rps_graph"])
      # validator.allowable_values.each do |value|
      #   expect { instance.type = value }.not_to raise_error
      # end
    end
  end

end
