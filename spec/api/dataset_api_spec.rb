=begin
#Trieve API

#Trieve OpenAPI Specification. This document describes all of the operations available through the Trieve API.

The version of the OpenAPI document: 0.5.0
Contact: developers@trieve.ai
Generated by: https://openapi-generator.tech
Generator version: 7.4.0

=end

require 'spec_helper'
require 'json'

# Unit tests for TrieveRubyClient::DatasetApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'DatasetApi' do
  before do
    # run before each test
    @api_instance = TrieveRubyClient::DatasetApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DatasetApi' do
    it 'should create an instance of DatasetApi' do
      expect(@api_instance).to be_instance_of(TrieveRubyClient::DatasetApi)
    end
  end

  # unit tests for create_dataset
  # Create dataset
  # Create dataset  Create a new dataset. The auth&#39;ed user must be an owner of the organization to create a dataset.
  # @param tr_organization The organization id to use for the request
  # @param create_dataset_request JSON request payload to create a new dataset
  # @param [Hash] opts the optional parameters
  # @return [Dataset]
  describe 'create_dataset test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_dataset
  # Delete Dataset
  # Delete Dataset  Delete a dataset. The auth&#39;ed user must be an owner of the organization to delete a dataset.
  # @param tr_organization The organization id to use for the request
  # @param delete_dataset_request JSON request payload to delete a dataset
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_dataset test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_client_dataset_config
  # Get Client Configuration
  # Get Client Configuration  Get the client configuration for a dataset. Will use the TR-D
  # @param tr_dataset The dataset id to use for the request
  # @param [Hash] opts the optional parameters
  # @return [ClientDatasetConfiguration]
  describe 'get_client_dataset_config test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_dataset
  # Get Dataset
  # Get Dataset  Get a dataset by id. The auth&#39;ed user must be an admin or owner of the organization to get a dataset.
  # @param tr_organization The organization id to use for the request
  # @param tr_dataset The dataset id to use for the request
  # @param dataset_id The id of the dataset you want to retrieve.
  # @param [Hash] opts the optional parameters
  # @return [Dataset]
  describe 'get_dataset test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_datasets_from_organization
  # Get Datasets from Organization
  # Get Datasets from Organization  Get all datasets for an organization. The auth&#39;ed user must be an admin or owner of the organization to get its datasets.
  # @param tr_organization The organization id to use for the request
  # @param organization_id id of the organization you want to retrieve datasets for
  # @param [Hash] opts the optional parameters
  # @return [Array<DatasetAndUsage>]
  describe 'get_datasets_from_organization test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_dataset
  # Update Dataset
  # Update Dataset  Update a dataset. The auth&#39;ed user must be an owner of the organization to update a dataset.
  # @param tr_organization The organization id to use for the request
  # @param update_dataset_request JSON request payload to update a dataset
  # @param [Hash] opts the optional parameters
  # @return [Dataset]
  describe 'update_dataset test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
