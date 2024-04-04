=begin
#Trieve API

#Trieve OpenAPI Specification. This document describes all of the operations available through the Trieve API.

The version of the OpenAPI document: 0.5.7
Contact: developers@trieve.ai
Generated by: https://openapi-generator.tech
Generator version: 7.4.0

=end

require 'cgi'

module TrieveRubyClient
  class FileApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete File
    # Delete File  Delete a file from S3 attached to the server based on its id. This will disassociate chunks from the file, but will not delete the chunks. We plan to add support for deleting chunks in a release soon. Auth'ed user must be an admin or owner of the dataset's organization to upload a file.
    # @param tr_dataset [String] The dataset id to use for the request
    # @param file_id [String] The id of the file to delete
    # @param delete_chunks [Boolean] Whether or not to delete the chunks associated with the file
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_file_handler(tr_dataset, file_id, delete_chunks, opts = {})
      delete_file_handler_with_http_info(tr_dataset, file_id, delete_chunks, opts)
      nil
    end

    # Delete File
    # Delete File  Delete a file from S3 attached to the server based on its id. This will disassociate chunks from the file, but will not delete the chunks. We plan to add support for deleting chunks in a release soon. Auth&#39;ed user must be an admin or owner of the dataset&#39;s organization to upload a file.
    # @param tr_dataset [String] The dataset id to use for the request
    # @param file_id [String] The id of the file to delete
    # @param delete_chunks [Boolean] Whether or not to delete the chunks associated with the file
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_file_handler_with_http_info(tr_dataset, file_id, delete_chunks, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FileApi.delete_file_handler ...'
      end
      # verify the required parameter 'tr_dataset' is set
      if @api_client.config.client_side_validation && tr_dataset.nil?
        fail ArgumentError, "Missing the required parameter 'tr_dataset' when calling FileApi.delete_file_handler"
      end
      # verify the required parameter 'file_id' is set
      if @api_client.config.client_side_validation && file_id.nil?
        fail ArgumentError, "Missing the required parameter 'file_id' when calling FileApi.delete_file_handler"
      end
      # verify the required parameter 'delete_chunks' is set
      if @api_client.config.client_side_validation && delete_chunks.nil?
        fail ArgumentError, "Missing the required parameter 'delete_chunks' when calling FileApi.delete_file_handler"
      end
      # resource path
      local_var_path = '/api/file/{file_id}'.sub('{' + 'file_id' + '}', CGI.escape(file_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'delete_chunks'] = delete_chunks

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
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"FileApi.delete_file_handler",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FileApi#delete_file_handler\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Files for Dataset
    # Get Files for Dataset  Get all files which belong to a given dataset specified by the dataset_id parameter. 10 files are returned per page.
    # @param tr_dataset [String] The dataset id to use for the request
    # @param dataset_id [String] The id of the dataset to fetch files for.
    # @param page [Integer] The page number of files you wish to fetch. Each page contains at most 10 files.
    # @param [Hash] opts the optional parameters
    # @return [Array<File>]
    def get_dataset_files_handler(tr_dataset, dataset_id, page, opts = {})
      data, _status_code, _headers = get_dataset_files_handler_with_http_info(tr_dataset, dataset_id, page, opts)
      data
    end

    # Get Files for Dataset
    # Get Files for Dataset  Get all files which belong to a given dataset specified by the dataset_id parameter. 10 files are returned per page.
    # @param tr_dataset [String] The dataset id to use for the request
    # @param dataset_id [String] The id of the dataset to fetch files for.
    # @param page [Integer] The page number of files you wish to fetch. Each page contains at most 10 files.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<File>, Integer, Hash)>] Array<File> data, response status code and response headers
    def get_dataset_files_handler_with_http_info(tr_dataset, dataset_id, page, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FileApi.get_dataset_files_handler ...'
      end
      # verify the required parameter 'tr_dataset' is set
      if @api_client.config.client_side_validation && tr_dataset.nil?
        fail ArgumentError, "Missing the required parameter 'tr_dataset' when calling FileApi.get_dataset_files_handler"
      end
      # verify the required parameter 'dataset_id' is set
      if @api_client.config.client_side_validation && dataset_id.nil?
        fail ArgumentError, "Missing the required parameter 'dataset_id' when calling FileApi.get_dataset_files_handler"
      end
      # verify the required parameter 'page' is set
      if @api_client.config.client_side_validation && page.nil?
        fail ArgumentError, "Missing the required parameter 'page' when calling FileApi.get_dataset_files_handler"
      end
      if @api_client.config.client_side_validation && page < 0
        fail ArgumentError, 'invalid value for "page" when calling FileApi.get_dataset_files_handler, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/api/dataset/files/{dataset_id}/{page}'.sub('{' + 'dataset_id' + '}', CGI.escape(dataset_id.to_s)).sub('{' + 'page' + '}', CGI.escape(page.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<File>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"FileApi.get_dataset_files_handler",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FileApi#get_dataset_files_handler\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get File
    # Get File  Download a file from S3 attached to the server based on its id. We plan to add support for getting signed S3 URLs to download from S3 directly in a release soon.
    # @param tr_dataset [String] The dataset id to use for the request
    # @param file_id [String] The id of the file to fetch
    # @param [Hash] opts the optional parameters
    # @return [FileDTO]
    def get_file_handler(tr_dataset, file_id, opts = {})
      data, _status_code, _headers = get_file_handler_with_http_info(tr_dataset, file_id, opts)
      data
    end

    # Get File
    # Get File  Download a file from S3 attached to the server based on its id. We plan to add support for getting signed S3 URLs to download from S3 directly in a release soon.
    # @param tr_dataset [String] The dataset id to use for the request
    # @param file_id [String] The id of the file to fetch
    # @param [Hash] opts the optional parameters
    # @return [Array<(FileDTO, Integer, Hash)>] FileDTO data, response status code and response headers
    def get_file_handler_with_http_info(tr_dataset, file_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FileApi.get_file_handler ...'
      end
      # verify the required parameter 'tr_dataset' is set
      if @api_client.config.client_side_validation && tr_dataset.nil?
        fail ArgumentError, "Missing the required parameter 'tr_dataset' when calling FileApi.get_file_handler"
      end
      # verify the required parameter 'file_id' is set
      if @api_client.config.client_side_validation && file_id.nil?
        fail ArgumentError, "Missing the required parameter 'file_id' when calling FileApi.get_file_handler"
      end
      # resource path
      local_var_path = '/api/file/{file_id}'.sub('{' + 'file_id' + '}', CGI.escape(file_id.to_s))

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
      return_type = opts[:debug_return_type] || 'FileDTO'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"FileApi.get_file_handler",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FileApi#get_file_handler\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Upload File
    # Upload File  Upload a file to S3 attached to the server. The file will be converted to HTML with tika and chunked algorithmically, images will be OCR'ed with tesseract. The resulting chunks will be indexed and searchable. Optionally, you can only upload the file and manually create chunks associated to the file after. See docs.trieve.ai and/or contact us for more details and tips. Auth'ed user must be an admin or owner of the dataset's organization to upload a file.
    # @param tr_dataset [String] The dataset id to use for the request
    # @param upload_file_data [UploadFileData] JSON request payload to upload a file
    # @param [Hash] opts the optional parameters
    # @return [UploadFileResult]
    def upload_file_handler(tr_dataset, upload_file_data, opts = {})
      data, _status_code, _headers = upload_file_handler_with_http_info(tr_dataset, upload_file_data, opts)
      data
    end

    # Upload File
    # Upload File  Upload a file to S3 attached to the server. The file will be converted to HTML with tika and chunked algorithmically, images will be OCR&#39;ed with tesseract. The resulting chunks will be indexed and searchable. Optionally, you can only upload the file and manually create chunks associated to the file after. See docs.trieve.ai and/or contact us for more details and tips. Auth&#39;ed user must be an admin or owner of the dataset&#39;s organization to upload a file.
    # @param tr_dataset [String] The dataset id to use for the request
    # @param upload_file_data [UploadFileData] JSON request payload to upload a file
    # @param [Hash] opts the optional parameters
    # @return [Array<(UploadFileResult, Integer, Hash)>] UploadFileResult data, response status code and response headers
    def upload_file_handler_with_http_info(tr_dataset, upload_file_data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FileApi.upload_file_handler ...'
      end
      # verify the required parameter 'tr_dataset' is set
      if @api_client.config.client_side_validation && tr_dataset.nil?
        fail ArgumentError, "Missing the required parameter 'tr_dataset' when calling FileApi.upload_file_handler"
      end
      # verify the required parameter 'upload_file_data' is set
      if @api_client.config.client_side_validation && upload_file_data.nil?
        fail ArgumentError, "Missing the required parameter 'upload_file_data' when calling FileApi.upload_file_handler"
      end
      # resource path
      local_var_path = '/api/file'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(upload_file_data)

      # return_type
      return_type = opts[:debug_return_type] || 'UploadFileResult'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"FileApi.upload_file_handler",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FileApi#upload_file_handler\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
