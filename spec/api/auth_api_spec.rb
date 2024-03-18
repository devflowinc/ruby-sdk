=begin
#trieve-server

#Trieve REST API OpenAPI Documentation

The version of the OpenAPI document: 0.3.3

Generated by: https://openapi-generator.tech
Generator version: 7.4.0

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenapiClient::AuthApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'AuthApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::AuthApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AuthApi' do
    it 'should create an instance of AuthApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::AuthApi)
    end
  end

  # unit tests for callback
  # openid_callback
  # openid_callback  This is the callback route for the OAuth provider, it should not be called directly. Redirects to browser with set-cookie header.
  # @param [Hash] opts the optional parameters
  # @return [SlimUser]
  describe 'callback test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_me
  # get_me
  # get_me  Get the user corresponding to your current auth credentials.
  # @param [Hash] opts the optional parameters
  # @return [SlimUser]
  describe 'get_me test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for login
  # login
  # login  This will redirect you to the OAuth provider for authentication with email/pass, SSO, Google, Github, etc.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :inv_code Code sent via email as a result of successful call to send_invitation
  # @option opts [String] :organization_id ID of organization to authenticate into
  # @option opts [String] :redirect_uri URL to redirect to after successful login
  # @return [nil]
  describe 'login test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for logout
  # logout
  # logout  Invalidate your current auth credential stored typically stored in a cookie. This does not invalidate your API key.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'logout test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
