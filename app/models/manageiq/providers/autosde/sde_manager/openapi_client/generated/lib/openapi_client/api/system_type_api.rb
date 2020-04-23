=begin
#Site Manager API

#Site Manager API

The version of the OpenAPI document: 1.0.0
Contact: autosde@il.ibm.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1-SNAPSHOT

=end

require 'cgi'

module OpenapiClient
  class SystemTypeApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # @param [Hash] opts the optional parameters
    # @return [Array<SystemType>]
    def system_types_get(opts = {})
      data, _status_code, _headers = system_types_get_with_http_info(opts)
      data
    end

    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<SystemType>, Integer, Hash)>] Array<SystemType> data, response status code and response headers
    def system_types_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemTypeApi.system_types_get ...'
      end
      # resource path
      local_var_path = '/system-types/'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'Array<SystemType>' 

      # auth_names
      auth_names = opts[:auth_names] || []

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemTypeApi#system_types_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param pk [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<SystemType>]
    def system_types_pk_delete(pk, opts = {})
      data, _status_code, _headers = system_types_pk_delete_with_http_info(pk, opts)
      data
    end

    # @param pk [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<SystemType>, Integer, Hash)>] Array<SystemType> data, response status code and response headers
    def system_types_pk_delete_with_http_info(pk, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemTypeApi.system_types_pk_delete ...'
      end
      # verify the required parameter 'pk' is set
      if @api_client.config.client_side_validation && pk.nil?
        fail ArgumentError, "Missing the required parameter 'pk' when calling SystemTypeApi.system_types_pk_delete"
      end
      # resource path
      local_var_path = '/system-types/{pk}'.sub('{' + 'pk' + '}', CGI.escape(pk.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'Array<SystemType>' 

      # auth_names
      auth_names = opts[:auth_names] || []

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemTypeApi#system_types_pk_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param pk [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<SystemType>]
    def system_types_pk_get(pk, opts = {})
      data, _status_code, _headers = system_types_pk_get_with_http_info(pk, opts)
      data
    end

    # @param pk [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<SystemType>, Integer, Hash)>] Array<SystemType> data, response status code and response headers
    def system_types_pk_get_with_http_info(pk, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemTypeApi.system_types_pk_get ...'
      end
      # verify the required parameter 'pk' is set
      if @api_client.config.client_side_validation && pk.nil?
        fail ArgumentError, "Missing the required parameter 'pk' when calling SystemTypeApi.system_types_pk_get"
      end
      # resource path
      local_var_path = '/system-types/{pk}'.sub('{' + 'pk' + '}', CGI.escape(pk.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'Array<SystemType>' 

      # auth_names
      auth_names = opts[:auth_names] || []

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemTypeApi#system_types_pk_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param system_type_create [SystemTypeCreate] 
    # @param [Hash] opts the optional parameters
    # @return [Array<SystemType>]
    def system_types_post(system_type_create, opts = {})
      data, _status_code, _headers = system_types_post_with_http_info(system_type_create, opts)
      data
    end

    # @param system_type_create [SystemTypeCreate] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<SystemType>, Integer, Hash)>] Array<SystemType> data, response status code and response headers
    def system_types_post_with_http_info(system_type_create, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemTypeApi.system_types_post ...'
      end
      # verify the required parameter 'system_type_create' is set
      if @api_client.config.client_side_validation && system_type_create.nil?
        fail ArgumentError, "Missing the required parameter 'system_type_create' when calling SystemTypeApi.system_types_post"
      end
      # resource path
      local_var_path = '/system-types/'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(system_type_create) 

      # return_type
      return_type = opts[:return_type] || 'Array<SystemType>' 

      # auth_names
      auth_names = opts[:auth_names] || []

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemTypeApi#system_types_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
