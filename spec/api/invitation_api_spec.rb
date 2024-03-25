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

# Unit tests for TrieveRubyClient::InvitationApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'InvitationApi' do
  before do
    # run before each test
    @api_instance = TrieveRubyClient::InvitationApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of InvitationApi' do
    it 'should create an instance of InvitationApi' do
      expect(@api_instance).to be_instance_of(TrieveRubyClient::InvitationApi)
    end
  end

  # unit tests for post_invitation
  # Send Invitation
  # Send Invitation  Invitations act as a way to invite users to join an organization. After a user is invited, they will automatically be added to the organization with the role specified in the invitation once they set their.
  # @param tr_organization The organization id to use for the request
  # @param invitation_data JSON request payload to send an invitation
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'post_invitation test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
