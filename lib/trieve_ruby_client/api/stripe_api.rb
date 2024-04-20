=begin
#Trieve API

#Trieve OpenAPI Specification. This document describes all of the operations available through the Trieve API.

The version of the OpenAPI document: 0.7.2
Contact: developers@trieve.ai
Generated by: https://openapi-generator.tech
Generator version: 7.4.0

=end

require 'cgi'

module TrieveRubyClient
  class StripeApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Cancel Subscription
    # Cancel Subscription  Cancel a subscription by its id
    # @param tr_organization [String] The organization id to use for the request
    # @param subscription_id [String] id of the subscription you want to cancel
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def cancel_subscription(tr_organization, subscription_id, opts = {})
      cancel_subscription_with_http_info(tr_organization, subscription_id, opts)
      nil
    end

    # Cancel Subscription
    # Cancel Subscription  Cancel a subscription by its id
    # @param tr_organization [String] The organization id to use for the request
    # @param subscription_id [String] id of the subscription you want to cancel
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def cancel_subscription_with_http_info(tr_organization, subscription_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StripeApi.cancel_subscription ...'
      end
      # verify the required parameter 'tr_organization' is set
      if @api_client.config.client_side_validation && tr_organization.nil?
        fail ArgumentError, "Missing the required parameter 'tr_organization' when calling StripeApi.cancel_subscription"
      end
      # verify the required parameter 'subscription_id' is set
      if @api_client.config.client_side_validation && subscription_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscription_id' when calling StripeApi.cancel_subscription"
      end
      # resource path
      local_var_path = '/api/stripe/subscription/{subscription_id}'.sub('{' + 'subscription_id' + '}', CGI.escape(subscription_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'TR-Organization'] = tr_organization

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"StripeApi.cancel_subscription",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StripeApi#cancel_subscription\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Checkout
    # Checkout  Get a direct link to the stripe checkout page for the plan and organization
    # @param plan_id [String] id of the plan you want to subscribe to
    # @param organization_id [String] id of the organization you want to subscribe to the plan
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def direct_to_payment_link(plan_id, organization_id, opts = {})
      direct_to_payment_link_with_http_info(plan_id, organization_id, opts)
      nil
    end

    # Checkout
    # Checkout  Get a direct link to the stripe checkout page for the plan and organization
    # @param plan_id [String] id of the plan you want to subscribe to
    # @param organization_id [String] id of the organization you want to subscribe to the plan
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def direct_to_payment_link_with_http_info(plan_id, organization_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StripeApi.direct_to_payment_link ...'
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling StripeApi.direct_to_payment_link"
      end
      # verify the required parameter 'organization_id' is set
      if @api_client.config.client_side_validation && organization_id.nil?
        fail ArgumentError, "Missing the required parameter 'organization_id' when calling StripeApi.direct_to_payment_link"
      end
      # resource path
      local_var_path = '/api/stripe/payment_link/{plan_id}/{organization_id}'.sub('{' + 'plan_id' + '}', CGI.escape(plan_id.to_s)).sub('{' + 'organization_id' + '}', CGI.escape(organization_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"StripeApi.direct_to_payment_link",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StripeApi#direct_to_payment_link\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get All Plans
    # Get All Plans  Get a list of all plans
    # @param [Hash] opts the optional parameters
    # @return [Array<StripePlan>]
    def get_all_plans(opts = {})
      data, _status_code, _headers = get_all_plans_with_http_info(opts)
      data
    end

    # Get All Plans
    # Get All Plans  Get a list of all plans
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<StripePlan>, Integer, Hash)>] Array<StripePlan> data, response status code and response headers
    def get_all_plans_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StripeApi.get_all_plans ...'
      end
      # resource path
      local_var_path = '/api/stripe/plans'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<StripePlan>'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"StripeApi.get_all_plans",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StripeApi#get_all_plans\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Subscription Plan
    # Update Subscription Plan  Update a subscription to a new plan
    # @param tr_organization [String] The organization id to use for the request
    # @param subscription_id [String] id of the subscription you want to update
    # @param plan_id [String] id of the plan you want to subscribe to
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def update_subscription_plan(tr_organization, subscription_id, plan_id, opts = {})
      update_subscription_plan_with_http_info(tr_organization, subscription_id, plan_id, opts)
      nil
    end

    # Update Subscription Plan
    # Update Subscription Plan  Update a subscription to a new plan
    # @param tr_organization [String] The organization id to use for the request
    # @param subscription_id [String] id of the subscription you want to update
    # @param plan_id [String] id of the plan you want to subscribe to
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def update_subscription_plan_with_http_info(tr_organization, subscription_id, plan_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StripeApi.update_subscription_plan ...'
      end
      # verify the required parameter 'tr_organization' is set
      if @api_client.config.client_side_validation && tr_organization.nil?
        fail ArgumentError, "Missing the required parameter 'tr_organization' when calling StripeApi.update_subscription_plan"
      end
      # verify the required parameter 'subscription_id' is set
      if @api_client.config.client_side_validation && subscription_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscription_id' when calling StripeApi.update_subscription_plan"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling StripeApi.update_subscription_plan"
      end
      # resource path
      local_var_path = '/api/stripe/subscription_plan/{subscription_id}/{plan_id}'.sub('{' + 'subscription_id' + '}', CGI.escape(subscription_id.to_s)).sub('{' + 'plan_id' + '}', CGI.escape(plan_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'TR-Organization'] = tr_organization

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"StripeApi.update_subscription_plan",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StripeApi#update_subscription_plan\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
