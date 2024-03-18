=begin
#trieve-server

#Trieve REST API OpenAPI Documentation

The version of the OpenAPI document: 0.3.3

Generated by: https://openapi-generator.tech
Generator version: 7.4.0

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenapiClient::MessageApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'MessageApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::MessageApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MessageApi' do
    it 'should create an instance of MessageApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::MessageApi)
    end
  end

  # unit tests for create_message_completion_handler
  # create_message
  # create_message  Create a message. Messages are attached to topics in order to coordinate memory of gen-AI chat sessions. We are considering refactoring this resource of the API soon. Currently, you can only send user messages. If the topic is a RAG topic then the response will include Chunks first on the stream. The structure will look like &#x60;[chunks]||mesage&#x60;. See docs.trieve.ai for more information.
  # @param tr_dataset The dataset id to use for the request
  # @param create_message_data JSON request payload to create a message completion
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'create_message_completion_handler test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for edit_message_handler
  # edit_message
  # edit_message  Edit a message which exists within the topic&#39;s chat history. This will delete the message and replace it with a new message. The new message will be generated by the AI based on the new content provided in the request body. The response will include Chunks first on the stream if the topic is using RAG. The structure will look like &#x60;[chunks]||mesage&#x60;. See docs.trieve.ai for more information.
  # @param tr_dataset The dataset id to use for the request
  # @param edit_message_data JSON request payload to edit a message and get a new stream
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'edit_message_handler test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_all_topic_messages
  # get_all_messages
  # get_all_messages  Get all messages for a given topic. If the topic is a RAG topic then the response will include Chunks first on each message. The structure will look like &#x60;[chunks]||mesage&#x60;. See docs.trieve.ai for more information.
  # @param tr_dataset The dataset id to use for the request
  # @param messages_topic_id The ID of the topic to get messages for.
  # @param [Hash] opts the optional parameters
  # @return [Array<Message>]
  describe 'get_all_topic_messages test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for regenerate_message_handler
  # regenerate_message
  # regenerate_message  Regenerate the assistant response to the last user message of a topic. This will delete the last message and replace it with a new message. The response will include Chunks first on the stream if the topic is using RAG. The structure will look like &#x60;[chunks]||mesage&#x60;. See docs.trieve.ai for more information.
  # @param tr_dataset The dataset id to use for the request
  # @param regenerate_message_data JSON request payload to delete an agent message then regenerate it in a strem
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'regenerate_message_handler test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
