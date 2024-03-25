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

# Unit tests for TrieveRubyClient::StripeApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'StripeApi' do
  before do
    # run before each test
    @api_instance = TrieveRubyClient::StripeApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of StripeApi' do
    it 'should create an instance of StripeApi' do
      expect(@api_instance).to be_instance_of(TrieveRubyClient::StripeApi)
    end
  end

  # unit tests for cancel_subscription
  # Cancel Subscription
  # Cancel Subscription  Cancel a subscription by its id
  # @param tr_organization The organization id to use for the request
  # @param subscription_id id of the subscription you want to cancel
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'cancel_subscription test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for direct_to_payment_link
  # Checkout
  # Checkout  Get a direct link to the stripe checkout page for the plan and organization
  # @param plan_id id of the plan you want to subscribe to
  # @param organization_id id of the organization you want to subscribe to the plan
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'direct_to_payment_link test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_all_plans
  # Get All Plans
  # Get All Plans  Get a list of all plans
  # @param [Hash] opts the optional parameters
  # @return [Array<StripePlan>]
  describe 'get_all_plans test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_subscription_plan
  # Update Subscription Plan
  # Update Subscription Plan  Update a subscription to a new plan
  # @param tr_organization The organization id to use for the request
  # @param subscription_id id of the subscription you want to update
  # @param plan_id id of the plan you want to subscribe to
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'update_subscription_plan test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
