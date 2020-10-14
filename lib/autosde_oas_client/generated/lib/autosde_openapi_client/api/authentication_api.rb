=begin
#Site Manager API

#Site Manager API

The version of the OpenAPI document: 1.0.0
Contact: autosde@il.ibm.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'cgi'

module OpenapiClient
  class AuthenticationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # @param authentication [Authentication] 
    # @param [Hash] opts the optional parameters
    # @return [AuthResponse]
    def token_auth_post(authentication, opts = {})
      data, _status_code, _headers = token_auth_post_with_http_info(authentication, opts)
      data
    end

    # @param authentication [Authentication] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AuthResponse, Integer, Hash)>] AuthResponse data, response status code and response headers
    def token_auth_post_with_http_info(authentication, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthenticationApi.token_auth_post ...'
      end
      # verify the required parameter 'authentication' is set
      if @api_client.config.client_side_validation && authentication.nil?
        fail ArgumentError, "Missing the required parameter 'authentication' when calling AuthenticationApi.token_auth_post"
      end
      # resource path
      local_var_path = '/token-auth'

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
      post_body = opts[:body] || @api_client.object_to_http_body(authentication) 

      # return_type
      return_type = opts[:return_type] || 'AuthResponse' 

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
        @api_client.config.logger.debug "API called: AuthenticationApi#token_auth_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end