=begin
#Trieve API

#Trieve OpenAPI Specification. This document describes all of the operations available through the Trieve API.

The version of the OpenAPI document: 0.10.7
Contact: developers@trieve.ai
Generated by: https://openapi-generator.tech
Generator version: 7.4.0

=end

require 'cgi'

module TrieveRubyClient
  class EventsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get events for the dataset
    # Get events for the dataset  Get events for the dataset specified by the TR-Dataset header.
    # @param tr_dataset [String] The dataset id to use for the request
    # @param get_events_data [GetEventsData] JSON request payload to get events for a dataset
    # @param [Hash] opts the optional parameters
    # @return [EventReturn]
    def get_events(tr_dataset, get_events_data, opts = {})
      data, _status_code, _headers = get_events_with_http_info(tr_dataset, get_events_data, opts)
      data
    end

    # Get events for the dataset
    # Get events for the dataset  Get events for the dataset specified by the TR-Dataset header.
    # @param tr_dataset [String] The dataset id to use for the request
    # @param get_events_data [GetEventsData] JSON request payload to get events for a dataset
    # @param [Hash] opts the optional parameters
    # @return [Array<(EventReturn, Integer, Hash)>] EventReturn data, response status code and response headers
    def get_events_with_http_info(tr_dataset, get_events_data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EventsApi.get_events ...'
      end
      # verify the required parameter 'tr_dataset' is set
      if @api_client.config.client_side_validation && tr_dataset.nil?
        fail ArgumentError, "Missing the required parameter 'tr_dataset' when calling EventsApi.get_events"
      end
      # verify the required parameter 'get_events_data' is set
      if @api_client.config.client_side_validation && get_events_data.nil?
        fail ArgumentError, "Missing the required parameter 'get_events_data' when calling EventsApi.get_events"
      end
      # resource path
      local_var_path = '/api/events'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(get_events_data)

      # return_type
      return_type = opts[:debug_return_type] || 'EventReturn'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"EventsApi.get_events",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EventsApi#get_events\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
