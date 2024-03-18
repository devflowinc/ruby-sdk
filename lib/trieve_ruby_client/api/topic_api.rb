=begin
#Trieve API

#Trieve OpenAPI Specification. This document describes all of the operations available through the Trieve API.

The version of the OpenAPI document: 0.3.5
Contact: developers@trieve.ai
Generated by: https://openapi-generator.tech
Generator version: 7.4.0

=end

require 'cgi'

module TrieveRubyClient
  class TopicApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # create_topic
    # create_topic  Create a new chat topic. Topics are attached to a user and act as a coordinator for memory of gen-AI chat sessions. We are considering refactoring this resource of the API soon.
    # @param tr_dataset [String] The dataset id to use for the request
    # @param create_topic_data [CreateTopicData] JSON request payload to create chat topic
    # @param [Hash] opts the optional parameters
    # @return [Topic]
    def create_topic(tr_dataset, create_topic_data, opts = {})
      data, _status_code, _headers = create_topic_with_http_info(tr_dataset, create_topic_data, opts)
      data
    end

    # create_topic
    # create_topic  Create a new chat topic. Topics are attached to a user and act as a coordinator for memory of gen-AI chat sessions. We are considering refactoring this resource of the API soon.
    # @param tr_dataset [String] The dataset id to use for the request
    # @param create_topic_data [CreateTopicData] JSON request payload to create chat topic
    # @param [Hash] opts the optional parameters
    # @return [Array<(Topic, Integer, Hash)>] Topic data, response status code and response headers
    def create_topic_with_http_info(tr_dataset, create_topic_data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TopicApi.create_topic ...'
      end
      # verify the required parameter 'tr_dataset' is set
      if @api_client.config.client_side_validation && tr_dataset.nil?
        fail ArgumentError, "Missing the required parameter 'tr_dataset' when calling TopicApi.create_topic"
      end
      # verify the required parameter 'create_topic_data' is set
      if @api_client.config.client_side_validation && create_topic_data.nil?
        fail ArgumentError, "Missing the required parameter 'create_topic_data' when calling TopicApi.create_topic"
      end
      # resource path
      local_var_path = '/api/topic'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'TR-Dataset'] = tr_dataset

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_topic_data)

      # return_type
      return_type = opts[:debug_return_type] || 'Topic'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"TopicApi.create_topic",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TopicApi#create_topic\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # delete_topic
    # delete_topic  Delete an existing chat topic. When a topic is deleted, all associated chat messages are also deleted.
    # @param tr_dataset [String] The dataset id to use for the request
    # @param delete_topic_data [DeleteTopicData] JSON request payload to delete a chat topic
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_topic(tr_dataset, delete_topic_data, opts = {})
      delete_topic_with_http_info(tr_dataset, delete_topic_data, opts)
      nil
    end

    # delete_topic
    # delete_topic  Delete an existing chat topic. When a topic is deleted, all associated chat messages are also deleted.
    # @param tr_dataset [String] The dataset id to use for the request
    # @param delete_topic_data [DeleteTopicData] JSON request payload to delete a chat topic
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_topic_with_http_info(tr_dataset, delete_topic_data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TopicApi.delete_topic ...'
      end
      # verify the required parameter 'tr_dataset' is set
      if @api_client.config.client_side_validation && tr_dataset.nil?
        fail ArgumentError, "Missing the required parameter 'tr_dataset' when calling TopicApi.delete_topic"
      end
      # verify the required parameter 'delete_topic_data' is set
      if @api_client.config.client_side_validation && delete_topic_data.nil?
        fail ArgumentError, "Missing the required parameter 'delete_topic_data' when calling TopicApi.delete_topic"
      end
      # resource path
      local_var_path = '/api/topic'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'TR-Dataset'] = tr_dataset

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(delete_topic_data)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"TopicApi.delete_topic",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TopicApi#delete_topic\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # get_all_topics_for_user
    # get_all_topics_for_user  Get all topics belonging to a the auth'ed user. Soon, we plan to allow specification of the user for this route and include pagination.
    # @param user_id [String] The id of the user to get topics for
    # @param tr_dataset [String] The dataset id to use for the request
    # @param [Hash] opts the optional parameters
    # @return [Array<Topic>]
    def get_all_topics_for_user(user_id, tr_dataset, opts = {})
      data, _status_code, _headers = get_all_topics_for_user_with_http_info(user_id, tr_dataset, opts)
      data
    end

    # get_all_topics_for_user
    # get_all_topics_for_user  Get all topics belonging to a the auth&#39;ed user. Soon, we plan to allow specification of the user for this route and include pagination.
    # @param user_id [String] The id of the user to get topics for
    # @param tr_dataset [String] The dataset id to use for the request
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Topic>, Integer, Hash)>] Array<Topic> data, response status code and response headers
    def get_all_topics_for_user_with_http_info(user_id, tr_dataset, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TopicApi.get_all_topics_for_user ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling TopicApi.get_all_topics_for_user"
      end
      # verify the required parameter 'tr_dataset' is set
      if @api_client.config.client_side_validation && tr_dataset.nil?
        fail ArgumentError, "Missing the required parameter 'tr_dataset' when calling TopicApi.get_all_topics_for_user"
      end
      # resource path
      local_var_path = '/api/topic/user/{user_id}'.sub('{' + 'user_id' + '}', CGI.escape(user_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'TR-Dataset'] = tr_dataset

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<Topic>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"TopicApi.get_all_topics_for_user",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TopicApi#get_all_topics_for_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # update_topic
    # update_topic  Update an existing chat topic. Currently, only the name of the topic can be updated.
    # @param tr_dataset [String] The dataset id to use for the request
    # @param update_topic_data [UpdateTopicData] JSON request payload to update a chat topic
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def update_topic(tr_dataset, update_topic_data, opts = {})
      update_topic_with_http_info(tr_dataset, update_topic_data, opts)
      nil
    end

    # update_topic
    # update_topic  Update an existing chat topic. Currently, only the name of the topic can be updated.
    # @param tr_dataset [String] The dataset id to use for the request
    # @param update_topic_data [UpdateTopicData] JSON request payload to update a chat topic
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def update_topic_with_http_info(tr_dataset, update_topic_data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TopicApi.update_topic ...'
      end
      # verify the required parameter 'tr_dataset' is set
      if @api_client.config.client_side_validation && tr_dataset.nil?
        fail ArgumentError, "Missing the required parameter 'tr_dataset' when calling TopicApi.update_topic"
      end
      # verify the required parameter 'update_topic_data' is set
      if @api_client.config.client_side_validation && update_topic_data.nil?
        fail ArgumentError, "Missing the required parameter 'update_topic_data' when calling TopicApi.update_topic"
      end
      # resource path
      local_var_path = '/api/topic'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'TR-Dataset'] = tr_dataset

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_topic_data)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"TopicApi.update_topic",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TopicApi#update_topic\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
