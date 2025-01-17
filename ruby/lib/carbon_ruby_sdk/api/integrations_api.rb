=begin
#Carbon

#Connect external data to LLMs, no matter the source.

The version of the OpenAPI document: 1.0.0
=end

require 'cgi'

module Carbon
  class IntegrationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Cancel Data Source Items Sync
    #
    # @param data_source_id [Integer] 
    # @param body [SyncDirectoryRequest] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def cancel(data_source_id:, extra: {})
      _body = {}
      _body[:data_source_id] = data_source_id if data_source_id != SENTINEL
      sync_directory_request = _body
      api_response = cancel_with_http_info_impl(sync_directory_request, extra)
      api_response.data
    end

    # Cancel Data Source Items Sync
    #
    # @param data_source_id [Integer] 
    # @param body [SyncDirectoryRequest] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def cancel_with_http_info(data_source_id:, extra: {})
      _body = {}
      _body[:data_source_id] = data_source_id if data_source_id != SENTINEL
      sync_directory_request = _body
      cancel_with_http_info_impl(sync_directory_request, extra)
    end

    # Cancel Data Source Items Sync
    # @param sync_directory_request [SyncDirectoryRequest] 
    # @param [Hash] opts the optional parameters
    # @return [OrganizationUserDataSourceAPI]
    private def cancel_impl(sync_directory_request, opts = {})
      data, _status_code, _headers = cancel_with_http_info(sync_directory_request, opts)
      data
    end

    # Cancel Data Source Items Sync
    # @param sync_directory_request [SyncDirectoryRequest] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is OrganizationUserDataSourceAPI, status code, headers and response
    private def cancel_with_http_info_impl(sync_directory_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IntegrationsApi.cancel ...'
      end
      # verify the required parameter 'sync_directory_request' is set
      if @api_client.config.client_side_validation && sync_directory_request.nil?
        fail ArgumentError, "Missing the required parameter 'sync_directory_request' when calling IntegrationsApi.cancel"
      end
      # resource path
      local_var_path = '/integrations/items/sync/cancel'

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

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(sync_directory_request)

      # return_type
      return_type = opts[:debug_return_type] || 'OrganizationUserDataSourceAPI'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['accessToken', 'apiKey', 'customerId']

      new_options = opts.merge(
        :operation => :"IntegrationsApi.cancel",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationsApi#cancel\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Connect Data Source
    #
    # @param authentication [AuthenticationProperty] 
    # @param sync_options [SyncOptions] 
    # @param body [ConnectDataSourceInput] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def connect_data_source(authentication:, sync_options: SENTINEL, extra: {})
      _body = {}
      _body[:authentication] = authentication if authentication != SENTINEL
      _body[:sync_options] = sync_options if sync_options != SENTINEL
      connect_data_source_input = _body
      api_response = connect_data_source_with_http_info_impl(connect_data_source_input, extra)
      api_response.data
    end

    # Connect Data Source
    #
    # @param authentication [AuthenticationProperty] 
    # @param sync_options [SyncOptions] 
    # @param body [ConnectDataSourceInput] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def connect_data_source_with_http_info(authentication:, sync_options: SENTINEL, extra: {})
      _body = {}
      _body[:authentication] = authentication if authentication != SENTINEL
      _body[:sync_options] = sync_options if sync_options != SENTINEL
      connect_data_source_input = _body
      connect_data_source_with_http_info_impl(connect_data_source_input, extra)
    end

    # Connect Data Source
    # @param connect_data_source_input [ConnectDataSourceInput] 
    # @param [Hash] opts the optional parameters
    # @return [ConnectDataSourceResponse]
    private def connect_data_source_impl(connect_data_source_input, opts = {})
      data, _status_code, _headers = connect_data_source_with_http_info(connect_data_source_input, opts)
      data
    end

    # Connect Data Source
    # @param connect_data_source_input [ConnectDataSourceInput] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is ConnectDataSourceResponse, status code, headers and response
    private def connect_data_source_with_http_info_impl(connect_data_source_input, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IntegrationsApi.connect_data_source ...'
      end
      # verify the required parameter 'connect_data_source_input' is set
      if @api_client.config.client_side_validation && connect_data_source_input.nil?
        fail ArgumentError, "Missing the required parameter 'connect_data_source_input' when calling IntegrationsApi.connect_data_source"
      end
      # resource path
      local_var_path = '/integrations/connect'

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

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(connect_data_source_input)

      # return_type
      return_type = opts[:debug_return_type] || 'ConnectDataSourceResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['accessToken', 'apiKey', 'customerId']

      new_options = opts.merge(
        :operation => :"IntegrationsApi.connect_data_source",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationsApi#connect_data_source\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Document360 Connect
    #
    # You will need an access token to connect your Document360 account. To obtain an access token, follow the steps highlighted 
    # here https://apidocs.document360.com/apidocs/api-token.
    #
    # @param account_email [String] This email will be used to identify your carbon data source. It should have access to the Document360 account you wish to connect.
    # @param access_token [String] 
    # @param tags [Object] 
    # @param chunk_size [Integer] 
    # @param chunk_overlap [Integer] 
    # @param skip_embedding_generation [Boolean] 
    # @param embedding_model [EmbeddingGenerators] 
    # @param generate_sparse_vectors [Boolean] 
    # @param prepend_filename_to_chunks [Boolean] 
    # @param sync_files_on_connection [Boolean] 
    # @param request_id [String] 
    # @param sync_source_items [Boolean] Enabling this flag will fetch all available content from the source to be listed via list items endpoint
    # @param file_sync_config [FileSyncConfigNullable] 
    # @param data_source_tags [Object] Tags to be associated with the data source. If the data source already has tags set, then an upsert will be performed.
    # @param body [Document360ConnectRequest] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def connect_document360(account_email:, access_token:, tags: SENTINEL, chunk_size: 1500, chunk_overlap: 20, skip_embedding_generation: false, embedding_model: SENTINEL, generate_sparse_vectors: false, prepend_filename_to_chunks: false, sync_files_on_connection: true, request_id: SENTINEL, sync_source_items: true, file_sync_config: SENTINEL, data_source_tags: SENTINEL, extra: {})
      _body = {}
      _body[:tags] = tags if tags != SENTINEL
      _body[:account_email] = account_email if account_email != SENTINEL
      _body[:access_token] = access_token if access_token != SENTINEL
      _body[:chunk_size] = chunk_size if chunk_size != SENTINEL
      _body[:chunk_overlap] = chunk_overlap if chunk_overlap != SENTINEL
      _body[:skip_embedding_generation] = skip_embedding_generation if skip_embedding_generation != SENTINEL
      _body[:embedding_model] = embedding_model if embedding_model != SENTINEL
      _body[:generate_sparse_vectors] = generate_sparse_vectors if generate_sparse_vectors != SENTINEL
      _body[:prepend_filename_to_chunks] = prepend_filename_to_chunks if prepend_filename_to_chunks != SENTINEL
      _body[:sync_files_on_connection] = sync_files_on_connection if sync_files_on_connection != SENTINEL
      _body[:request_id] = request_id if request_id != SENTINEL
      _body[:sync_source_items] = sync_source_items if sync_source_items != SENTINEL
      _body[:file_sync_config] = file_sync_config if file_sync_config != SENTINEL
      _body[:data_source_tags] = data_source_tags if data_source_tags != SENTINEL
      document360_connect_request = _body
      api_response = connect_document360_with_http_info_impl(document360_connect_request, extra)
      api_response.data
    end

    # Document360 Connect
    #
    # You will need an access token to connect your Document360 account. To obtain an access token, follow the steps highlighted 
    # here https://apidocs.document360.com/apidocs/api-token.
    #
    # @param account_email [String] This email will be used to identify your carbon data source. It should have access to the Document360 account you wish to connect.
    # @param access_token [String] 
    # @param tags [Object] 
    # @param chunk_size [Integer] 
    # @param chunk_overlap [Integer] 
    # @param skip_embedding_generation [Boolean] 
    # @param embedding_model [EmbeddingGenerators] 
    # @param generate_sparse_vectors [Boolean] 
    # @param prepend_filename_to_chunks [Boolean] 
    # @param sync_files_on_connection [Boolean] 
    # @param request_id [String] 
    # @param sync_source_items [Boolean] Enabling this flag will fetch all available content from the source to be listed via list items endpoint
    # @param file_sync_config [FileSyncConfigNullable] 
    # @param data_source_tags [Object] Tags to be associated with the data source. If the data source already has tags set, then an upsert will be performed.
    # @param body [Document360ConnectRequest] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def connect_document360_with_http_info(account_email:, access_token:, tags: SENTINEL, chunk_size: 1500, chunk_overlap: 20, skip_embedding_generation: false, embedding_model: SENTINEL, generate_sparse_vectors: false, prepend_filename_to_chunks: false, sync_files_on_connection: true, request_id: SENTINEL, sync_source_items: true, file_sync_config: SENTINEL, data_source_tags: SENTINEL, extra: {})
      _body = {}
      _body[:tags] = tags if tags != SENTINEL
      _body[:account_email] = account_email if account_email != SENTINEL
      _body[:access_token] = access_token if access_token != SENTINEL
      _body[:chunk_size] = chunk_size if chunk_size != SENTINEL
      _body[:chunk_overlap] = chunk_overlap if chunk_overlap != SENTINEL
      _body[:skip_embedding_generation] = skip_embedding_generation if skip_embedding_generation != SENTINEL
      _body[:embedding_model] = embedding_model if embedding_model != SENTINEL
      _body[:generate_sparse_vectors] = generate_sparse_vectors if generate_sparse_vectors != SENTINEL
      _body[:prepend_filename_to_chunks] = prepend_filename_to_chunks if prepend_filename_to_chunks != SENTINEL
      _body[:sync_files_on_connection] = sync_files_on_connection if sync_files_on_connection != SENTINEL
      _body[:request_id] = request_id if request_id != SENTINEL
      _body[:sync_source_items] = sync_source_items if sync_source_items != SENTINEL
      _body[:file_sync_config] = file_sync_config if file_sync_config != SENTINEL
      _body[:data_source_tags] = data_source_tags if data_source_tags != SENTINEL
      document360_connect_request = _body
      connect_document360_with_http_info_impl(document360_connect_request, extra)
    end

    # Document360 Connect
    # You will need an access token to connect your Document360 account. To obtain an access token, follow the steps highlighted  here https://apidocs.document360.com/apidocs/api-token.
    # @param document360_connect_request [Document360ConnectRequest] 
    # @param [Hash] opts the optional parameters
    # @return [GenericSuccessResponse]
    private def connect_document360_impl(document360_connect_request, opts = {})
      data, _status_code, _headers = connect_document360_with_http_info(document360_connect_request, opts)
      data
    end

    # Document360 Connect
    # You will need an access token to connect your Document360 account. To obtain an access token, follow the steps highlighted  here https://apidocs.document360.com/apidocs/api-token.
    # @param document360_connect_request [Document360ConnectRequest] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is GenericSuccessResponse, status code, headers and response
    private def connect_document360_with_http_info_impl(document360_connect_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IntegrationsApi.connect_document360 ...'
      end
      # verify the required parameter 'document360_connect_request' is set
      if @api_client.config.client_side_validation && document360_connect_request.nil?
        fail ArgumentError, "Missing the required parameter 'document360_connect_request' when calling IntegrationsApi.connect_document360"
      end
      # resource path
      local_var_path = '/integrations/document360'

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

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(document360_connect_request)

      # return_type
      return_type = opts[:debug_return_type] || 'GenericSuccessResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['accessToken', 'apiKey', 'customerId']

      new_options = opts.merge(
        :operation => :"IntegrationsApi.connect_document360",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationsApi#connect_document360\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Freshdesk Connect
    #
    # Refer this article to obtain an API key https://support.freshdesk.com/en/support/solutions/articles/215517.
    # Make sure that your API key has the permission to read solutions from your account and you are on a <b>paid</b> plan.
    # Once you have an API key, you can make a request to this endpoint along with your freshdesk domain. This will 
    # trigger an automatic sync of the articles in your "solutions" tab. Additional parameters below can be used to associate 
    # data with the synced articles or modify the sync behavior.
    #
    # @param domain [String] 
    # @param api_key [String] 
    # @param tags [Object] 
    # @param chunk_size [Integer] 
    # @param chunk_overlap [Integer] 
    # @param skip_embedding_generation [Boolean] 
    # @param embedding_model [EmbeddingGeneratorsNullable] 
    # @param generate_sparse_vectors [Boolean] 
    # @param prepend_filename_to_chunks [Boolean] 
    # @param sync_files_on_connection [Boolean] 
    # @param request_id [String] 
    # @param sync_source_items [Boolean] Enabling this flag will fetch all available content from the source to be listed via list items endpoint
    # @param file_sync_config [FileSyncConfigNullable] 
    # @param data_source_tags [Object] Tags to be associated with the data source. If the data source already has tags set, then an upsert will be performed.
    # @param body [FreshDeskConnectRequest] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def connect_freshdesk(domain:, api_key:, tags: SENTINEL, chunk_size: 1500, chunk_overlap: 20, skip_embedding_generation: false, embedding_model: 'OPENAI', generate_sparse_vectors: false, prepend_filename_to_chunks: false, sync_files_on_connection: true, request_id: SENTINEL, sync_source_items: true, file_sync_config: SENTINEL, data_source_tags: SENTINEL, extra: {})
      _body = {}
      _body[:tags] = tags if tags != SENTINEL
      _body[:domain] = domain if domain != SENTINEL
      _body[:api_key] = api_key if api_key != SENTINEL
      _body[:chunk_size] = chunk_size if chunk_size != SENTINEL
      _body[:chunk_overlap] = chunk_overlap if chunk_overlap != SENTINEL
      _body[:skip_embedding_generation] = skip_embedding_generation if skip_embedding_generation != SENTINEL
      _body[:embedding_model] = embedding_model if embedding_model != SENTINEL
      _body[:generate_sparse_vectors] = generate_sparse_vectors if generate_sparse_vectors != SENTINEL
      _body[:prepend_filename_to_chunks] = prepend_filename_to_chunks if prepend_filename_to_chunks != SENTINEL
      _body[:sync_files_on_connection] = sync_files_on_connection if sync_files_on_connection != SENTINEL
      _body[:request_id] = request_id if request_id != SENTINEL
      _body[:sync_source_items] = sync_source_items if sync_source_items != SENTINEL
      _body[:file_sync_config] = file_sync_config if file_sync_config != SENTINEL
      _body[:data_source_tags] = data_source_tags if data_source_tags != SENTINEL
      fresh_desk_connect_request = _body
      api_response = connect_freshdesk_with_http_info_impl(fresh_desk_connect_request, extra)
      api_response.data
    end

    # Freshdesk Connect
    #
    # Refer this article to obtain an API key https://support.freshdesk.com/en/support/solutions/articles/215517.
    # Make sure that your API key has the permission to read solutions from your account and you are on a <b>paid</b> plan.
    # Once you have an API key, you can make a request to this endpoint along with your freshdesk domain. This will 
    # trigger an automatic sync of the articles in your "solutions" tab. Additional parameters below can be used to associate 
    # data with the synced articles or modify the sync behavior.
    #
    # @param domain [String] 
    # @param api_key [String] 
    # @param tags [Object] 
    # @param chunk_size [Integer] 
    # @param chunk_overlap [Integer] 
    # @param skip_embedding_generation [Boolean] 
    # @param embedding_model [EmbeddingGeneratorsNullable] 
    # @param generate_sparse_vectors [Boolean] 
    # @param prepend_filename_to_chunks [Boolean] 
    # @param sync_files_on_connection [Boolean] 
    # @param request_id [String] 
    # @param sync_source_items [Boolean] Enabling this flag will fetch all available content from the source to be listed via list items endpoint
    # @param file_sync_config [FileSyncConfigNullable] 
    # @param data_source_tags [Object] Tags to be associated with the data source. If the data source already has tags set, then an upsert will be performed.
    # @param body [FreshDeskConnectRequest] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def connect_freshdesk_with_http_info(domain:, api_key:, tags: SENTINEL, chunk_size: 1500, chunk_overlap: 20, skip_embedding_generation: false, embedding_model: 'OPENAI', generate_sparse_vectors: false, prepend_filename_to_chunks: false, sync_files_on_connection: true, request_id: SENTINEL, sync_source_items: true, file_sync_config: SENTINEL, data_source_tags: SENTINEL, extra: {})
      _body = {}
      _body[:tags] = tags if tags != SENTINEL
      _body[:domain] = domain if domain != SENTINEL
      _body[:api_key] = api_key if api_key != SENTINEL
      _body[:chunk_size] = chunk_size if chunk_size != SENTINEL
      _body[:chunk_overlap] = chunk_overlap if chunk_overlap != SENTINEL
      _body[:skip_embedding_generation] = skip_embedding_generation if skip_embedding_generation != SENTINEL
      _body[:embedding_model] = embedding_model if embedding_model != SENTINEL
      _body[:generate_sparse_vectors] = generate_sparse_vectors if generate_sparse_vectors != SENTINEL
      _body[:prepend_filename_to_chunks] = prepend_filename_to_chunks if prepend_filename_to_chunks != SENTINEL
      _body[:sync_files_on_connection] = sync_files_on_connection if sync_files_on_connection != SENTINEL
      _body[:request_id] = request_id if request_id != SENTINEL
      _body[:sync_source_items] = sync_source_items if sync_source_items != SENTINEL
      _body[:file_sync_config] = file_sync_config if file_sync_config != SENTINEL
      _body[:data_source_tags] = data_source_tags if data_source_tags != SENTINEL
      fresh_desk_connect_request = _body
      connect_freshdesk_with_http_info_impl(fresh_desk_connect_request, extra)
    end

    # Freshdesk Connect
    # Refer this article to obtain an API key https://support.freshdesk.com/en/support/solutions/articles/215517. Make sure that your API key has the permission to read solutions from your account and you are on a <b>paid</b> plan. Once you have an API key, you can make a request to this endpoint along with your freshdesk domain. This will  trigger an automatic sync of the articles in your \"solutions\" tab. Additional parameters below can be used to associate  data with the synced articles or modify the sync behavior.
    # @param fresh_desk_connect_request [FreshDeskConnectRequest] 
    # @param [Hash] opts the optional parameters
    # @return [GenericSuccessResponse]
    private def connect_freshdesk_impl(fresh_desk_connect_request, opts = {})
      data, _status_code, _headers = connect_freshdesk_with_http_info(fresh_desk_connect_request, opts)
      data
    end

    # Freshdesk Connect
    # Refer this article to obtain an API key https://support.freshdesk.com/en/support/solutions/articles/215517. Make sure that your API key has the permission to read solutions from your account and you are on a &lt;b&gt;paid&lt;/b&gt; plan. Once you have an API key, you can make a request to this endpoint along with your freshdesk domain. This will  trigger an automatic sync of the articles in your \&quot;solutions\&quot; tab. Additional parameters below can be used to associate  data with the synced articles or modify the sync behavior.
    # @param fresh_desk_connect_request [FreshDeskConnectRequest] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is GenericSuccessResponse, status code, headers and response
    private def connect_freshdesk_with_http_info_impl(fresh_desk_connect_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IntegrationsApi.connect_freshdesk ...'
      end
      # verify the required parameter 'fresh_desk_connect_request' is set
      if @api_client.config.client_side_validation && fresh_desk_connect_request.nil?
        fail ArgumentError, "Missing the required parameter 'fresh_desk_connect_request' when calling IntegrationsApi.connect_freshdesk"
      end
      # resource path
      local_var_path = '/integrations/freshdesk'

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

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(fresh_desk_connect_request)

      # return_type
      return_type = opts[:debug_return_type] || 'GenericSuccessResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['accessToken', 'apiKey', 'customerId']

      new_options = opts.merge(
        :operation => :"IntegrationsApi.connect_freshdesk",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationsApi#connect_freshdesk\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Gitbook Connect
    #
    # You will need an access token to connect your Gitbook account. Note that the permissions will be defined by the user 
    # generating access token so make sure you have the permission to access spaces you will be syncing. 
    # Refer this article for more details https://developer.gitbook.com/gitbook-api/authentication. Additionally, you
    # need to specify the name of organization you will be syncing data from.
    #
    # @param organization [String] 
    # @param access_token [String] 
    # @param tags [Object] 
    # @param chunk_size [Integer] 
    # @param chunk_overlap [Integer] 
    # @param skip_embedding_generation [Boolean] 
    # @param embedding_model [EmbeddingGenerators] 
    # @param generate_sparse_vectors [Boolean] 
    # @param prepend_filename_to_chunks [Boolean] 
    # @param sync_files_on_connection [Boolean] 
    # @param request_id [String] 
    # @param sync_source_items [Boolean] Enabling this flag will fetch all available content from the source to be listed via list items endpoint
    # @param file_sync_config [FileSyncConfigNullable] 
    # @param data_source_tags [Object] Tags to be associated with the data source. If the data source already has tags set, then an upsert will be performed.
    # @param body [GitbookConnectRequest] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def connect_gitbook(organization:, access_token:, tags: SENTINEL, chunk_size: 1500, chunk_overlap: 20, skip_embedding_generation: false, embedding_model: SENTINEL, generate_sparse_vectors: false, prepend_filename_to_chunks: false, sync_files_on_connection: true, request_id: SENTINEL, sync_source_items: true, file_sync_config: SENTINEL, data_source_tags: SENTINEL, extra: {})
      _body = {}
      _body[:tags] = tags if tags != SENTINEL
      _body[:organization] = organization if organization != SENTINEL
      _body[:access_token] = access_token if access_token != SENTINEL
      _body[:chunk_size] = chunk_size if chunk_size != SENTINEL
      _body[:chunk_overlap] = chunk_overlap if chunk_overlap != SENTINEL
      _body[:skip_embedding_generation] = skip_embedding_generation if skip_embedding_generation != SENTINEL
      _body[:embedding_model] = embedding_model if embedding_model != SENTINEL
      _body[:generate_sparse_vectors] = generate_sparse_vectors if generate_sparse_vectors != SENTINEL
      _body[:prepend_filename_to_chunks] = prepend_filename_to_chunks if prepend_filename_to_chunks != SENTINEL
      _body[:sync_files_on_connection] = sync_files_on_connection if sync_files_on_connection != SENTINEL
      _body[:request_id] = request_id if request_id != SENTINEL
      _body[:sync_source_items] = sync_source_items if sync_source_items != SENTINEL
      _body[:file_sync_config] = file_sync_config if file_sync_config != SENTINEL
      _body[:data_source_tags] = data_source_tags if data_source_tags != SENTINEL
      gitbook_connect_request = _body
      api_response = connect_gitbook_with_http_info_impl(gitbook_connect_request, extra)
      api_response.data
    end

    # Gitbook Connect
    #
    # You will need an access token to connect your Gitbook account. Note that the permissions will be defined by the user 
    # generating access token so make sure you have the permission to access spaces you will be syncing. 
    # Refer this article for more details https://developer.gitbook.com/gitbook-api/authentication. Additionally, you
    # need to specify the name of organization you will be syncing data from.
    #
    # @param organization [String] 
    # @param access_token [String] 
    # @param tags [Object] 
    # @param chunk_size [Integer] 
    # @param chunk_overlap [Integer] 
    # @param skip_embedding_generation [Boolean] 
    # @param embedding_model [EmbeddingGenerators] 
    # @param generate_sparse_vectors [Boolean] 
    # @param prepend_filename_to_chunks [Boolean] 
    # @param sync_files_on_connection [Boolean] 
    # @param request_id [String] 
    # @param sync_source_items [Boolean] Enabling this flag will fetch all available content from the source to be listed via list items endpoint
    # @param file_sync_config [FileSyncConfigNullable] 
    # @param data_source_tags [Object] Tags to be associated with the data source. If the data source already has tags set, then an upsert will be performed.
    # @param body [GitbookConnectRequest] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def connect_gitbook_with_http_info(organization:, access_token:, tags: SENTINEL, chunk_size: 1500, chunk_overlap: 20, skip_embedding_generation: false, embedding_model: SENTINEL, generate_sparse_vectors: false, prepend_filename_to_chunks: false, sync_files_on_connection: true, request_id: SENTINEL, sync_source_items: true, file_sync_config: SENTINEL, data_source_tags: SENTINEL, extra: {})
      _body = {}
      _body[:tags] = tags if tags != SENTINEL
      _body[:organization] = organization if organization != SENTINEL
      _body[:access_token] = access_token if access_token != SENTINEL
      _body[:chunk_size] = chunk_size if chunk_size != SENTINEL
      _body[:chunk_overlap] = chunk_overlap if chunk_overlap != SENTINEL
      _body[:skip_embedding_generation] = skip_embedding_generation if skip_embedding_generation != SENTINEL
      _body[:embedding_model] = embedding_model if embedding_model != SENTINEL
      _body[:generate_sparse_vectors] = generate_sparse_vectors if generate_sparse_vectors != SENTINEL
      _body[:prepend_filename_to_chunks] = prepend_filename_to_chunks if prepend_filename_to_chunks != SENTINEL
      _body[:sync_files_on_connection] = sync_files_on_connection if sync_files_on_connection != SENTINEL
      _body[:request_id] = request_id if request_id != SENTINEL
      _body[:sync_source_items] = sync_source_items if sync_source_items != SENTINEL
      _body[:file_sync_config] = file_sync_config if file_sync_config != SENTINEL
      _body[:data_source_tags] = data_source_tags if data_source_tags != SENTINEL
      gitbook_connect_request = _body
      connect_gitbook_with_http_info_impl(gitbook_connect_request, extra)
    end

    # Gitbook Connect
    # You will need an access token to connect your Gitbook account. Note that the permissions will be defined by the user  generating access token so make sure you have the permission to access spaces you will be syncing.  Refer this article for more details https://developer.gitbook.com/gitbook-api/authentication. Additionally, you need to specify the name of organization you will be syncing data from.
    # @param gitbook_connect_request [GitbookConnectRequest] 
    # @param [Hash] opts the optional parameters
    # @return [GenericSuccessResponse]
    private def connect_gitbook_impl(gitbook_connect_request, opts = {})
      data, _status_code, _headers = connect_gitbook_with_http_info(gitbook_connect_request, opts)
      data
    end

    # Gitbook Connect
    # You will need an access token to connect your Gitbook account. Note that the permissions will be defined by the user  generating access token so make sure you have the permission to access spaces you will be syncing.  Refer this article for more details https://developer.gitbook.com/gitbook-api/authentication. Additionally, you need to specify the name of organization you will be syncing data from.
    # @param gitbook_connect_request [GitbookConnectRequest] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is GenericSuccessResponse, status code, headers and response
    private def connect_gitbook_with_http_info_impl(gitbook_connect_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IntegrationsApi.connect_gitbook ...'
      end
      # verify the required parameter 'gitbook_connect_request' is set
      if @api_client.config.client_side_validation && gitbook_connect_request.nil?
        fail ArgumentError, "Missing the required parameter 'gitbook_connect_request' when calling IntegrationsApi.connect_gitbook"
      end
      # resource path
      local_var_path = '/integrations/gitbook'

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

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(gitbook_connect_request)

      # return_type
      return_type = opts[:debug_return_type] || 'GenericSuccessResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['accessToken', 'apiKey', 'customerId']

      new_options = opts.merge(
        :operation => :"IntegrationsApi.connect_gitbook",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationsApi#connect_gitbook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Guru Connect
    #
    # You will need an access token to connect your Guru account. To obtain an access token, follow the steps highlighted here
    # https://help.getguru.com/docs/gurus-api#obtaining-a-user-token. The username should be your Guru username.
    #
    # @param username [String] 
    # @param access_token [String] 
    # @param tags [Object] 
    # @param chunk_size [Integer] 
    # @param chunk_overlap [Integer] 
    # @param skip_embedding_generation [Boolean] 
    # @param embedding_model [EmbeddingGenerators] 
    # @param generate_sparse_vectors [Boolean] 
    # @param prepend_filename_to_chunks [Boolean] 
    # @param sync_files_on_connection [Boolean] 
    # @param request_id [String] 
    # @param sync_source_items [Boolean] Enabling this flag will fetch all available content from the source to be listed via list items endpoint
    # @param file_sync_config [FileSyncConfigNullable] 
    # @param data_source_tags [Object] Tags to be associated with the data source. If the data source already has tags set, then an upsert will be performed.
    # @param body [GuruConnectRequest] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def connect_guru(username:, access_token:, tags: SENTINEL, chunk_size: 1500, chunk_overlap: 20, skip_embedding_generation: false, embedding_model: SENTINEL, generate_sparse_vectors: false, prepend_filename_to_chunks: false, sync_files_on_connection: true, request_id: SENTINEL, sync_source_items: true, file_sync_config: SENTINEL, data_source_tags: SENTINEL, extra: {})
      _body = {}
      _body[:tags] = tags if tags != SENTINEL
      _body[:username] = username if username != SENTINEL
      _body[:access_token] = access_token if access_token != SENTINEL
      _body[:chunk_size] = chunk_size if chunk_size != SENTINEL
      _body[:chunk_overlap] = chunk_overlap if chunk_overlap != SENTINEL
      _body[:skip_embedding_generation] = skip_embedding_generation if skip_embedding_generation != SENTINEL
      _body[:embedding_model] = embedding_model if embedding_model != SENTINEL
      _body[:generate_sparse_vectors] = generate_sparse_vectors if generate_sparse_vectors != SENTINEL
      _body[:prepend_filename_to_chunks] = prepend_filename_to_chunks if prepend_filename_to_chunks != SENTINEL
      _body[:sync_files_on_connection] = sync_files_on_connection if sync_files_on_connection != SENTINEL
      _body[:request_id] = request_id if request_id != SENTINEL
      _body[:sync_source_items] = sync_source_items if sync_source_items != SENTINEL
      _body[:file_sync_config] = file_sync_config if file_sync_config != SENTINEL
      _body[:data_source_tags] = data_source_tags if data_source_tags != SENTINEL
      guru_connect_request = _body
      api_response = connect_guru_with_http_info_impl(guru_connect_request, extra)
      api_response.data
    end

    # Guru Connect
    #
    # You will need an access token to connect your Guru account. To obtain an access token, follow the steps highlighted here
    # https://help.getguru.com/docs/gurus-api#obtaining-a-user-token. The username should be your Guru username.
    #
    # @param username [String] 
    # @param access_token [String] 
    # @param tags [Object] 
    # @param chunk_size [Integer] 
    # @param chunk_overlap [Integer] 
    # @param skip_embedding_generation [Boolean] 
    # @param embedding_model [EmbeddingGenerators] 
    # @param generate_sparse_vectors [Boolean] 
    # @param prepend_filename_to_chunks [Boolean] 
    # @param sync_files_on_connection [Boolean] 
    # @param request_id [String] 
    # @param sync_source_items [Boolean] Enabling this flag will fetch all available content from the source to be listed via list items endpoint
    # @param file_sync_config [FileSyncConfigNullable] 
    # @param data_source_tags [Object] Tags to be associated with the data source. If the data source already has tags set, then an upsert will be performed.
    # @param body [GuruConnectRequest] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def connect_guru_with_http_info(username:, access_token:, tags: SENTINEL, chunk_size: 1500, chunk_overlap: 20, skip_embedding_generation: false, embedding_model: SENTINEL, generate_sparse_vectors: false, prepend_filename_to_chunks: false, sync_files_on_connection: true, request_id: SENTINEL, sync_source_items: true, file_sync_config: SENTINEL, data_source_tags: SENTINEL, extra: {})
      _body = {}
      _body[:tags] = tags if tags != SENTINEL
      _body[:username] = username if username != SENTINEL
      _body[:access_token] = access_token if access_token != SENTINEL
      _body[:chunk_size] = chunk_size if chunk_size != SENTINEL
      _body[:chunk_overlap] = chunk_overlap if chunk_overlap != SENTINEL
      _body[:skip_embedding_generation] = skip_embedding_generation if skip_embedding_generation != SENTINEL
      _body[:embedding_model] = embedding_model if embedding_model != SENTINEL
      _body[:generate_sparse_vectors] = generate_sparse_vectors if generate_sparse_vectors != SENTINEL
      _body[:prepend_filename_to_chunks] = prepend_filename_to_chunks if prepend_filename_to_chunks != SENTINEL
      _body[:sync_files_on_connection] = sync_files_on_connection if sync_files_on_connection != SENTINEL
      _body[:request_id] = request_id if request_id != SENTINEL
      _body[:sync_source_items] = sync_source_items if sync_source_items != SENTINEL
      _body[:file_sync_config] = file_sync_config if file_sync_config != SENTINEL
      _body[:data_source_tags] = data_source_tags if data_source_tags != SENTINEL
      guru_connect_request = _body
      connect_guru_with_http_info_impl(guru_connect_request, extra)
    end

    # Guru Connect
    # You will need an access token to connect your Guru account. To obtain an access token, follow the steps highlighted here https://help.getguru.com/docs/gurus-api#obtaining-a-user-token. The username should be your Guru username.
    # @param guru_connect_request [GuruConnectRequest] 
    # @param [Hash] opts the optional parameters
    # @return [GenericSuccessResponse]
    private def connect_guru_impl(guru_connect_request, opts = {})
      data, _status_code, _headers = connect_guru_with_http_info(guru_connect_request, opts)
      data
    end

    # Guru Connect
    # You will need an access token to connect your Guru account. To obtain an access token, follow the steps highlighted here https://help.getguru.com/docs/gurus-api#obtaining-a-user-token. The username should be your Guru username.
    # @param guru_connect_request [GuruConnectRequest] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is GenericSuccessResponse, status code, headers and response
    private def connect_guru_with_http_info_impl(guru_connect_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IntegrationsApi.connect_guru ...'
      end
      # verify the required parameter 'guru_connect_request' is set
      if @api_client.config.client_side_validation && guru_connect_request.nil?
        fail ArgumentError, "Missing the required parameter 'guru_connect_request' when calling IntegrationsApi.connect_guru"
      end
      # resource path
      local_var_path = '/integrations/guru'

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

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(guru_connect_request)

      # return_type
      return_type = opts[:debug_return_type] || 'GenericSuccessResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['accessToken', 'apiKey', 'customerId']

      new_options = opts.merge(
        :operation => :"IntegrationsApi.connect_guru",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationsApi#connect_guru\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # S3 Auth
    #
    # This endpoint can be used to connect S3 as well as Digital Ocean Spaces (S3 compatible)  
    # For S3, create a new IAM user with permissions to:
    # <ol>
    # <li>List all buckets.</li>
    # <li>Read from the specific buckets and objects to sync with Carbon. Ensure any future buckets or objects carry 
    # the same permissions.</li>
    # </ol>
    # Once created, generate an access key for this user and share the credentials with us. We recommend testing this key beforehand.  
    # For Digital Ocean Spaces, generate the above credentials in your Applications and API page here https://cloud.digitalocean.com/account/api/spaces.
    # Endpoint URL is required to connect Digital Ocean Spaces. It should look like <<region>>.digitaloceanspaces.com
    #
    # @param access_key [String] 
    # @param access_key_secret [String] 
    # @param sync_source_items [Boolean] Enabling this flag will fetch all available content from the source to be listed via list items endpoint
    # @param endpoint_url [String] You can specify a Digital Ocean endpoint URL to connect a Digital Ocean Space through this endpoint. The URL should be of format <region>.digitaloceanspaces.com. It's not required for S3 buckets.
    # @param data_source_tags [Object] Tags to be associated with the data source. If the data source already has tags set, then an upsert will be performed.
    # @param body [S3AuthRequest] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def create_aws_iam_user(access_key:, access_key_secret:, sync_source_items: true, endpoint_url: SENTINEL, data_source_tags: SENTINEL, extra: {})
      _body = {}
      _body[:access_key] = access_key if access_key != SENTINEL
      _body[:access_key_secret] = access_key_secret if access_key_secret != SENTINEL
      _body[:sync_source_items] = sync_source_items if sync_source_items != SENTINEL
      _body[:endpoint_url] = endpoint_url if endpoint_url != SENTINEL
      _body[:data_source_tags] = data_source_tags if data_source_tags != SENTINEL
      s3_auth_request = _body
      api_response = create_aws_iam_user_with_http_info_impl(s3_auth_request, extra)
      api_response.data
    end

    # S3 Auth
    #
    # This endpoint can be used to connect S3 as well as Digital Ocean Spaces (S3 compatible)  
    # For S3, create a new IAM user with permissions to:
    # <ol>
    # <li>List all buckets.</li>
    # <li>Read from the specific buckets and objects to sync with Carbon. Ensure any future buckets or objects carry 
    # the same permissions.</li>
    # </ol>
    # Once created, generate an access key for this user and share the credentials with us. We recommend testing this key beforehand.  
    # For Digital Ocean Spaces, generate the above credentials in your Applications and API page here https://cloud.digitalocean.com/account/api/spaces.
    # Endpoint URL is required to connect Digital Ocean Spaces. It should look like <<region>>.digitaloceanspaces.com
    #
    # @param access_key [String] 
    # @param access_key_secret [String] 
    # @param sync_source_items [Boolean] Enabling this flag will fetch all available content from the source to be listed via list items endpoint
    # @param endpoint_url [String] You can specify a Digital Ocean endpoint URL to connect a Digital Ocean Space through this endpoint. The URL should be of format <region>.digitaloceanspaces.com. It's not required for S3 buckets.
    # @param data_source_tags [Object] Tags to be associated with the data source. If the data source already has tags set, then an upsert will be performed.
    # @param body [S3AuthRequest] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def create_aws_iam_user_with_http_info(access_key:, access_key_secret:, sync_source_items: true, endpoint_url: SENTINEL, data_source_tags: SENTINEL, extra: {})
      _body = {}
      _body[:access_key] = access_key if access_key != SENTINEL
      _body[:access_key_secret] = access_key_secret if access_key_secret != SENTINEL
      _body[:sync_source_items] = sync_source_items if sync_source_items != SENTINEL
      _body[:endpoint_url] = endpoint_url if endpoint_url != SENTINEL
      _body[:data_source_tags] = data_source_tags if data_source_tags != SENTINEL
      s3_auth_request = _body
      create_aws_iam_user_with_http_info_impl(s3_auth_request, extra)
    end

    # S3 Auth
    # This endpoint can be used to connect S3 as well as Digital Ocean Spaces (S3 compatible)   For S3, create a new IAM user with permissions to: <ol> <li>List all buckets.</li> <li>Read from the specific buckets and objects to sync with Carbon. Ensure any future buckets or objects carry  the same permissions.</li> </ol> Once created, generate an access key for this user and share the credentials with us. We recommend testing this key beforehand.   For Digital Ocean Spaces, generate the above credentials in your Applications and API page here https://cloud.digitalocean.com/account/api/spaces. Endpoint URL is required to connect Digital Ocean Spaces. It should look like <<region>>.digitaloceanspaces.com
    # @param s3_auth_request [S3AuthRequest] 
    # @param [Hash] opts the optional parameters
    # @return [OrganizationUserDataSourceAPI]
    private def create_aws_iam_user_impl(s3_auth_request, opts = {})
      data, _status_code, _headers = create_aws_iam_user_with_http_info(s3_auth_request, opts)
      data
    end

    # S3 Auth
    # This endpoint can be used to connect S3 as well as Digital Ocean Spaces (S3 compatible)   For S3, create a new IAM user with permissions to: &lt;ol&gt; &lt;li&gt;List all buckets.&lt;/li&gt; &lt;li&gt;Read from the specific buckets and objects to sync with Carbon. Ensure any future buckets or objects carry  the same permissions.&lt;/li&gt; &lt;/ol&gt; Once created, generate an access key for this user and share the credentials with us. We recommend testing this key beforehand.   For Digital Ocean Spaces, generate the above credentials in your Applications and API page here https://cloud.digitalocean.com/account/api/spaces. Endpoint URL is required to connect Digital Ocean Spaces. It should look like &lt;&lt;region&gt;&gt;.digitaloceanspaces.com
    # @param s3_auth_request [S3AuthRequest] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is OrganizationUserDataSourceAPI, status code, headers and response
    private def create_aws_iam_user_with_http_info_impl(s3_auth_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IntegrationsApi.create_aws_iam_user ...'
      end
      # verify the required parameter 's3_auth_request' is set
      if @api_client.config.client_side_validation && s3_auth_request.nil?
        fail ArgumentError, "Missing the required parameter 's3_auth_request' when calling IntegrationsApi.create_aws_iam_user"
      end
      # resource path
      local_var_path = '/integrations/s3'

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

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(s3_auth_request)

      # return_type
      return_type = opts[:debug_return_type] || 'OrganizationUserDataSourceAPI'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['accessToken', 'apiKey', 'customerId']

      new_options = opts.merge(
        :operation => :"IntegrationsApi.create_aws_iam_user",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationsApi#create_aws_iam_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Get Oauth Url
    #
    # This endpoint can be used to generate the following URLs
    # - An OAuth URL for OAuth based connectors
    # - A file syncing URL which skips the OAuth flow if the user already has a valid access token and takes them to the
    # success state.
    #
    # @param service [OauthBasedConnectors] 
    # @param tags [Object] 
    # @param scope [String] 
    # @param scopes [Array<String>] List of scopes to request from the OAuth provider. Please that the scopes will be used as it is, not combined with the default props that Carbon uses. One scope should be one array element.
    # @param chunk_size [Integer] 
    # @param chunk_overlap [Integer] 
    # @param skip_embedding_generation [Boolean] 
    # @param embedding_model [EmbeddingGeneratorsNullable] 
    # @param zendesk_subdomain [String] 
    # @param microsoft_tenant [String] 
    # @param sharepoint_site_name [String] 
    # @param confluence_subdomain [String] 
    # @param generate_sparse_vectors [Boolean] 
    # @param prepend_filename_to_chunks [Boolean] 
    # @param max_items_per_chunk [Integer] Number of objects per chunk. For csv, tsv, xlsx, and json files only.
    # @param salesforce_domain [String] 
    # @param sync_files_on_connection [Boolean] Used to specify whether Carbon should attempt to sync all your files automatically when authorization is complete. This is only supported for a subset of connectors and will be ignored for the rest. Supported connectors: Intercom, Zendesk, Gitbook, Confluence, Salesforce, Freshdesk
    # @param set_page_as_boundary [Boolean] 
    # @param data_source_id [Integer] Used to specify a data source to sync from if you have multiple connected. It can be skipped if you only have one data source of that type connected or are connecting a new account.
    # @param connecting_new_account [Boolean] Used to connect a new data source. If not specified, we will attempt to create a sync URL for an existing data source based on type and ID.
    # @param request_id [String] This request id will be added to all files that get synced using the generated OAuth URL
    # @param use_ocr [Boolean] Enable OCR for files that support it. Supported formats: pdf, png, jpg
    # @param parse_pdf_tables_with_ocr [Boolean] 
    # @param enable_file_picker [Boolean] Enable integration's file picker for sources that support it. Supported sources: BOX, DROPBOX, GOOGLE_DRIVE, ONEDRIVE, SHAREPOINT
    # @param sync_source_items [Boolean] Enabling this flag will fetch all available content from the source to be listed via list items endpoint
    # @param incremental_sync [Boolean] Only sync files if they have not already been synced or if the embedding properties have changed. This flag is currently supported by ONEDRIVE, GOOGLE_DRIVE, BOX, DROPBOX, INTERCOM, GMAIL, OUTLOOK, ZENDESK, CONFLUENCE, NOTION, SHAREPOINT, SERVICENOW. It will be ignored for other data sources.
    # @param file_sync_config [FileSyncConfigNullable] 
    # @param automatically_open_file_picker [Boolean] Automatically open source file picker after the OAuth flow is complete. This flag is currently supported by BOX, DROPBOX, GOOGLE_DRIVE, ONEDRIVE, SHAREPOINT. It will be ignored for other data sources.
    # @param gong_account_email [String] If you are connecting a Gong account, you need to input the email of the account you wish to connect. This email will be used to identify your carbon data source.
    # @param servicenow_credentials [ServiceNowCredentialsNullable] 
    # @param data_source_tags [Object] Tags to be associated with the data source. If the data source already has tags set, then an upsert will be performed.
    # @param body [OAuthURLRequest] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_oauth_url(service:, tags: SENTINEL, scope: SENTINEL, scopes: SENTINEL, chunk_size: 1500, chunk_overlap: 20, skip_embedding_generation: false, embedding_model: 'OPENAI', zendesk_subdomain: SENTINEL, microsoft_tenant: SENTINEL, sharepoint_site_name: SENTINEL, confluence_subdomain: SENTINEL, generate_sparse_vectors: false, prepend_filename_to_chunks: false, max_items_per_chunk: SENTINEL, salesforce_domain: SENTINEL, sync_files_on_connection: true, set_page_as_boundary: false, data_source_id: SENTINEL, connecting_new_account: false, request_id: SENTINEL, use_ocr: false, parse_pdf_tables_with_ocr: false, enable_file_picker: true, sync_source_items: true, incremental_sync: false, file_sync_config: SENTINEL, automatically_open_file_picker: SENTINEL, gong_account_email: SENTINEL, servicenow_credentials: SENTINEL, data_source_tags: SENTINEL, extra: {})
      _body = {}
      _body[:tags] = tags if tags != SENTINEL
      _body[:scope] = scope if scope != SENTINEL
      _body[:scopes] = scopes if scopes != SENTINEL
      _body[:service] = service if service != SENTINEL
      _body[:chunk_size] = chunk_size if chunk_size != SENTINEL
      _body[:chunk_overlap] = chunk_overlap if chunk_overlap != SENTINEL
      _body[:skip_embedding_generation] = skip_embedding_generation if skip_embedding_generation != SENTINEL
      _body[:embedding_model] = embedding_model if embedding_model != SENTINEL
      _body[:zendesk_subdomain] = zendesk_subdomain if zendesk_subdomain != SENTINEL
      _body[:microsoft_tenant] = microsoft_tenant if microsoft_tenant != SENTINEL
      _body[:sharepoint_site_name] = sharepoint_site_name if sharepoint_site_name != SENTINEL
      _body[:confluence_subdomain] = confluence_subdomain if confluence_subdomain != SENTINEL
      _body[:generate_sparse_vectors] = generate_sparse_vectors if generate_sparse_vectors != SENTINEL
      _body[:prepend_filename_to_chunks] = prepend_filename_to_chunks if prepend_filename_to_chunks != SENTINEL
      _body[:max_items_per_chunk] = max_items_per_chunk if max_items_per_chunk != SENTINEL
      _body[:salesforce_domain] = salesforce_domain if salesforce_domain != SENTINEL
      _body[:sync_files_on_connection] = sync_files_on_connection if sync_files_on_connection != SENTINEL
      _body[:set_page_as_boundary] = set_page_as_boundary if set_page_as_boundary != SENTINEL
      _body[:data_source_id] = data_source_id if data_source_id != SENTINEL
      _body[:connecting_new_account] = connecting_new_account if connecting_new_account != SENTINEL
      _body[:request_id] = request_id if request_id != SENTINEL
      _body[:use_ocr] = use_ocr if use_ocr != SENTINEL
      _body[:parse_pdf_tables_with_ocr] = parse_pdf_tables_with_ocr if parse_pdf_tables_with_ocr != SENTINEL
      _body[:enable_file_picker] = enable_file_picker if enable_file_picker != SENTINEL
      _body[:sync_source_items] = sync_source_items if sync_source_items != SENTINEL
      _body[:incremental_sync] = incremental_sync if incremental_sync != SENTINEL
      _body[:file_sync_config] = file_sync_config if file_sync_config != SENTINEL
      _body[:automatically_open_file_picker] = automatically_open_file_picker if automatically_open_file_picker != SENTINEL
      _body[:gong_account_email] = gong_account_email if gong_account_email != SENTINEL
      _body[:servicenow_credentials] = servicenow_credentials if servicenow_credentials != SENTINEL
      _body[:data_source_tags] = data_source_tags if data_source_tags != SENTINEL
      o_auth_url_request = _body
      api_response = get_oauth_url_with_http_info_impl(o_auth_url_request, extra)
      api_response.data
    end

    # Get Oauth Url
    #
    # This endpoint can be used to generate the following URLs
    # - An OAuth URL for OAuth based connectors
    # - A file syncing URL which skips the OAuth flow if the user already has a valid access token and takes them to the
    # success state.
    #
    # @param service [OauthBasedConnectors] 
    # @param tags [Object] 
    # @param scope [String] 
    # @param scopes [Array<String>] List of scopes to request from the OAuth provider. Please that the scopes will be used as it is, not combined with the default props that Carbon uses. One scope should be one array element.
    # @param chunk_size [Integer] 
    # @param chunk_overlap [Integer] 
    # @param skip_embedding_generation [Boolean] 
    # @param embedding_model [EmbeddingGeneratorsNullable] 
    # @param zendesk_subdomain [String] 
    # @param microsoft_tenant [String] 
    # @param sharepoint_site_name [String] 
    # @param confluence_subdomain [String] 
    # @param generate_sparse_vectors [Boolean] 
    # @param prepend_filename_to_chunks [Boolean] 
    # @param max_items_per_chunk [Integer] Number of objects per chunk. For csv, tsv, xlsx, and json files only.
    # @param salesforce_domain [String] 
    # @param sync_files_on_connection [Boolean] Used to specify whether Carbon should attempt to sync all your files automatically when authorization is complete. This is only supported for a subset of connectors and will be ignored for the rest. Supported connectors: Intercom, Zendesk, Gitbook, Confluence, Salesforce, Freshdesk
    # @param set_page_as_boundary [Boolean] 
    # @param data_source_id [Integer] Used to specify a data source to sync from if you have multiple connected. It can be skipped if you only have one data source of that type connected or are connecting a new account.
    # @param connecting_new_account [Boolean] Used to connect a new data source. If not specified, we will attempt to create a sync URL for an existing data source based on type and ID.
    # @param request_id [String] This request id will be added to all files that get synced using the generated OAuth URL
    # @param use_ocr [Boolean] Enable OCR for files that support it. Supported formats: pdf, png, jpg
    # @param parse_pdf_tables_with_ocr [Boolean] 
    # @param enable_file_picker [Boolean] Enable integration's file picker for sources that support it. Supported sources: BOX, DROPBOX, GOOGLE_DRIVE, ONEDRIVE, SHAREPOINT
    # @param sync_source_items [Boolean] Enabling this flag will fetch all available content from the source to be listed via list items endpoint
    # @param incremental_sync [Boolean] Only sync files if they have not already been synced or if the embedding properties have changed. This flag is currently supported by ONEDRIVE, GOOGLE_DRIVE, BOX, DROPBOX, INTERCOM, GMAIL, OUTLOOK, ZENDESK, CONFLUENCE, NOTION, SHAREPOINT, SERVICENOW. It will be ignored for other data sources.
    # @param file_sync_config [FileSyncConfigNullable] 
    # @param automatically_open_file_picker [Boolean] Automatically open source file picker after the OAuth flow is complete. This flag is currently supported by BOX, DROPBOX, GOOGLE_DRIVE, ONEDRIVE, SHAREPOINT. It will be ignored for other data sources.
    # @param gong_account_email [String] If you are connecting a Gong account, you need to input the email of the account you wish to connect. This email will be used to identify your carbon data source.
    # @param servicenow_credentials [ServiceNowCredentialsNullable] 
    # @param data_source_tags [Object] Tags to be associated with the data source. If the data source already has tags set, then an upsert will be performed.
    # @param body [OAuthURLRequest] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_oauth_url_with_http_info(service:, tags: SENTINEL, scope: SENTINEL, scopes: SENTINEL, chunk_size: 1500, chunk_overlap: 20, skip_embedding_generation: false, embedding_model: 'OPENAI', zendesk_subdomain: SENTINEL, microsoft_tenant: SENTINEL, sharepoint_site_name: SENTINEL, confluence_subdomain: SENTINEL, generate_sparse_vectors: false, prepend_filename_to_chunks: false, max_items_per_chunk: SENTINEL, salesforce_domain: SENTINEL, sync_files_on_connection: true, set_page_as_boundary: false, data_source_id: SENTINEL, connecting_new_account: false, request_id: SENTINEL, use_ocr: false, parse_pdf_tables_with_ocr: false, enable_file_picker: true, sync_source_items: true, incremental_sync: false, file_sync_config: SENTINEL, automatically_open_file_picker: SENTINEL, gong_account_email: SENTINEL, servicenow_credentials: SENTINEL, data_source_tags: SENTINEL, extra: {})
      _body = {}
      _body[:tags] = tags if tags != SENTINEL
      _body[:scope] = scope if scope != SENTINEL
      _body[:scopes] = scopes if scopes != SENTINEL
      _body[:service] = service if service != SENTINEL
      _body[:chunk_size] = chunk_size if chunk_size != SENTINEL
      _body[:chunk_overlap] = chunk_overlap if chunk_overlap != SENTINEL
      _body[:skip_embedding_generation] = skip_embedding_generation if skip_embedding_generation != SENTINEL
      _body[:embedding_model] = embedding_model if embedding_model != SENTINEL
      _body[:zendesk_subdomain] = zendesk_subdomain if zendesk_subdomain != SENTINEL
      _body[:microsoft_tenant] = microsoft_tenant if microsoft_tenant != SENTINEL
      _body[:sharepoint_site_name] = sharepoint_site_name if sharepoint_site_name != SENTINEL
      _body[:confluence_subdomain] = confluence_subdomain if confluence_subdomain != SENTINEL
      _body[:generate_sparse_vectors] = generate_sparse_vectors if generate_sparse_vectors != SENTINEL
      _body[:prepend_filename_to_chunks] = prepend_filename_to_chunks if prepend_filename_to_chunks != SENTINEL
      _body[:max_items_per_chunk] = max_items_per_chunk if max_items_per_chunk != SENTINEL
      _body[:salesforce_domain] = salesforce_domain if salesforce_domain != SENTINEL
      _body[:sync_files_on_connection] = sync_files_on_connection if sync_files_on_connection != SENTINEL
      _body[:set_page_as_boundary] = set_page_as_boundary if set_page_as_boundary != SENTINEL
      _body[:data_source_id] = data_source_id if data_source_id != SENTINEL
      _body[:connecting_new_account] = connecting_new_account if connecting_new_account != SENTINEL
      _body[:request_id] = request_id if request_id != SENTINEL
      _body[:use_ocr] = use_ocr if use_ocr != SENTINEL
      _body[:parse_pdf_tables_with_ocr] = parse_pdf_tables_with_ocr if parse_pdf_tables_with_ocr != SENTINEL
      _body[:enable_file_picker] = enable_file_picker if enable_file_picker != SENTINEL
      _body[:sync_source_items] = sync_source_items if sync_source_items != SENTINEL
      _body[:incremental_sync] = incremental_sync if incremental_sync != SENTINEL
      _body[:file_sync_config] = file_sync_config if file_sync_config != SENTINEL
      _body[:automatically_open_file_picker] = automatically_open_file_picker if automatically_open_file_picker != SENTINEL
      _body[:gong_account_email] = gong_account_email if gong_account_email != SENTINEL
      _body[:servicenow_credentials] = servicenow_credentials if servicenow_credentials != SENTINEL
      _body[:data_source_tags] = data_source_tags if data_source_tags != SENTINEL
      o_auth_url_request = _body
      get_oauth_url_with_http_info_impl(o_auth_url_request, extra)
    end

    # Get Oauth Url
    # This endpoint can be used to generate the following URLs - An OAuth URL for OAuth based connectors - A file syncing URL which skips the OAuth flow if the user already has a valid access token and takes them to the success state.
    # @param o_auth_url_request [OAuthURLRequest] 
    # @param [Hash] opts the optional parameters
    # @return [OuthURLResponse]
    private def get_oauth_url_impl(o_auth_url_request, opts = {})
      data, _status_code, _headers = get_oauth_url_with_http_info(o_auth_url_request, opts)
      data
    end

    # Get Oauth Url
    # This endpoint can be used to generate the following URLs - An OAuth URL for OAuth based connectors - A file syncing URL which skips the OAuth flow if the user already has a valid access token and takes them to the success state.
    # @param o_auth_url_request [OAuthURLRequest] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is OuthURLResponse, status code, headers and response
    private def get_oauth_url_with_http_info_impl(o_auth_url_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IntegrationsApi.get_oauth_url ...'
      end
      # verify the required parameter 'o_auth_url_request' is set
      if @api_client.config.client_side_validation && o_auth_url_request.nil?
        fail ArgumentError, "Missing the required parameter 'o_auth_url_request' when calling IntegrationsApi.get_oauth_url"
      end
      # resource path
      local_var_path = '/integrations/oauth_url'

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

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(o_auth_url_request)

      # return_type
      return_type = opts[:debug_return_type] || 'OuthURLResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['accessToken', 'apiKey', 'customerId']

      new_options = opts.merge(
        :operation => :"IntegrationsApi.get_oauth_url",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationsApi#get_oauth_url\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Confluence List
    #
    # This endpoint has been deprecated. Use /integrations/items/list instead.
    # 
    # To begin listing a user's Confluence pages, at least a `data_source_id` of a connected
    # Confluence account must be specified. This base request returns a list of root pages for
    # every space the user has access to in a Confluence instance. To traverse further down
    # the user's page directory, additional requests to this endpoint can be made with the same
    # `data_source_id` and with `parent_id` set to the id of page from a previous request. For
    # convenience, the `has_children` property in each directory item in the response list will
    # flag which pages will return non-empty lists of pages when set as the `parent_id`.
    #
    # @param data_source_id [Integer] 
    # @param parent_id [String] 
    # @param body [ListRequest] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_confluence_pages(data_source_id:, parent_id: SENTINEL, extra: {})
      _body = {}
      _body[:data_source_id] = data_source_id if data_source_id != SENTINEL
      _body[:parent_id] = parent_id if parent_id != SENTINEL
      list_request = _body
      api_response = list_confluence_pages_with_http_info_impl(list_request, extra)
      api_response.data
    end

    # Confluence List
    #
    # This endpoint has been deprecated. Use /integrations/items/list instead.
    # 
    # To begin listing a user's Confluence pages, at least a `data_source_id` of a connected
    # Confluence account must be specified. This base request returns a list of root pages for
    # every space the user has access to in a Confluence instance. To traverse further down
    # the user's page directory, additional requests to this endpoint can be made with the same
    # `data_source_id` and with `parent_id` set to the id of page from a previous request. For
    # convenience, the `has_children` property in each directory item in the response list will
    # flag which pages will return non-empty lists of pages when set as the `parent_id`.
    #
    # @param data_source_id [Integer] 
    # @param parent_id [String] 
    # @param body [ListRequest] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_confluence_pages_with_http_info(data_source_id:, parent_id: SENTINEL, extra: {})
      _body = {}
      _body[:data_source_id] = data_source_id if data_source_id != SENTINEL
      _body[:parent_id] = parent_id if parent_id != SENTINEL
      list_request = _body
      list_confluence_pages_with_http_info_impl(list_request, extra)
    end

    # Confluence List
    # This endpoint has been deprecated. Use /integrations/items/list instead.  To begin listing a user's Confluence pages, at least a `data_source_id` of a connected Confluence account must be specified. This base request returns a list of root pages for every space the user has access to in a Confluence instance. To traverse further down the user's page directory, additional requests to this endpoint can be made with the same `data_source_id` and with `parent_id` set to the id of page from a previous request. For convenience, the `has_children` property in each directory item in the response list will flag which pages will return non-empty lists of pages when set as the `parent_id`.
    # @param list_request [ListRequest] 
    # @param [Hash] opts the optional parameters
    # @return [ListResponse]
    private def list_confluence_pages_impl(list_request, opts = {})
      data, _status_code, _headers = list_confluence_pages_with_http_info(list_request, opts)
      data
    end

    # Confluence List
    # This endpoint has been deprecated. Use /integrations/items/list instead.  To begin listing a user&#39;s Confluence pages, at least a &#x60;data_source_id&#x60; of a connected Confluence account must be specified. This base request returns a list of root pages for every space the user has access to in a Confluence instance. To traverse further down the user&#39;s page directory, additional requests to this endpoint can be made with the same &#x60;data_source_id&#x60; and with &#x60;parent_id&#x60; set to the id of page from a previous request. For convenience, the &#x60;has_children&#x60; property in each directory item in the response list will flag which pages will return non-empty lists of pages when set as the &#x60;parent_id&#x60;.
    # @param list_request [ListRequest] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is ListResponse, status code, headers and response
    private def list_confluence_pages_with_http_info_impl(list_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IntegrationsApi.list_confluence_pages ...'
      end
      # verify the required parameter 'list_request' is set
      if @api_client.config.client_side_validation && list_request.nil?
        fail ArgumentError, "Missing the required parameter 'list_request' when calling IntegrationsApi.list_confluence_pages"
      end
      # resource path
      local_var_path = '/integrations/confluence/list'

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

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(list_request)

      # return_type
      return_type = opts[:debug_return_type] || 'ListResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['accessToken', 'apiKey', 'customerId']

      new_options = opts.merge(
        :operation => :"IntegrationsApi.list_confluence_pages",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationsApi#list_confluence_pages\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Slack List Conversations
    #
    # List all of your public and private channels, DMs, and Group DMs. The ID from response 
    # can be used as a filter to sync messages to Carbon   
    # types: Comma separated list of types. Available types are im (DMs), mpim (group DMs), public_channel, and private_channel.
    # Defaults to public_channel.    
    # cursor: Used for pagination. If next_cursor is returned in response, you need to pass it as the cursor in the next request    
    # data_source_id: Data source needs to be specified if you have linked multiple slack accounts  
    # exclude_archived: Should archived conversations be excluded, defaults to true
    #
    # @param types [String] 
    # @param cursor [String] 
    # @param data_source_id [Integer] 
    # @param exclude_archived [Boolean] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_conversations(types: 'public_channel', cursor: SENTINEL, data_source_id: SENTINEL, exclude_archived: true, extra: {})
      extra[:types] = types if types != SENTINEL
      extra[:cursor] = cursor if cursor != SENTINEL
      extra[:data_source_id] = data_source_id if data_source_id != SENTINEL
      extra[:exclude_archived] = exclude_archived if exclude_archived != SENTINEL
      api_response = list_conversations_with_http_info_impl(extra)
      api_response.data
    end

    # Slack List Conversations
    #
    # List all of your public and private channels, DMs, and Group DMs. The ID from response 
    # can be used as a filter to sync messages to Carbon   
    # types: Comma separated list of types. Available types are im (DMs), mpim (group DMs), public_channel, and private_channel.
    # Defaults to public_channel.    
    # cursor: Used for pagination. If next_cursor is returned in response, you need to pass it as the cursor in the next request    
    # data_source_id: Data source needs to be specified if you have linked multiple slack accounts  
    # exclude_archived: Should archived conversations be excluded, defaults to true
    #
    # @param types [String] 
    # @param cursor [String] 
    # @param data_source_id [Integer] 
    # @param exclude_archived [Boolean] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_conversations_with_http_info(types: 'public_channel', cursor: SENTINEL, data_source_id: SENTINEL, exclude_archived: true, extra: {})
      extra[:types] = types if types != SENTINEL
      extra[:cursor] = cursor if cursor != SENTINEL
      extra[:data_source_id] = data_source_id if data_source_id != SENTINEL
      extra[:exclude_archived] = exclude_archived if exclude_archived != SENTINEL
      list_conversations_with_http_info_impl(extra)
    end

    # Slack List Conversations
    # List all of your public and private channels, DMs, and Group DMs. The ID from response  can be used as a filter to sync messages to Carbon    types: Comma separated list of types. Available types are im (DMs), mpim (group DMs), public_channel, and private_channel. Defaults to public_channel.     cursor: Used for pagination. If next_cursor is returned in response, you need to pass it as the cursor in the next request     data_source_id: Data source needs to be specified if you have linked multiple slack accounts   exclude_archived: Should archived conversations be excluded, defaults to true
    # @param [Hash] opts the optional parameters
    # @option opts [String] :types  (default to 'public_channel')
    # @option opts [String] :cursor 
    # @option opts [Integer] :data_source_id 
    # @option opts [Boolean] :exclude_archived  (default to true)
    # @return [Object]
    private def list_conversations_impl(opts = {})
      data, _status_code, _headers = list_conversations_with_http_info(opts)
      data
    end

    # Slack List Conversations
    # List all of your public and private channels, DMs, and Group DMs. The ID from response  can be used as a filter to sync messages to Carbon    types: Comma separated list of types. Available types are im (DMs), mpim (group DMs), public_channel, and private_channel. Defaults to public_channel.     cursor: Used for pagination. If next_cursor is returned in response, you need to pass it as the cursor in the next request     data_source_id: Data source needs to be specified if you have linked multiple slack accounts   exclude_archived: Should archived conversations be excluded, defaults to true
    # @param [Hash] opts the optional parameters
    # @option opts [String] :types  (default to 'public_channel')
    # @option opts [String] :cursor 
    # @option opts [Integer] :data_source_id 
    # @option opts [Boolean] :exclude_archived  (default to true)
    # @return [APIResponse] data is Object, status code, headers and response
    private def list_conversations_with_http_info_impl(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IntegrationsApi.list_conversations ...'
      end
      # resource path
      local_var_path = '/integrations/slack/conversations'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'types'] = opts[:'types'] if !opts[:'types'].nil?
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'data_source_id'] = opts[:'data_source_id'] if !opts[:'data_source_id'].nil?
      query_params[:'exclude_archived'] = opts[:'exclude_archived'] if !opts[:'exclude_archived'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['accessToken', 'apiKey', 'customerId']

      new_options = opts.merge(
        :operation => :"IntegrationsApi.list_conversations",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationsApi#list_conversations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # List Data Source Items
    #
    # @param data_source_id [Integer] 
    # @param parent_id [String] 
    # @param filters [ListItemsFiltersNullable] 
    # @param pagination [Pagination] 
    # @param order_by [ExternalSourceItemsOrderBy] 
    # @param order_dir [OrderDirV2] 
    # @param body [ListDataSourceItemsRequest] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_data_source_items(data_source_id:, parent_id: SENTINEL, filters: SENTINEL, pagination: SENTINEL, order_by: SENTINEL, order_dir: SENTINEL, extra: {})
      _body = {}
      _body[:data_source_id] = data_source_id if data_source_id != SENTINEL
      _body[:parent_id] = parent_id if parent_id != SENTINEL
      _body[:filters] = filters if filters != SENTINEL
      _body[:pagination] = pagination if pagination != SENTINEL
      _body[:order_by] = order_by if order_by != SENTINEL
      _body[:order_dir] = order_dir if order_dir != SENTINEL
      list_data_source_items_request = _body
      api_response = list_data_source_items_with_http_info_impl(list_data_source_items_request, extra)
      api_response.data
    end

    # List Data Source Items
    #
    # @param data_source_id [Integer] 
    # @param parent_id [String] 
    # @param filters [ListItemsFiltersNullable] 
    # @param pagination [Pagination] 
    # @param order_by [ExternalSourceItemsOrderBy] 
    # @param order_dir [OrderDirV2] 
    # @param body [ListDataSourceItemsRequest] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_data_source_items_with_http_info(data_source_id:, parent_id: SENTINEL, filters: SENTINEL, pagination: SENTINEL, order_by: SENTINEL, order_dir: SENTINEL, extra: {})
      _body = {}
      _body[:data_source_id] = data_source_id if data_source_id != SENTINEL
      _body[:parent_id] = parent_id if parent_id != SENTINEL
      _body[:filters] = filters if filters != SENTINEL
      _body[:pagination] = pagination if pagination != SENTINEL
      _body[:order_by] = order_by if order_by != SENTINEL
      _body[:order_dir] = order_dir if order_dir != SENTINEL
      list_data_source_items_request = _body
      list_data_source_items_with_http_info_impl(list_data_source_items_request, extra)
    end

    # List Data Source Items
    # @param list_data_source_items_request [ListDataSourceItemsRequest] 
    # @param [Hash] opts the optional parameters
    # @return [ListDataSourceItemsResponse]
    private def list_data_source_items_impl(list_data_source_items_request, opts = {})
      data, _status_code, _headers = list_data_source_items_with_http_info(list_data_source_items_request, opts)
      data
    end

    # List Data Source Items
    # @param list_data_source_items_request [ListDataSourceItemsRequest] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is ListDataSourceItemsResponse, status code, headers and response
    private def list_data_source_items_with_http_info_impl(list_data_source_items_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IntegrationsApi.list_data_source_items ...'
      end
      # verify the required parameter 'list_data_source_items_request' is set
      if @api_client.config.client_side_validation && list_data_source_items_request.nil?
        fail ArgumentError, "Missing the required parameter 'list_data_source_items_request' when calling IntegrationsApi.list_data_source_items"
      end
      # resource path
      local_var_path = '/integrations/items/list'

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

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(list_data_source_items_request)

      # return_type
      return_type = opts[:debug_return_type] || 'ListDataSourceItemsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['accessToken', 'apiKey', 'customerId']

      new_options = opts.merge(
        :operation => :"IntegrationsApi.list_data_source_items",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationsApi#list_data_source_items\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Outlook Folders
    #
    # After connecting your Outlook account, you can use this endpoint to list all of your folders on outlook. This includes 
    # both system folders like "inbox" and user created folders.
    #
    # @param data_source_id [Integer] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_folders(data_source_id: SENTINEL, extra: {})
      extra[:data_source_id] = data_source_id if data_source_id != SENTINEL
      api_response = list_folders_with_http_info_impl(extra)
      api_response.data
    end

    # Outlook Folders
    #
    # After connecting your Outlook account, you can use this endpoint to list all of your folders on outlook. This includes 
    # both system folders like "inbox" and user created folders.
    #
    # @param data_source_id [Integer] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_folders_with_http_info(data_source_id: SENTINEL, extra: {})
      extra[:data_source_id] = data_source_id if data_source_id != SENTINEL
      list_folders_with_http_info_impl(extra)
    end

    # Outlook Folders
    # After connecting your Outlook account, you can use this endpoint to list all of your folders on outlook. This includes  both system folders like \"inbox\" and user created folders.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :data_source_id 
    # @return [Object]
    private def list_folders_impl(opts = {})
      data, _status_code, _headers = list_folders_with_http_info(opts)
      data
    end

    # Outlook Folders
    # After connecting your Outlook account, you can use this endpoint to list all of your folders on outlook. This includes  both system folders like \&quot;inbox\&quot; and user created folders.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :data_source_id 
    # @return [APIResponse] data is Object, status code, headers and response
    private def list_folders_with_http_info_impl(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IntegrationsApi.list_folders ...'
      end
      # resource path
      local_var_path = '/integrations/outlook/user_folders'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'data_source_id'] = opts[:'data_source_id'] if !opts[:'data_source_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['accessToken', 'apiKey', 'customerId']

      new_options = opts.merge(
        :operation => :"IntegrationsApi.list_folders",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationsApi#list_folders\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Gitbook Spaces
    #
    # After connecting your Gitbook account, you can use this endpoint to list all of your spaces under current organization.
    #
    # @param data_source_id [Integer] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_gitbook_spaces(data_source_id:, extra: {})
      api_response = list_gitbook_spaces_with_http_info_impl(data_source_id, extra)
      api_response.data
    end

    # Gitbook Spaces
    #
    # After connecting your Gitbook account, you can use this endpoint to list all of your spaces under current organization.
    #
    # @param data_source_id [Integer] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_gitbook_spaces_with_http_info(data_source_id:, extra: {})
      list_gitbook_spaces_with_http_info_impl(data_source_id, extra)
    end

    # Gitbook Spaces
    # After connecting your Gitbook account, you can use this endpoint to list all of your spaces under current organization.
    # @param data_source_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Object]
    private def list_gitbook_spaces_impl(data_source_id, opts = {})
      data, _status_code, _headers = list_gitbook_spaces_with_http_info(data_source_id, opts)
      data
    end

    # Gitbook Spaces
    # After connecting your Gitbook account, you can use this endpoint to list all of your spaces under current organization.
    # @param data_source_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is Object, status code, headers and response
    private def list_gitbook_spaces_with_http_info_impl(data_source_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IntegrationsApi.list_gitbook_spaces ...'
      end
      # verify the required parameter 'data_source_id' is set
      if @api_client.config.client_side_validation && data_source_id.nil?
        fail ArgumentError, "Missing the required parameter 'data_source_id' when calling IntegrationsApi.list_gitbook_spaces"
      end
      # resource path
      local_var_path = '/integrations/gitbook/spaces'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'data_source_id'] = data_source_id

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['accessToken', 'apiKey', 'customerId']

      new_options = opts.merge(
        :operation => :"IntegrationsApi.list_gitbook_spaces",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationsApi#list_gitbook_spaces\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Gmail Labels
    #
    # After connecting your Gmail account, you can use this endpoint to list all of your labels. User created labels
    # will have the type "user" and Gmail's default labels will have the type "system"
    #
    # @param data_source_id [Integer] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_labels(data_source_id: SENTINEL, extra: {})
      extra[:data_source_id] = data_source_id if data_source_id != SENTINEL
      api_response = list_labels_with_http_info_impl(extra)
      api_response.data
    end

    # Gmail Labels
    #
    # After connecting your Gmail account, you can use this endpoint to list all of your labels. User created labels
    # will have the type "user" and Gmail's default labels will have the type "system"
    #
    # @param data_source_id [Integer] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_labels_with_http_info(data_source_id: SENTINEL, extra: {})
      extra[:data_source_id] = data_source_id if data_source_id != SENTINEL
      list_labels_with_http_info_impl(extra)
    end

    # Gmail Labels
    # After connecting your Gmail account, you can use this endpoint to list all of your labels. User created labels will have the type \"user\" and Gmail's default labels will have the type \"system\"
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :data_source_id 
    # @return [Object]
    private def list_labels_impl(opts = {})
      data, _status_code, _headers = list_labels_with_http_info(opts)
      data
    end

    # Gmail Labels
    # After connecting your Gmail account, you can use this endpoint to list all of your labels. User created labels will have the type \&quot;user\&quot; and Gmail&#39;s default labels will have the type \&quot;system\&quot;
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :data_source_id 
    # @return [APIResponse] data is Object, status code, headers and response
    private def list_labels_with_http_info_impl(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IntegrationsApi.list_labels ...'
      end
      # resource path
      local_var_path = '/integrations/gmail/user_labels'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'data_source_id'] = opts[:'data_source_id'] if !opts[:'data_source_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['accessToken', 'apiKey', 'customerId']

      new_options = opts.merge(
        :operation => :"IntegrationsApi.list_labels",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationsApi#list_labels\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Outlook Categories
    #
    # After connecting your Outlook account, you can use this endpoint to list all of your categories on outlook. We currently
    # support listing up to 250 categories.
    #
    # @param data_source_id [Integer] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_outlook_categories(data_source_id: SENTINEL, extra: {})
      extra[:data_source_id] = data_source_id if data_source_id != SENTINEL
      api_response = list_outlook_categories_with_http_info_impl(extra)
      api_response.data
    end

    # Outlook Categories
    #
    # After connecting your Outlook account, you can use this endpoint to list all of your categories on outlook. We currently
    # support listing up to 250 categories.
    #
    # @param data_source_id [Integer] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_outlook_categories_with_http_info(data_source_id: SENTINEL, extra: {})
      extra[:data_source_id] = data_source_id if data_source_id != SENTINEL
      list_outlook_categories_with_http_info_impl(extra)
    end

    # Outlook Categories
    # After connecting your Outlook account, you can use this endpoint to list all of your categories on outlook. We currently support listing up to 250 categories.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :data_source_id 
    # @return [Object]
    private def list_outlook_categories_impl(opts = {})
      data, _status_code, _headers = list_outlook_categories_with_http_info(opts)
      data
    end

    # Outlook Categories
    # After connecting your Outlook account, you can use this endpoint to list all of your categories on outlook. We currently support listing up to 250 categories.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :data_source_id 
    # @return [APIResponse] data is Object, status code, headers and response
    private def list_outlook_categories_with_http_info_impl(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IntegrationsApi.list_outlook_categories ...'
      end
      # resource path
      local_var_path = '/integrations/outlook/user_categories'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'data_source_id'] = opts[:'data_source_id'] if !opts[:'data_source_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['accessToken', 'apiKey', 'customerId']

      new_options = opts.merge(
        :operation => :"IntegrationsApi.list_outlook_categories",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationsApi#list_outlook_categories\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Github List Repos
    #
    # Once you have connected your GitHub account, you can use this endpoint to list the 
    #     repositories your account has access to. You can use a data source ID or username to fetch from a specific account.
    #
    # @param per_page [Integer] 
    # @param page [Integer] 
    # @param data_source_id [Integer] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_repos(per_page: 30, page: 1, data_source_id: SENTINEL, extra: {})
      extra[:per_page] = per_page if per_page != SENTINEL
      extra[:page] = page if page != SENTINEL
      extra[:data_source_id] = data_source_id if data_source_id != SENTINEL
      api_response = list_repos_with_http_info_impl(extra)
      api_response.data
    end

    # Github List Repos
    #
    # Once you have connected your GitHub account, you can use this endpoint to list the 
    #     repositories your account has access to. You can use a data source ID or username to fetch from a specific account.
    #
    # @param per_page [Integer] 
    # @param page [Integer] 
    # @param data_source_id [Integer] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_repos_with_http_info(per_page: 30, page: 1, data_source_id: SENTINEL, extra: {})
      extra[:per_page] = per_page if per_page != SENTINEL
      extra[:page] = page if page != SENTINEL
      extra[:data_source_id] = data_source_id if data_source_id != SENTINEL
      list_repos_with_http_info_impl(extra)
    end

    # Github List Repos
    # Once you have connected your GitHub account, you can use this endpoint to list the      repositories your account has access to. You can use a data source ID or username to fetch from a specific account.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :per_page  (default to 30)
    # @option opts [Integer] :page  (default to 1)
    # @option opts [Integer] :data_source_id 
    # @return [Object]
    private def list_repos_impl(opts = {})
      data, _status_code, _headers = list_repos_with_http_info(opts)
      data
    end

    # Github List Repos
    # Once you have connected your GitHub account, you can use this endpoint to list the      repositories your account has access to. You can use a data source ID or username to fetch from a specific account.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :per_page  (default to 30)
    # @option opts [Integer] :page  (default to 1)
    # @option opts [Integer] :data_source_id 
    # @return [APIResponse] data is Object, status code, headers and response
    private def list_repos_with_http_info_impl(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IntegrationsApi.list_repos ...'
      end
      # resource path
      local_var_path = '/integrations/github/repos'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'data_source_id'] = opts[:'data_source_id'] if !opts[:'data_source_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['accessToken', 'apiKey', 'customerId']

      new_options = opts.merge(
        :operation => :"IntegrationsApi.list_repos",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationsApi#list_repos\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # List Sharepoint Sites
    #
    # List all Sharepoint sites in the connected tenant. The site names from the response can be
    # used as the site name when connecting a Sharepoint site. If site name is null in the response, then site name should
    # be left null when connecting to the site.
    # 
    # This endpoint requires an additional Sharepoint scope: "Sites.Read.All". Include this scope along with the default
    # Sharepoint scopes to list Sharepoint sites, connect to a site, and finally sync files from the site. The default
    # Sharepoint scopes are: [o, p, e, n, i, d,  , o, f, f, l, i, n, e, _, a, c, c, e, s, s,  , U, s, e, r, ., R, e, a, d,  , F, i, l, e, s, ., R, e, a, d, ., A, l, l].
    #  
    # data_soure_id: Data source needs to be specified if you have linked multiple Sharepoint accounts
    # cursor: Used for pagination. If next_cursor is returned in response, you need to pass it as the cursor in the next request
    #
    # @param data_source_id [Integer] 
    # @param cursor [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_sharepoint_sites(data_source_id: SENTINEL, cursor: SENTINEL, extra: {})
      extra[:data_source_id] = data_source_id if data_source_id != SENTINEL
      extra[:cursor] = cursor if cursor != SENTINEL
      api_response = list_sharepoint_sites_with_http_info_impl(extra)
      api_response.data
    end

    # List Sharepoint Sites
    #
    # List all Sharepoint sites in the connected tenant. The site names from the response can be
    # used as the site name when connecting a Sharepoint site. If site name is null in the response, then site name should
    # be left null when connecting to the site.
    # 
    # This endpoint requires an additional Sharepoint scope: "Sites.Read.All". Include this scope along with the default
    # Sharepoint scopes to list Sharepoint sites, connect to a site, and finally sync files from the site. The default
    # Sharepoint scopes are: [o, p, e, n, i, d,  , o, f, f, l, i, n, e, _, a, c, c, e, s, s,  , U, s, e, r, ., R, e, a, d,  , F, i, l, e, s, ., R, e, a, d, ., A, l, l].
    #  
    # data_soure_id: Data source needs to be specified if you have linked multiple Sharepoint accounts
    # cursor: Used for pagination. If next_cursor is returned in response, you need to pass it as the cursor in the next request
    #
    # @param data_source_id [Integer] 
    # @param cursor [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_sharepoint_sites_with_http_info(data_source_id: SENTINEL, cursor: SENTINEL, extra: {})
      extra[:data_source_id] = data_source_id if data_source_id != SENTINEL
      extra[:cursor] = cursor if cursor != SENTINEL
      list_sharepoint_sites_with_http_info_impl(extra)
    end

    # List Sharepoint Sites
    # List all Sharepoint sites in the connected tenant. The site names from the response can be used as the site name when connecting a Sharepoint site. If site name is null in the response, then site name should be left null when connecting to the site.  This endpoint requires an additional Sharepoint scope: \"Sites.Read.All\". Include this scope along with the default Sharepoint scopes to list Sharepoint sites, connect to a site, and finally sync files from the site. The default Sharepoint scopes are: [o, p, e, n, i, d,  , o, f, f, l, i, n, e, _, a, c, c, e, s, s,  , U, s, e, r, ., R, e, a, d,  , F, i, l, e, s, ., R, e, a, d, ., A, l, l].   data_soure_id: Data source needs to be specified if you have linked multiple Sharepoint accounts cursor: Used for pagination. If next_cursor is returned in response, you need to pass it as the cursor in the next request
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :data_source_id 
    # @option opts [String] :cursor 
    # @return [Object]
    private def list_sharepoint_sites_impl(opts = {})
      data, _status_code, _headers = list_sharepoint_sites_with_http_info(opts)
      data
    end

    # List Sharepoint Sites
    # List all Sharepoint sites in the connected tenant. The site names from the response can be used as the site name when connecting a Sharepoint site. If site name is null in the response, then site name should be left null when connecting to the site.  This endpoint requires an additional Sharepoint scope: \&quot;Sites.Read.All\&quot;. Include this scope along with the default Sharepoint scopes to list Sharepoint sites, connect to a site, and finally sync files from the site. The default Sharepoint scopes are: [o, p, e, n, i, d,  , o, f, f, l, i, n, e, _, a, c, c, e, s, s,  , U, s, e, r, ., R, e, a, d,  , F, i, l, e, s, ., R, e, a, d, ., A, l, l].   data_soure_id: Data source needs to be specified if you have linked multiple Sharepoint accounts cursor: Used for pagination. If next_cursor is returned in response, you need to pass it as the cursor in the next request
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :data_source_id 
    # @option opts [String] :cursor 
    # @return [APIResponse] data is Object, status code, headers and response
    private def list_sharepoint_sites_with_http_info_impl(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IntegrationsApi.list_sharepoint_sites ...'
      end
      # resource path
      local_var_path = '/integrations/sharepoint/sites/list'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'data_source_id'] = opts[:'data_source_id'] if !opts[:'data_source_id'].nil?
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['accessToken', 'apiKey', 'customerId']

      new_options = opts.merge(
        :operation => :"IntegrationsApi.list_sharepoint_sites",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationsApi#list_sharepoint_sites\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Azure Blob Files
    #
    # After optionally loading the items via /integrations/items/sync and integrations/items/list, use the container name 
    # and file name as the ID in this endpoint to sync them into Carbon. Additional parameters below can associate 
    # data with the selected items or modify the sync behavior
    #
    # @param ids [Array<AzureBlobGetFileInput>] 
    # @param tags [Object] 
    # @param chunk_size [Integer] 
    # @param chunk_overlap [Integer] 
    # @param skip_embedding_generation [Boolean] 
    # @param embedding_model [EmbeddingGenerators] 
    # @param generate_sparse_vectors [Boolean] 
    # @param prepend_filename_to_chunks [Boolean] 
    # @param max_items_per_chunk [Integer] Number of objects per chunk. For csv, tsv, xlsx, and json files only.
    # @param set_page_as_boundary [Boolean] 
    # @param data_source_id [Integer] 
    # @param request_id [String] 
    # @param use_ocr [Boolean] 
    # @param parse_pdf_tables_with_ocr [Boolean] 
    # @param file_sync_config [FileSyncConfigNullable] 
    # @param body [AzureBlobFileSyncInput] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def sync_azure_blob_files(ids:, tags: SENTINEL, chunk_size: 1500, chunk_overlap: 20, skip_embedding_generation: false, embedding_model: SENTINEL, generate_sparse_vectors: false, prepend_filename_to_chunks: false, max_items_per_chunk: SENTINEL, set_page_as_boundary: false, data_source_id: SENTINEL, request_id: SENTINEL, use_ocr: false, parse_pdf_tables_with_ocr: false, file_sync_config: SENTINEL, extra: {})
      _body = {}
      _body[:tags] = tags if tags != SENTINEL
      _body[:ids] = ids if ids != SENTINEL
      _body[:chunk_size] = chunk_size if chunk_size != SENTINEL
      _body[:chunk_overlap] = chunk_overlap if chunk_overlap != SENTINEL
      _body[:skip_embedding_generation] = skip_embedding_generation if skip_embedding_generation != SENTINEL
      _body[:embedding_model] = embedding_model if embedding_model != SENTINEL
      _body[:generate_sparse_vectors] = generate_sparse_vectors if generate_sparse_vectors != SENTINEL
      _body[:prepend_filename_to_chunks] = prepend_filename_to_chunks if prepend_filename_to_chunks != SENTINEL
      _body[:max_items_per_chunk] = max_items_per_chunk if max_items_per_chunk != SENTINEL
      _body[:set_page_as_boundary] = set_page_as_boundary if set_page_as_boundary != SENTINEL
      _body[:data_source_id] = data_source_id if data_source_id != SENTINEL
      _body[:request_id] = request_id if request_id != SENTINEL
      _body[:use_ocr] = use_ocr if use_ocr != SENTINEL
      _body[:parse_pdf_tables_with_ocr] = parse_pdf_tables_with_ocr if parse_pdf_tables_with_ocr != SENTINEL
      _body[:file_sync_config] = file_sync_config if file_sync_config != SENTINEL
      azure_blob_file_sync_input = _body
      api_response = sync_azure_blob_files_with_http_info_impl(azure_blob_file_sync_input, extra)
      api_response.data
    end

    # Azure Blob Files
    #
    # After optionally loading the items via /integrations/items/sync and integrations/items/list, use the container name 
    # and file name as the ID in this endpoint to sync them into Carbon. Additional parameters below can associate 
    # data with the selected items or modify the sync behavior
    #
    # @param ids [Array<AzureBlobGetFileInput>] 
    # @param tags [Object] 
    # @param chunk_size [Integer] 
    # @param chunk_overlap [Integer] 
    # @param skip_embedding_generation [Boolean] 
    # @param embedding_model [EmbeddingGenerators] 
    # @param generate_sparse_vectors [Boolean] 
    # @param prepend_filename_to_chunks [Boolean] 
    # @param max_items_per_chunk [Integer] Number of objects per chunk. For csv, tsv, xlsx, and json files only.
    # @param set_page_as_boundary [Boolean] 
    # @param data_source_id [Integer] 
    # @param request_id [String] 
    # @param use_ocr [Boolean] 
    # @param parse_pdf_tables_with_ocr [Boolean] 
    # @param file_sync_config [FileSyncConfigNullable] 
    # @param body [AzureBlobFileSyncInput] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def sync_azure_blob_files_with_http_info(ids:, tags: SENTINEL, chunk_size: 1500, chunk_overlap: 20, skip_embedding_generation: false, embedding_model: SENTINEL, generate_sparse_vectors: false, prepend_filename_to_chunks: false, max_items_per_chunk: SENTINEL, set_page_as_boundary: false, data_source_id: SENTINEL, request_id: SENTINEL, use_ocr: false, parse_pdf_tables_with_ocr: false, file_sync_config: SENTINEL, extra: {})
      _body = {}
      _body[:tags] = tags if tags != SENTINEL
      _body[:ids] = ids if ids != SENTINEL
      _body[:chunk_size] = chunk_size if chunk_size != SENTINEL
      _body[:chunk_overlap] = chunk_overlap if chunk_overlap != SENTINEL
      _body[:skip_embedding_generation] = skip_embedding_generation if skip_embedding_generation != SENTINEL
      _body[:embedding_model] = embedding_model if embedding_model != SENTINEL
      _body[:generate_sparse_vectors] = generate_sparse_vectors if generate_sparse_vectors != SENTINEL
      _body[:prepend_filename_to_chunks] = prepend_filename_to_chunks if prepend_filename_to_chunks != SENTINEL
      _body[:max_items_per_chunk] = max_items_per_chunk if max_items_per_chunk != SENTINEL
      _body[:set_page_as_boundary] = set_page_as_boundary if set_page_as_boundary != SENTINEL
      _body[:data_source_id] = data_source_id if data_source_id != SENTINEL
      _body[:request_id] = request_id if request_id != SENTINEL
      _body[:use_ocr] = use_ocr if use_ocr != SENTINEL
      _body[:parse_pdf_tables_with_ocr] = parse_pdf_tables_with_ocr if parse_pdf_tables_with_ocr != SENTINEL
      _body[:file_sync_config] = file_sync_config if file_sync_config != SENTINEL
      azure_blob_file_sync_input = _body
      sync_azure_blob_files_with_http_info_impl(azure_blob_file_sync_input, extra)
    end

    # Azure Blob Files
    # After optionally loading the items via /integrations/items/sync and integrations/items/list, use the container name  and file name as the ID in this endpoint to sync them into Carbon. Additional parameters below can associate  data with the selected items or modify the sync behavior
    # @param azure_blob_file_sync_input [AzureBlobFileSyncInput] 
    # @param [Hash] opts the optional parameters
    # @return [GenericSuccessResponse]
    private def sync_azure_blob_files_impl(azure_blob_file_sync_input, opts = {})
      data, _status_code, _headers = sync_azure_blob_files_with_http_info(azure_blob_file_sync_input, opts)
      data
    end

    # Azure Blob Files
    # After optionally loading the items via /integrations/items/sync and integrations/items/list, use the container name  and file name as the ID in this endpoint to sync them into Carbon. Additional parameters below can associate  data with the selected items or modify the sync behavior
    # @param azure_blob_file_sync_input [AzureBlobFileSyncInput] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is GenericSuccessResponse, status code, headers and response
    private def sync_azure_blob_files_with_http_info_impl(azure_blob_file_sync_input, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IntegrationsApi.sync_azure_blob_files ...'
      end
      # verify the required parameter 'azure_blob_file_sync_input' is set
      if @api_client.config.client_side_validation && azure_blob_file_sync_input.nil?
        fail ArgumentError, "Missing the required parameter 'azure_blob_file_sync_input' when calling IntegrationsApi.sync_azure_blob_files"
      end
      # resource path
      local_var_path = '/integrations/azure_blob_storage/files'

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

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(azure_blob_file_sync_input)

      # return_type
      return_type = opts[:debug_return_type] || 'GenericSuccessResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['accessToken', 'apiKey', 'customerId']

      new_options = opts.merge(
        :operation => :"IntegrationsApi.sync_azure_blob_files",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationsApi#sync_azure_blob_files\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Azure Blob Storage Auth
    #
    # This endpoint can be used to connect Azure Blob Storage.
    # 
    # For Azure Blob Storage, follow these steps:
    # <ol>
    #   <li>Create a new Azure Storage account and grant the following permissions:
    #     <ul>
    #       <li>List containers.</li>
    #       <li>Read from specific containers and blobs to sync with Carbon. Ensure any future containers or blobs carry the same permissions.</li>
    #     </ul>
    #   </li>
    #   <li>Generate a shared access signature (SAS) token or an access key for the storage account.</li>
    # </ol>
    # 
    # Once created, provide us with the following details to generate the connection URL:
    # <ol>
    #   <li>Storage Account KeyName.</li>
    #   <li>Storage Account Name.</li>
    # </ol>
    #
    # @param account_name [String] 
    # @param account_key [String] 
    # @param sync_source_items [Boolean] 
    # @param data_source_tags [Object] Tags to be associated with the data source. If the data source already has tags set, then an upsert will be performed.
    # @param body [AzureBlobAuthRequest] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def sync_azure_blob_storage(account_name:, account_key:, sync_source_items: true, data_source_tags: SENTINEL, extra: {})
      _body = {}
      _body[:account_name] = account_name if account_name != SENTINEL
      _body[:account_key] = account_key if account_key != SENTINEL
      _body[:sync_source_items] = sync_source_items if sync_source_items != SENTINEL
      _body[:data_source_tags] = data_source_tags if data_source_tags != SENTINEL
      azure_blob_auth_request = _body
      api_response = sync_azure_blob_storage_with_http_info_impl(azure_blob_auth_request, extra)
      api_response.data
    end

    # Azure Blob Storage Auth
    #
    # This endpoint can be used to connect Azure Blob Storage.
    # 
    # For Azure Blob Storage, follow these steps:
    # <ol>
    #   <li>Create a new Azure Storage account and grant the following permissions:
    #     <ul>
    #       <li>List containers.</li>
    #       <li>Read from specific containers and blobs to sync with Carbon. Ensure any future containers or blobs carry the same permissions.</li>
    #     </ul>
    #   </li>
    #   <li>Generate a shared access signature (SAS) token or an access key for the storage account.</li>
    # </ol>
    # 
    # Once created, provide us with the following details to generate the connection URL:
    # <ol>
    #   <li>Storage Account KeyName.</li>
    #   <li>Storage Account Name.</li>
    # </ol>
    #
    # @param account_name [String] 
    # @param account_key [String] 
    # @param sync_source_items [Boolean] 
    # @param data_source_tags [Object] Tags to be associated with the data source. If the data source already has tags set, then an upsert will be performed.
    # @param body [AzureBlobAuthRequest] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def sync_azure_blob_storage_with_http_info(account_name:, account_key:, sync_source_items: true, data_source_tags: SENTINEL, extra: {})
      _body = {}
      _body[:account_name] = account_name if account_name != SENTINEL
      _body[:account_key] = account_key if account_key != SENTINEL
      _body[:sync_source_items] = sync_source_items if sync_source_items != SENTINEL
      _body[:data_source_tags] = data_source_tags if data_source_tags != SENTINEL
      azure_blob_auth_request = _body
      sync_azure_blob_storage_with_http_info_impl(azure_blob_auth_request, extra)
    end

    # Azure Blob Storage Auth
    # This endpoint can be used to connect Azure Blob Storage.  For Azure Blob Storage, follow these steps: <ol>   <li>Create a new Azure Storage account and grant the following permissions:     <ul>       <li>List containers.</li>       <li>Read from specific containers and blobs to sync with Carbon. Ensure any future containers or blobs carry the same permissions.</li>     </ul>   </li>   <li>Generate a shared access signature (SAS) token or an access key for the storage account.</li> </ol>  Once created, provide us with the following details to generate the connection URL: <ol>   <li>Storage Account KeyName.</li>   <li>Storage Account Name.</li> </ol>
    # @param azure_blob_auth_request [AzureBlobAuthRequest] 
    # @param [Hash] opts the optional parameters
    # @return [OrganizationUserDataSourceAPI]
    private def sync_azure_blob_storage_impl(azure_blob_auth_request, opts = {})
      data, _status_code, _headers = sync_azure_blob_storage_with_http_info(azure_blob_auth_request, opts)
      data
    end

    # Azure Blob Storage Auth
    # This endpoint can be used to connect Azure Blob Storage.  For Azure Blob Storage, follow these steps: &lt;ol&gt;   &lt;li&gt;Create a new Azure Storage account and grant the following permissions:     &lt;ul&gt;       &lt;li&gt;List containers.&lt;/li&gt;       &lt;li&gt;Read from specific containers and blobs to sync with Carbon. Ensure any future containers or blobs carry the same permissions.&lt;/li&gt;     &lt;/ul&gt;   &lt;/li&gt;   &lt;li&gt;Generate a shared access signature (SAS) token or an access key for the storage account.&lt;/li&gt; &lt;/ol&gt;  Once created, provide us with the following details to generate the connection URL: &lt;ol&gt;   &lt;li&gt;Storage Account KeyName.&lt;/li&gt;   &lt;li&gt;Storage Account Name.&lt;/li&gt; &lt;/ol&gt;
    # @param azure_blob_auth_request [AzureBlobAuthRequest] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is OrganizationUserDataSourceAPI, status code, headers and response
    private def sync_azure_blob_storage_with_http_info_impl(azure_blob_auth_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IntegrationsApi.sync_azure_blob_storage ...'
      end
      # verify the required parameter 'azure_blob_auth_request' is set
      if @api_client.config.client_side_validation && azure_blob_auth_request.nil?
        fail ArgumentError, "Missing the required parameter 'azure_blob_auth_request' when calling IntegrationsApi.sync_azure_blob_storage"
      end
      # resource path
      local_var_path = '/integrations/azure_blob_storage'

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

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(azure_blob_auth_request)

      # return_type
      return_type = opts[:debug_return_type] || 'OrganizationUserDataSourceAPI'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['accessToken', 'apiKey', 'customerId']

      new_options = opts.merge(
        :operation => :"IntegrationsApi.sync_azure_blob_storage",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationsApi#sync_azure_blob_storage\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Confluence Sync
    #
    # This endpoint has been deprecated. Use /integrations/files/sync instead.
    # 
    # After listing pages in a user's Confluence account, the set of selected page `ids` and the
    # connected account's `data_source_id` can be passed into this endpoint to sync them into
    # Carbon. Additional parameters listed below can be used to associate data to the selected
    # pages or alter the behavior of the sync.
    #
    # @param data_source_id [Integer] 
    # @param ids [IdsProperty] 
    # @param tags [Object] 
    # @param chunk_size [Integer] 
    # @param chunk_overlap [Integer] 
    # @param skip_embedding_generation [Boolean] 
    # @param embedding_model [EmbeddingGeneratorsNullable] 
    # @param generate_sparse_vectors [Boolean] 
    # @param prepend_filename_to_chunks [Boolean] 
    # @param max_items_per_chunk [Integer] Number of objects per chunk. For csv, tsv, xlsx, and json files only.
    # @param set_page_as_boundary [Boolean] 
    # @param request_id [String] 
    # @param use_ocr [Boolean] 
    # @param parse_pdf_tables_with_ocr [Boolean] 
    # @param incremental_sync [Boolean] Only sync files if they have not already been synced or if the embedding properties have changed. This flag is currently supported by ONEDRIVE, GOOGLE_DRIVE, BOX, DROPBOX, INTERCOM, GMAIL, OUTLOOK, ZENDESK, CONFLUENCE, NOTION, SHAREPOINT, SERVICENOW. It will be ignored for other data sources.
    # @param file_sync_config [FileSyncConfigNullable] 
    # @param body [SyncFilesRequest] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def sync_confluence(data_source_id:, ids:, tags: SENTINEL, chunk_size: 1500, chunk_overlap: 20, skip_embedding_generation: false, embedding_model: 'OPENAI', generate_sparse_vectors: false, prepend_filename_to_chunks: false, max_items_per_chunk: SENTINEL, set_page_as_boundary: false, request_id: SENTINEL, use_ocr: false, parse_pdf_tables_with_ocr: false, incremental_sync: false, file_sync_config: SENTINEL, extra: {})
      _body = {}
      _body[:tags] = tags if tags != SENTINEL
      _body[:data_source_id] = data_source_id if data_source_id != SENTINEL
      _body[:ids] = ids if ids != SENTINEL
      _body[:chunk_size] = chunk_size if chunk_size != SENTINEL
      _body[:chunk_overlap] = chunk_overlap if chunk_overlap != SENTINEL
      _body[:skip_embedding_generation] = skip_embedding_generation if skip_embedding_generation != SENTINEL
      _body[:embedding_model] = embedding_model if embedding_model != SENTINEL
      _body[:generate_sparse_vectors] = generate_sparse_vectors if generate_sparse_vectors != SENTINEL
      _body[:prepend_filename_to_chunks] = prepend_filename_to_chunks if prepend_filename_to_chunks != SENTINEL
      _body[:max_items_per_chunk] = max_items_per_chunk if max_items_per_chunk != SENTINEL
      _body[:set_page_as_boundary] = set_page_as_boundary if set_page_as_boundary != SENTINEL
      _body[:request_id] = request_id if request_id != SENTINEL
      _body[:use_ocr] = use_ocr if use_ocr != SENTINEL
      _body[:parse_pdf_tables_with_ocr] = parse_pdf_tables_with_ocr if parse_pdf_tables_with_ocr != SENTINEL
      _body[:incremental_sync] = incremental_sync if incremental_sync != SENTINEL
      _body[:file_sync_config] = file_sync_config if file_sync_config != SENTINEL
      sync_files_request = _body
      api_response = sync_confluence_with_http_info_impl(sync_files_request, extra)
      api_response.data
    end

    # Confluence Sync
    #
    # This endpoint has been deprecated. Use /integrations/files/sync instead.
    # 
    # After listing pages in a user's Confluence account, the set of selected page `ids` and the
    # connected account's `data_source_id` can be passed into this endpoint to sync them into
    # Carbon. Additional parameters listed below can be used to associate data to the selected
    # pages or alter the behavior of the sync.
    #
    # @param data_source_id [Integer] 
    # @param ids [IdsProperty] 
    # @param tags [Object] 
    # @param chunk_size [Integer] 
    # @param chunk_overlap [Integer] 
    # @param skip_embedding_generation [Boolean] 
    # @param embedding_model [EmbeddingGeneratorsNullable] 
    # @param generate_sparse_vectors [Boolean] 
    # @param prepend_filename_to_chunks [Boolean] 
    # @param max_items_per_chunk [Integer] Number of objects per chunk. For csv, tsv, xlsx, and json files only.
    # @param set_page_as_boundary [Boolean] 
    # @param request_id [String] 
    # @param use_ocr [Boolean] 
    # @param parse_pdf_tables_with_ocr [Boolean] 
    # @param incremental_sync [Boolean] Only sync files if they have not already been synced or if the embedding properties have changed. This flag is currently supported by ONEDRIVE, GOOGLE_DRIVE, BOX, DROPBOX, INTERCOM, GMAIL, OUTLOOK, ZENDESK, CONFLUENCE, NOTION, SHAREPOINT, SERVICENOW. It will be ignored for other data sources.
    # @param file_sync_config [FileSyncConfigNullable] 
    # @param body [SyncFilesRequest] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def sync_confluence_with_http_info(data_source_id:, ids:, tags: SENTINEL, chunk_size: 1500, chunk_overlap: 20, skip_embedding_generation: false, embedding_model: 'OPENAI', generate_sparse_vectors: false, prepend_filename_to_chunks: false, max_items_per_chunk: SENTINEL, set_page_as_boundary: false, request_id: SENTINEL, use_ocr: false, parse_pdf_tables_with_ocr: false, incremental_sync: false, file_sync_config: SENTINEL, extra: {})
      _body = {}
      _body[:tags] = tags if tags != SENTINEL
      _body[:data_source_id] = data_source_id if data_source_id != SENTINEL
      _body[:ids] = ids if ids != SENTINEL
      _body[:chunk_size] = chunk_size if chunk_size != SENTINEL
      _body[:chunk_overlap] = chunk_overlap if chunk_overlap != SENTINEL
      _body[:skip_embedding_generation] = skip_embedding_generation if skip_embedding_generation != SENTINEL
      _body[:embedding_model] = embedding_model if embedding_model != SENTINEL
      _body[:generate_sparse_vectors] = generate_sparse_vectors if generate_sparse_vectors != SENTINEL
      _body[:prepend_filename_to_chunks] = prepend_filename_to_chunks if prepend_filename_to_chunks != SENTINEL
      _body[:max_items_per_chunk] = max_items_per_chunk if max_items_per_chunk != SENTINEL
      _body[:set_page_as_boundary] = set_page_as_boundary if set_page_as_boundary != SENTINEL
      _body[:request_id] = request_id if request_id != SENTINEL
      _body[:use_ocr] = use_ocr if use_ocr != SENTINEL
      _body[:parse_pdf_tables_with_ocr] = parse_pdf_tables_with_ocr if parse_pdf_tables_with_ocr != SENTINEL
      _body[:incremental_sync] = incremental_sync if incremental_sync != SENTINEL
      _body[:file_sync_config] = file_sync_config if file_sync_config != SENTINEL
      sync_files_request = _body
      sync_confluence_with_http_info_impl(sync_files_request, extra)
    end

    # Confluence Sync
    # This endpoint has been deprecated. Use /integrations/files/sync instead.  After listing pages in a user's Confluence account, the set of selected page `ids` and the connected account's `data_source_id` can be passed into this endpoint to sync them into Carbon. Additional parameters listed below can be used to associate data to the selected pages or alter the behavior of the sync.
    # @param sync_files_request [SyncFilesRequest] 
    # @param [Hash] opts the optional parameters
    # @return [GenericSuccessResponse]
    private def sync_confluence_impl(sync_files_request, opts = {})
      data, _status_code, _headers = sync_confluence_with_http_info(sync_files_request, opts)
      data
    end

    # Confluence Sync
    # This endpoint has been deprecated. Use /integrations/files/sync instead.  After listing pages in a user&#39;s Confluence account, the set of selected page &#x60;ids&#x60; and the connected account&#39;s &#x60;data_source_id&#x60; can be passed into this endpoint to sync them into Carbon. Additional parameters listed below can be used to associate data to the selected pages or alter the behavior of the sync.
    # @param sync_files_request [SyncFilesRequest] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is GenericSuccessResponse, status code, headers and response
    private def sync_confluence_with_http_info_impl(sync_files_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IntegrationsApi.sync_confluence ...'
      end
      # verify the required parameter 'sync_files_request' is set
      if @api_client.config.client_side_validation && sync_files_request.nil?
        fail ArgumentError, "Missing the required parameter 'sync_files_request' when calling IntegrationsApi.sync_confluence"
      end
      # resource path
      local_var_path = '/integrations/confluence/sync'

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

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(sync_files_request)

      # return_type
      return_type = opts[:debug_return_type] || 'GenericSuccessResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['accessToken', 'apiKey', 'customerId']

      new_options = opts.merge(
        :operation => :"IntegrationsApi.sync_confluence",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationsApi#sync_confluence\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Sync Data Source Items
    #
    # @param data_source_id [Integer] 
    # @param body [SyncDirectoryRequest] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def sync_data_source_items(data_source_id:, extra: {})
      _body = {}
      _body[:data_source_id] = data_source_id if data_source_id != SENTINEL
      sync_directory_request = _body
      api_response = sync_data_source_items_with_http_info_impl(sync_directory_request, extra)
      api_response.data
    end

    # Sync Data Source Items
    #
    # @param data_source_id [Integer] 
    # @param body [SyncDirectoryRequest] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def sync_data_source_items_with_http_info(data_source_id:, extra: {})
      _body = {}
      _body[:data_source_id] = data_source_id if data_source_id != SENTINEL
      sync_directory_request = _body
      sync_data_source_items_with_http_info_impl(sync_directory_request, extra)
    end

    # Sync Data Source Items
    # @param sync_directory_request [SyncDirectoryRequest] 
    # @param [Hash] opts the optional parameters
    # @return [OrganizationUserDataSourceAPI]
    private def sync_data_source_items_impl(sync_directory_request, opts = {})
      data, _status_code, _headers = sync_data_source_items_with_http_info(sync_directory_request, opts)
      data
    end

    # Sync Data Source Items
    # @param sync_directory_request [SyncDirectoryRequest] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is OrganizationUserDataSourceAPI, status code, headers and response
    private def sync_data_source_items_with_http_info_impl(sync_directory_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IntegrationsApi.sync_data_source_items ...'
      end
      # verify the required parameter 'sync_directory_request' is set
      if @api_client.config.client_side_validation && sync_directory_request.nil?
        fail ArgumentError, "Missing the required parameter 'sync_directory_request' when calling IntegrationsApi.sync_data_source_items"
      end
      # resource path
      local_var_path = '/integrations/items/sync'

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

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(sync_directory_request)

      # return_type
      return_type = opts[:debug_return_type] || 'OrganizationUserDataSourceAPI'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['accessToken', 'apiKey', 'customerId']

      new_options = opts.merge(
        :operation => :"IntegrationsApi.sync_data_source_items",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationsApi#sync_data_source_items\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Sync Files
    #
    # After listing files and folders via /integrations/items/sync and integrations/items/list, use the selected items' external ids 
    # as the ids in this endpoint to sync them into Carbon. Sharepoint items take an additional parameter root_id, which identifies
    # the drive the file or folder is in and is stored in root_external_id. That additional paramter is optional and excluding it will
    # tell the sync to assume the item is stored in the default Documents drive.
    #
    # @param data_source_id [Integer] 
    # @param ids [IdsProperty] 
    # @param tags [Object] 
    # @param chunk_size [Integer] 
    # @param chunk_overlap [Integer] 
    # @param skip_embedding_generation [Boolean] 
    # @param embedding_model [EmbeddingGeneratorsNullable] 
    # @param generate_sparse_vectors [Boolean] 
    # @param prepend_filename_to_chunks [Boolean] 
    # @param max_items_per_chunk [Integer] Number of objects per chunk. For csv, tsv, xlsx, and json files only.
    # @param set_page_as_boundary [Boolean] 
    # @param request_id [String] 
    # @param use_ocr [Boolean] 
    # @param parse_pdf_tables_with_ocr [Boolean] 
    # @param incremental_sync [Boolean] Only sync files if they have not already been synced or if the embedding properties have changed. This flag is currently supported by ONEDRIVE, GOOGLE_DRIVE, BOX, DROPBOX, INTERCOM, GMAIL, OUTLOOK, ZENDESK, CONFLUENCE, NOTION, SHAREPOINT, SERVICENOW. It will be ignored for other data sources.
    # @param file_sync_config [FileSyncConfigNullable] 
    # @param body [SyncFilesRequest] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def sync_files(data_source_id:, ids:, tags: SENTINEL, chunk_size: 1500, chunk_overlap: 20, skip_embedding_generation: false, embedding_model: 'OPENAI', generate_sparse_vectors: false, prepend_filename_to_chunks: false, max_items_per_chunk: SENTINEL, set_page_as_boundary: false, request_id: SENTINEL, use_ocr: false, parse_pdf_tables_with_ocr: false, incremental_sync: false, file_sync_config: SENTINEL, extra: {})
      _body = {}
      _body[:tags] = tags if tags != SENTINEL
      _body[:data_source_id] = data_source_id if data_source_id != SENTINEL
      _body[:ids] = ids if ids != SENTINEL
      _body[:chunk_size] = chunk_size if chunk_size != SENTINEL
      _body[:chunk_overlap] = chunk_overlap if chunk_overlap != SENTINEL
      _body[:skip_embedding_generation] = skip_embedding_generation if skip_embedding_generation != SENTINEL
      _body[:embedding_model] = embedding_model if embedding_model != SENTINEL
      _body[:generate_sparse_vectors] = generate_sparse_vectors if generate_sparse_vectors != SENTINEL
      _body[:prepend_filename_to_chunks] = prepend_filename_to_chunks if prepend_filename_to_chunks != SENTINEL
      _body[:max_items_per_chunk] = max_items_per_chunk if max_items_per_chunk != SENTINEL
      _body[:set_page_as_boundary] = set_page_as_boundary if set_page_as_boundary != SENTINEL
      _body[:request_id] = request_id if request_id != SENTINEL
      _body[:use_ocr] = use_ocr if use_ocr != SENTINEL
      _body[:parse_pdf_tables_with_ocr] = parse_pdf_tables_with_ocr if parse_pdf_tables_with_ocr != SENTINEL
      _body[:incremental_sync] = incremental_sync if incremental_sync != SENTINEL
      _body[:file_sync_config] = file_sync_config if file_sync_config != SENTINEL
      sync_files_request = _body
      api_response = sync_files_with_http_info_impl(sync_files_request, extra)
      api_response.data
    end

    # Sync Files
    #
    # After listing files and folders via /integrations/items/sync and integrations/items/list, use the selected items' external ids 
    # as the ids in this endpoint to sync them into Carbon. Sharepoint items take an additional parameter root_id, which identifies
    # the drive the file or folder is in and is stored in root_external_id. That additional paramter is optional and excluding it will
    # tell the sync to assume the item is stored in the default Documents drive.
    #
    # @param data_source_id [Integer] 
    # @param ids [IdsProperty] 
    # @param tags [Object] 
    # @param chunk_size [Integer] 
    # @param chunk_overlap [Integer] 
    # @param skip_embedding_generation [Boolean] 
    # @param embedding_model [EmbeddingGeneratorsNullable] 
    # @param generate_sparse_vectors [Boolean] 
    # @param prepend_filename_to_chunks [Boolean] 
    # @param max_items_per_chunk [Integer] Number of objects per chunk. For csv, tsv, xlsx, and json files only.
    # @param set_page_as_boundary [Boolean] 
    # @param request_id [String] 
    # @param use_ocr [Boolean] 
    # @param parse_pdf_tables_with_ocr [Boolean] 
    # @param incremental_sync [Boolean] Only sync files if they have not already been synced or if the embedding properties have changed. This flag is currently supported by ONEDRIVE, GOOGLE_DRIVE, BOX, DROPBOX, INTERCOM, GMAIL, OUTLOOK, ZENDESK, CONFLUENCE, NOTION, SHAREPOINT, SERVICENOW. It will be ignored for other data sources.
    # @param file_sync_config [FileSyncConfigNullable] 
    # @param body [SyncFilesRequest] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def sync_files_with_http_info(data_source_id:, ids:, tags: SENTINEL, chunk_size: 1500, chunk_overlap: 20, skip_embedding_generation: false, embedding_model: 'OPENAI', generate_sparse_vectors: false, prepend_filename_to_chunks: false, max_items_per_chunk: SENTINEL, set_page_as_boundary: false, request_id: SENTINEL, use_ocr: false, parse_pdf_tables_with_ocr: false, incremental_sync: false, file_sync_config: SENTINEL, extra: {})
      _body = {}
      _body[:tags] = tags if tags != SENTINEL
      _body[:data_source_id] = data_source_id if data_source_id != SENTINEL
      _body[:ids] = ids if ids != SENTINEL
      _body[:chunk_size] = chunk_size if chunk_size != SENTINEL
      _body[:chunk_overlap] = chunk_overlap if chunk_overlap != SENTINEL
      _body[:skip_embedding_generation] = skip_embedding_generation if skip_embedding_generation != SENTINEL
      _body[:embedding_model] = embedding_model if embedding_model != SENTINEL
      _body[:generate_sparse_vectors] = generate_sparse_vectors if generate_sparse_vectors != SENTINEL
      _body[:prepend_filename_to_chunks] = prepend_filename_to_chunks if prepend_filename_to_chunks != SENTINEL
      _body[:max_items_per_chunk] = max_items_per_chunk if max_items_per_chunk != SENTINEL
      _body[:set_page_as_boundary] = set_page_as_boundary if set_page_as_boundary != SENTINEL
      _body[:request_id] = request_id if request_id != SENTINEL
      _body[:use_ocr] = use_ocr if use_ocr != SENTINEL
      _body[:parse_pdf_tables_with_ocr] = parse_pdf_tables_with_ocr if parse_pdf_tables_with_ocr != SENTINEL
      _body[:incremental_sync] = incremental_sync if incremental_sync != SENTINEL
      _body[:file_sync_config] = file_sync_config if file_sync_config != SENTINEL
      sync_files_request = _body
      sync_files_with_http_info_impl(sync_files_request, extra)
    end

    # Sync Files
    # After listing files and folders via /integrations/items/sync and integrations/items/list, use the selected items' external ids  as the ids in this endpoint to sync them into Carbon. Sharepoint items take an additional parameter root_id, which identifies the drive the file or folder is in and is stored in root_external_id. That additional paramter is optional and excluding it will tell the sync to assume the item is stored in the default Documents drive.
    # @param sync_files_request [SyncFilesRequest] 
    # @param [Hash] opts the optional parameters
    # @return [GenericSuccessResponse]
    private def sync_files_impl(sync_files_request, opts = {})
      data, _status_code, _headers = sync_files_with_http_info(sync_files_request, opts)
      data
    end

    # Sync Files
    # After listing files and folders via /integrations/items/sync and integrations/items/list, use the selected items&#39; external ids  as the ids in this endpoint to sync them into Carbon. Sharepoint items take an additional parameter root_id, which identifies the drive the file or folder is in and is stored in root_external_id. That additional paramter is optional and excluding it will tell the sync to assume the item is stored in the default Documents drive.
    # @param sync_files_request [SyncFilesRequest] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is GenericSuccessResponse, status code, headers and response
    private def sync_files_with_http_info_impl(sync_files_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IntegrationsApi.sync_files ...'
      end
      # verify the required parameter 'sync_files_request' is set
      if @api_client.config.client_side_validation && sync_files_request.nil?
        fail ArgumentError, "Missing the required parameter 'sync_files_request' when calling IntegrationsApi.sync_files"
      end
      # resource path
      local_var_path = '/integrations/files/sync'

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

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(sync_files_request)

      # return_type
      return_type = opts[:debug_return_type] || 'GenericSuccessResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['accessToken', 'apiKey', 'customerId']

      new_options = opts.merge(
        :operation => :"IntegrationsApi.sync_files",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationsApi#sync_files\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Github Connect
    #
    # Refer this article to obtain an access token https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens.
    # Make sure that your access token has the permission to read content from your desired repos. Note that if your access token
    # expires you will need to manually update it through this endpoint.
    #
    # @param username [String] 
    # @param access_token [String] 
    # @param sync_source_items [Boolean] Enabling this flag will fetch all available content from the source to be listed via list items endpoint
    # @param data_source_tags [Object] Tags to be associated with the data source. If the data source already has tags set, then an upsert will be performed.
    # @param body [GithubConnectRequest] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def sync_git_hub(username:, access_token:, sync_source_items: false, data_source_tags: SENTINEL, extra: {})
      _body = {}
      _body[:username] = username if username != SENTINEL
      _body[:access_token] = access_token if access_token != SENTINEL
      _body[:sync_source_items] = sync_source_items if sync_source_items != SENTINEL
      _body[:data_source_tags] = data_source_tags if data_source_tags != SENTINEL
      github_connect_request = _body
      api_response = sync_git_hub_with_http_info_impl(github_connect_request, extra)
      api_response.data
    end

    # Github Connect
    #
    # Refer this article to obtain an access token https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens.
    # Make sure that your access token has the permission to read content from your desired repos. Note that if your access token
    # expires you will need to manually update it through this endpoint.
    #
    # @param username [String] 
    # @param access_token [String] 
    # @param sync_source_items [Boolean] Enabling this flag will fetch all available content from the source to be listed via list items endpoint
    # @param data_source_tags [Object] Tags to be associated with the data source. If the data source already has tags set, then an upsert will be performed.
    # @param body [GithubConnectRequest] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def sync_git_hub_with_http_info(username:, access_token:, sync_source_items: false, data_source_tags: SENTINEL, extra: {})
      _body = {}
      _body[:username] = username if username != SENTINEL
      _body[:access_token] = access_token if access_token != SENTINEL
      _body[:sync_source_items] = sync_source_items if sync_source_items != SENTINEL
      _body[:data_source_tags] = data_source_tags if data_source_tags != SENTINEL
      github_connect_request = _body
      sync_git_hub_with_http_info_impl(github_connect_request, extra)
    end

    # Github Connect
    # Refer this article to obtain an access token https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens. Make sure that your access token has the permission to read content from your desired repos. Note that if your access token expires you will need to manually update it through this endpoint.
    # @param github_connect_request [GithubConnectRequest] 
    # @param [Hash] opts the optional parameters
    # @return [GenericSuccessResponse]
    private def sync_git_hub_impl(github_connect_request, opts = {})
      data, _status_code, _headers = sync_git_hub_with_http_info(github_connect_request, opts)
      data
    end

    # Github Connect
    # Refer this article to obtain an access token https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens. Make sure that your access token has the permission to read content from your desired repos. Note that if your access token expires you will need to manually update it through this endpoint.
    # @param github_connect_request [GithubConnectRequest] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is GenericSuccessResponse, status code, headers and response
    private def sync_git_hub_with_http_info_impl(github_connect_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IntegrationsApi.sync_git_hub ...'
      end
      # verify the required parameter 'github_connect_request' is set
      if @api_client.config.client_side_validation && github_connect_request.nil?
        fail ArgumentError, "Missing the required parameter 'github_connect_request' when calling IntegrationsApi.sync_git_hub"
      end
      # resource path
      local_var_path = '/integrations/github'

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

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(github_connect_request)

      # return_type
      return_type = opts[:debug_return_type] || 'GenericSuccessResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['accessToken', 'apiKey', 'customerId']

      new_options = opts.merge(
        :operation => :"IntegrationsApi.sync_git_hub",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationsApi#sync_git_hub\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Gitbook Sync
    #
    # You can sync upto 20 Gitbook spaces at a time using this endpoint. Additional parameters below can be used to associate 
    # data with the synced pages or modify the sync behavior.
    #
    # @param space_ids [Array<String>] 
    # @param data_source_id [Integer] 
    # @param tags [Object] 
    # @param chunk_size [Integer] 
    # @param chunk_overlap [Integer] 
    # @param skip_embedding_generation [Boolean] 
    # @param embedding_model [EmbeddingGenerators] 
    # @param generate_sparse_vectors [Boolean] 
    # @param prepend_filename_to_chunks [Boolean] 
    # @param request_id [String] 
    # @param file_sync_config [FileSyncConfigNullable] 
    # @param body [GitbookSyncRequest] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def sync_gitbook(space_ids:, data_source_id:, tags: SENTINEL, chunk_size: 1500, chunk_overlap: 20, skip_embedding_generation: false, embedding_model: SENTINEL, generate_sparse_vectors: false, prepend_filename_to_chunks: false, request_id: SENTINEL, file_sync_config: SENTINEL, extra: {})
      _body = {}
      _body[:tags] = tags if tags != SENTINEL
      _body[:space_ids] = space_ids if space_ids != SENTINEL
      _body[:data_source_id] = data_source_id if data_source_id != SENTINEL
      _body[:chunk_size] = chunk_size if chunk_size != SENTINEL
      _body[:chunk_overlap] = chunk_overlap if chunk_overlap != SENTINEL
      _body[:skip_embedding_generation] = skip_embedding_generation if skip_embedding_generation != SENTINEL
      _body[:embedding_model] = embedding_model if embedding_model != SENTINEL
      _body[:generate_sparse_vectors] = generate_sparse_vectors if generate_sparse_vectors != SENTINEL
      _body[:prepend_filename_to_chunks] = prepend_filename_to_chunks if prepend_filename_to_chunks != SENTINEL
      _body[:request_id] = request_id if request_id != SENTINEL
      _body[:file_sync_config] = file_sync_config if file_sync_config != SENTINEL
      gitbook_sync_request = _body
      api_response = sync_gitbook_with_http_info_impl(gitbook_sync_request, extra)
      api_response.data
    end

    # Gitbook Sync
    #
    # You can sync upto 20 Gitbook spaces at a time using this endpoint. Additional parameters below can be used to associate 
    # data with the synced pages or modify the sync behavior.
    #
    # @param space_ids [Array<String>] 
    # @param data_source_id [Integer] 
    # @param tags [Object] 
    # @param chunk_size [Integer] 
    # @param chunk_overlap [Integer] 
    # @param skip_embedding_generation [Boolean] 
    # @param embedding_model [EmbeddingGenerators] 
    # @param generate_sparse_vectors [Boolean] 
    # @param prepend_filename_to_chunks [Boolean] 
    # @param request_id [String] 
    # @param file_sync_config [FileSyncConfigNullable] 
    # @param body [GitbookSyncRequest] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def sync_gitbook_with_http_info(space_ids:, data_source_id:, tags: SENTINEL, chunk_size: 1500, chunk_overlap: 20, skip_embedding_generation: false, embedding_model: SENTINEL, generate_sparse_vectors: false, prepend_filename_to_chunks: false, request_id: SENTINEL, file_sync_config: SENTINEL, extra: {})
      _body = {}
      _body[:tags] = tags if tags != SENTINEL
      _body[:space_ids] = space_ids if space_ids != SENTINEL
      _body[:data_source_id] = data_source_id if data_source_id != SENTINEL
      _body[:chunk_size] = chunk_size if chunk_size != SENTINEL
      _body[:chunk_overlap] = chunk_overlap if chunk_overlap != SENTINEL
      _body[:skip_embedding_generation] = skip_embedding_generation if skip_embedding_generation != SENTINEL
      _body[:embedding_model] = embedding_model if embedding_model != SENTINEL
      _body[:generate_sparse_vectors] = generate_sparse_vectors if generate_sparse_vectors != SENTINEL
      _body[:prepend_filename_to_chunks] = prepend_filename_to_chunks if prepend_filename_to_chunks != SENTINEL
      _body[:request_id] = request_id if request_id != SENTINEL
      _body[:file_sync_config] = file_sync_config if file_sync_config != SENTINEL
      gitbook_sync_request = _body
      sync_gitbook_with_http_info_impl(gitbook_sync_request, extra)
    end

    # Gitbook Sync
    # You can sync upto 20 Gitbook spaces at a time using this endpoint. Additional parameters below can be used to associate  data with the synced pages or modify the sync behavior.
    # @param gitbook_sync_request [GitbookSyncRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Object]
    private def sync_gitbook_impl(gitbook_sync_request, opts = {})
      data, _status_code, _headers = sync_gitbook_with_http_info(gitbook_sync_request, opts)
      data
    end

    # Gitbook Sync
    # You can sync upto 20 Gitbook spaces at a time using this endpoint. Additional parameters below can be used to associate  data with the synced pages or modify the sync behavior.
    # @param gitbook_sync_request [GitbookSyncRequest] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is Object, status code, headers and response
    private def sync_gitbook_with_http_info_impl(gitbook_sync_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IntegrationsApi.sync_gitbook ...'
      end
      # verify the required parameter 'gitbook_sync_request' is set
      if @api_client.config.client_side_validation && gitbook_sync_request.nil?
        fail ArgumentError, "Missing the required parameter 'gitbook_sync_request' when calling IntegrationsApi.sync_gitbook"
      end
      # resource path
      local_var_path = '/integrations/gitbook/sync'

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

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(gitbook_sync_request)

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['accessToken', 'apiKey', 'customerId']

      new_options = opts.merge(
        :operation => :"IntegrationsApi.sync_gitbook",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationsApi#sync_gitbook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Gmail Sync
    #
    # Once you have successfully connected your gmail account, you can choose which emails to sync with us
    # using the filters parameter. Filters is a JSON object with key value pairs. It also supports AND and OR operations.
    # For now, we support a limited set of keys listed below.
    # 
    # <b>label</b>: Inbuilt Gmail labels, for example "Important" or a custom label you created.  
    # <b>after</b> or <b>before</b>: A date in YYYY/mm/dd format (example 2023/12/31). Gets emails after/before a certain date.
    # You can also use them in combination to get emails from a certain period.  
    # <b>is</b>: Can have the following values - starred, important, snoozed, and unread  
    # <b>from</b>: Email address of the sender  
    # <b>to</b>: Email address of the recipient  
    # <b>in</b>: Can have the following values - sent (sync emails sent by the user)  
    # <b>has</b>: Can have the following values - attachment (sync emails that have attachments)  
    # 
    # Using keys or values outside of the specified values can lead to unexpected behaviour.
    # 
    # An example of a basic query with filters can be
    # ```json
    # {
    #     "filters": {
    #             "key": "label",
    #             "value": "Test"
    #         }
    # }
    # ```
    # Which will list all emails that have the label "Test".
    # 
    # You can use AND and OR operation in the following way:
    # ```json
    # {
    #     "filters": {
    #         "AND": [
    #             {
    #                 "key": "after",
    #                 "value": "2024/01/07"
    #             },
    #             {
    #                 "OR": [
    #                     {
    #                         "key": "label",
    #                         "value": "Personal"
    #                     },
    #                     {
    #                         "key": "is",
    #                         "value": "starred"
    #                     }
    #                 ]
    #             }
    #         ]
    #     }
    # }
    # ```
    # This will return emails after 7th of Jan that are either starred or have the label "Personal". 
    # Note that this is the highest level of nesting we support, i.e. you can't add more AND/OR filters within the OR filter
    # in the above example.
    #
    # @param filters [Object] 
    # @param tags [Object] 
    # @param chunk_size [Integer] 
    # @param chunk_overlap [Integer] 
    # @param skip_embedding_generation [Boolean] 
    # @param embedding_model [EmbeddingGenerators] 
    # @param generate_sparse_vectors [Boolean] 
    # @param prepend_filename_to_chunks [Boolean] 
    # @param data_source_id [Integer] 
    # @param request_id [String] 
    # @param sync_attachments [Boolean] 
    # @param file_sync_config [FileSyncConfigNullable] 
    # @param incremental_sync [Boolean] 
    # @param body [GmailSyncInput] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def sync_gmail(filters:, tags: SENTINEL, chunk_size: 1500, chunk_overlap: 20, skip_embedding_generation: false, embedding_model: SENTINEL, generate_sparse_vectors: false, prepend_filename_to_chunks: false, data_source_id: SENTINEL, request_id: SENTINEL, sync_attachments: false, file_sync_config: SENTINEL, incremental_sync: false, extra: {})
      _body = {}
      _body[:tags] = tags if tags != SENTINEL
      _body[:filters] = filters if filters != SENTINEL
      _body[:chunk_size] = chunk_size if chunk_size != SENTINEL
      _body[:chunk_overlap] = chunk_overlap if chunk_overlap != SENTINEL
      _body[:skip_embedding_generation] = skip_embedding_generation if skip_embedding_generation != SENTINEL
      _body[:embedding_model] = embedding_model if embedding_model != SENTINEL
      _body[:generate_sparse_vectors] = generate_sparse_vectors if generate_sparse_vectors != SENTINEL
      _body[:prepend_filename_to_chunks] = prepend_filename_to_chunks if prepend_filename_to_chunks != SENTINEL
      _body[:data_source_id] = data_source_id if data_source_id != SENTINEL
      _body[:request_id] = request_id if request_id != SENTINEL
      _body[:sync_attachments] = sync_attachments if sync_attachments != SENTINEL
      _body[:file_sync_config] = file_sync_config if file_sync_config != SENTINEL
      _body[:incremental_sync] = incremental_sync if incremental_sync != SENTINEL
      gmail_sync_input = _body
      api_response = sync_gmail_with_http_info_impl(gmail_sync_input, extra)
      api_response.data
    end

    # Gmail Sync
    #
    # Once you have successfully connected your gmail account, you can choose which emails to sync with us
    # using the filters parameter. Filters is a JSON object with key value pairs. It also supports AND and OR operations.
    # For now, we support a limited set of keys listed below.
    # 
    # <b>label</b>: Inbuilt Gmail labels, for example "Important" or a custom label you created.  
    # <b>after</b> or <b>before</b>: A date in YYYY/mm/dd format (example 2023/12/31). Gets emails after/before a certain date.
    # You can also use them in combination to get emails from a certain period.  
    # <b>is</b>: Can have the following values - starred, important, snoozed, and unread  
    # <b>from</b>: Email address of the sender  
    # <b>to</b>: Email address of the recipient  
    # <b>in</b>: Can have the following values - sent (sync emails sent by the user)  
    # <b>has</b>: Can have the following values - attachment (sync emails that have attachments)  
    # 
    # Using keys or values outside of the specified values can lead to unexpected behaviour.
    # 
    # An example of a basic query with filters can be
    # ```json
    # {
    #     "filters": {
    #             "key": "label",
    #             "value": "Test"
    #         }
    # }
    # ```
    # Which will list all emails that have the label "Test".
    # 
    # You can use AND and OR operation in the following way:
    # ```json
    # {
    #     "filters": {
    #         "AND": [
    #             {
    #                 "key": "after",
    #                 "value": "2024/01/07"
    #             },
    #             {
    #                 "OR": [
    #                     {
    #                         "key": "label",
    #                         "value": "Personal"
    #                     },
    #                     {
    #                         "key": "is",
    #                         "value": "starred"
    #                     }
    #                 ]
    #             }
    #         ]
    #     }
    # }
    # ```
    # This will return emails after 7th of Jan that are either starred or have the label "Personal". 
    # Note that this is the highest level of nesting we support, i.e. you can't add more AND/OR filters within the OR filter
    # in the above example.
    #
    # @param filters [Object] 
    # @param tags [Object] 
    # @param chunk_size [Integer] 
    # @param chunk_overlap [Integer] 
    # @param skip_embedding_generation [Boolean] 
    # @param embedding_model [EmbeddingGenerators] 
    # @param generate_sparse_vectors [Boolean] 
    # @param prepend_filename_to_chunks [Boolean] 
    # @param data_source_id [Integer] 
    # @param request_id [String] 
    # @param sync_attachments [Boolean] 
    # @param file_sync_config [FileSyncConfigNullable] 
    # @param incremental_sync [Boolean] 
    # @param body [GmailSyncInput] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def sync_gmail_with_http_info(filters:, tags: SENTINEL, chunk_size: 1500, chunk_overlap: 20, skip_embedding_generation: false, embedding_model: SENTINEL, generate_sparse_vectors: false, prepend_filename_to_chunks: false, data_source_id: SENTINEL, request_id: SENTINEL, sync_attachments: false, file_sync_config: SENTINEL, incremental_sync: false, extra: {})
      _body = {}
      _body[:tags] = tags if tags != SENTINEL
      _body[:filters] = filters if filters != SENTINEL
      _body[:chunk_size] = chunk_size if chunk_size != SENTINEL
      _body[:chunk_overlap] = chunk_overlap if chunk_overlap != SENTINEL
      _body[:skip_embedding_generation] = skip_embedding_generation if skip_embedding_generation != SENTINEL
      _body[:embedding_model] = embedding_model if embedding_model != SENTINEL
      _body[:generate_sparse_vectors] = generate_sparse_vectors if generate_sparse_vectors != SENTINEL
      _body[:prepend_filename_to_chunks] = prepend_filename_to_chunks if prepend_filename_to_chunks != SENTINEL
      _body[:data_source_id] = data_source_id if data_source_id != SENTINEL
      _body[:request_id] = request_id if request_id != SENTINEL
      _body[:sync_attachments] = sync_attachments if sync_attachments != SENTINEL
      _body[:file_sync_config] = file_sync_config if file_sync_config != SENTINEL
      _body[:incremental_sync] = incremental_sync if incremental_sync != SENTINEL
      gmail_sync_input = _body
      sync_gmail_with_http_info_impl(gmail_sync_input, extra)
    end

    # Gmail Sync
    # Once you have successfully connected your gmail account, you can choose which emails to sync with us using the filters parameter. Filters is a JSON object with key value pairs. It also supports AND and OR operations. For now, we support a limited set of keys listed below.  <b>label</b>: Inbuilt Gmail labels, for example \"Important\" or a custom label you created.   <b>after</b> or <b>before</b>: A date in YYYY/mm/dd format (example 2023/12/31). Gets emails after/before a certain date. You can also use them in combination to get emails from a certain period.   <b>is</b>: Can have the following values - starred, important, snoozed, and unread   <b>from</b>: Email address of the sender   <b>to</b>: Email address of the recipient   <b>in</b>: Can have the following values - sent (sync emails sent by the user)   <b>has</b>: Can have the following values - attachment (sync emails that have attachments)    Using keys or values outside of the specified values can lead to unexpected behaviour.  An example of a basic query with filters can be ```json {     \"filters\": {             \"key\": \"label\",             \"value\": \"Test\"         } } ``` Which will list all emails that have the label \"Test\".  You can use AND and OR operation in the following way: ```json {     \"filters\": {         \"AND\": [             {                 \"key\": \"after\",                 \"value\": \"2024/01/07\"             },             {                 \"OR\": [                     {                         \"key\": \"label\",                         \"value\": \"Personal\"                     },                     {                         \"key\": \"is\",                         \"value\": \"starred\"                     }                 ]             }         ]     } } ``` This will return emails after 7th of Jan that are either starred or have the label \"Personal\".  Note that this is the highest level of nesting we support, i.e. you can't add more AND/OR filters within the OR filter in the above example.
    # @param gmail_sync_input [GmailSyncInput] 
    # @param [Hash] opts the optional parameters
    # @return [GenericSuccessResponse]
    private def sync_gmail_impl(gmail_sync_input, opts = {})
      data, _status_code, _headers = sync_gmail_with_http_info(gmail_sync_input, opts)
      data
    end

    # Gmail Sync
    # Once you have successfully connected your gmail account, you can choose which emails to sync with us using the filters parameter. Filters is a JSON object with key value pairs. It also supports AND and OR operations. For now, we support a limited set of keys listed below.  &lt;b&gt;label&lt;/b&gt;: Inbuilt Gmail labels, for example \&quot;Important\&quot; or a custom label you created.   &lt;b&gt;after&lt;/b&gt; or &lt;b&gt;before&lt;/b&gt;: A date in YYYY/mm/dd format (example 2023/12/31). Gets emails after/before a certain date. You can also use them in combination to get emails from a certain period.   &lt;b&gt;is&lt;/b&gt;: Can have the following values - starred, important, snoozed, and unread   &lt;b&gt;from&lt;/b&gt;: Email address of the sender   &lt;b&gt;to&lt;/b&gt;: Email address of the recipient   &lt;b&gt;in&lt;/b&gt;: Can have the following values - sent (sync emails sent by the user)   &lt;b&gt;has&lt;/b&gt;: Can have the following values - attachment (sync emails that have attachments)    Using keys or values outside of the specified values can lead to unexpected behaviour.  An example of a basic query with filters can be &#x60;&#x60;&#x60;json {     \&quot;filters\&quot;: {             \&quot;key\&quot;: \&quot;label\&quot;,             \&quot;value\&quot;: \&quot;Test\&quot;         } } &#x60;&#x60;&#x60; Which will list all emails that have the label \&quot;Test\&quot;.  You can use AND and OR operation in the following way: &#x60;&#x60;&#x60;json {     \&quot;filters\&quot;: {         \&quot;AND\&quot;: [             {                 \&quot;key\&quot;: \&quot;after\&quot;,                 \&quot;value\&quot;: \&quot;2024/01/07\&quot;             },             {                 \&quot;OR\&quot;: [                     {                         \&quot;key\&quot;: \&quot;label\&quot;,                         \&quot;value\&quot;: \&quot;Personal\&quot;                     },                     {                         \&quot;key\&quot;: \&quot;is\&quot;,                         \&quot;value\&quot;: \&quot;starred\&quot;                     }                 ]             }         ]     } } &#x60;&#x60;&#x60; This will return emails after 7th of Jan that are either starred or have the label \&quot;Personal\&quot;.  Note that this is the highest level of nesting we support, i.e. you can&#39;t add more AND/OR filters within the OR filter in the above example.
    # @param gmail_sync_input [GmailSyncInput] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is GenericSuccessResponse, status code, headers and response
    private def sync_gmail_with_http_info_impl(gmail_sync_input, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IntegrationsApi.sync_gmail ...'
      end
      # verify the required parameter 'gmail_sync_input' is set
      if @api_client.config.client_side_validation && gmail_sync_input.nil?
        fail ArgumentError, "Missing the required parameter 'gmail_sync_input' when calling IntegrationsApi.sync_gmail"
      end
      # resource path
      local_var_path = '/integrations/gmail/sync'

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

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(gmail_sync_input)

      # return_type
      return_type = opts[:debug_return_type] || 'GenericSuccessResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['accessToken', 'apiKey', 'customerId']

      new_options = opts.merge(
        :operation => :"IntegrationsApi.sync_gmail",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationsApi#sync_gmail\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Outlook Sync
    #
    # Once you have successfully connected your Outlook account, you can choose which emails to sync with us
    # using the filters and folder parameter. "folder" should be the folder you want to sync from Outlook. By default
    # we get messages from your inbox folder.  
    # Filters is a JSON object with key value pairs. It also supports AND and OR operations.
    # For now, we support a limited set of keys listed below.
    # 
    # <b>category</b>: Custom categories that you created in Outlook.  
    # <b>after</b> or <b>before</b>: A date in YYYY/mm/dd format (example 2023/12/31). Gets emails after/before a certain date. You can also use them in combination to get emails from a certain period.    
    # <b>is</b>: Can have the following values: flagged  
    # <b>from</b>: Email address of the sender   
    # 
    # An example of a basic query with filters can be
    # ```json
    # {
    #     "filters": {
    #             "key": "category",
    #             "value": "Test"
    #         }
    # }
    # ```
    # Which will list all emails that have the category "Test".  
    # 
    # Specifying a custom folder in the same query
    # ```json
    # {
    #     "folder": "Folder Name",
    #     "filters": {
    #             "key": "category",
    #             "value": "Test"
    #         }
    # }
    # ```
    # 
    # You can use AND and OR operation in the following way:
    # ```json
    # {
    #     "filters": {
    #         "AND": [
    #             {
    #                 "key": "after",
    #                 "value": "2024/01/07"
    #             },
    #             {
    #                 "OR": [
    #                     {
    #                         "key": "category",
    #                         "value": "Personal"
    #                     },
    #                     {
    #                         "key": "category",
    #                         "value": "Test"
    #                     },
    #                 ]
    #             }
    #         ]
    #     }
    # }
    # ```
    # This will return emails after 7th of Jan that have either Personal or Test as category. 
    # Note that this is the highest level of nesting we support, i.e. you can't add more AND/OR filters within the OR filter
    # in the above example.
    #
    # @param filters [Object] 
    # @param tags [Object] 
    # @param folder [String] 
    # @param chunk_size [Integer] 
    # @param chunk_overlap [Integer] 
    # @param skip_embedding_generation [Boolean] 
    # @param embedding_model [EmbeddingGenerators] 
    # @param generate_sparse_vectors [Boolean] 
    # @param prepend_filename_to_chunks [Boolean] 
    # @param data_source_id [Integer] 
    # @param request_id [String] 
    # @param sync_attachments [Boolean] 
    # @param file_sync_config [FileSyncConfigNullable] 
    # @param incremental_sync [Boolean] 
    # @param body [OutlookSyncInput] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def sync_outlook(filters:, tags: SENTINEL, folder: 'Inbox', chunk_size: 1500, chunk_overlap: 20, skip_embedding_generation: false, embedding_model: SENTINEL, generate_sparse_vectors: false, prepend_filename_to_chunks: false, data_source_id: SENTINEL, request_id: SENTINEL, sync_attachments: false, file_sync_config: SENTINEL, incremental_sync: false, extra: {})
      _body = {}
      _body[:tags] = tags if tags != SENTINEL
      _body[:folder] = folder if folder != SENTINEL
      _body[:filters] = filters if filters != SENTINEL
      _body[:chunk_size] = chunk_size if chunk_size != SENTINEL
      _body[:chunk_overlap] = chunk_overlap if chunk_overlap != SENTINEL
      _body[:skip_embedding_generation] = skip_embedding_generation if skip_embedding_generation != SENTINEL
      _body[:embedding_model] = embedding_model if embedding_model != SENTINEL
      _body[:generate_sparse_vectors] = generate_sparse_vectors if generate_sparse_vectors != SENTINEL
      _body[:prepend_filename_to_chunks] = prepend_filename_to_chunks if prepend_filename_to_chunks != SENTINEL
      _body[:data_source_id] = data_source_id if data_source_id != SENTINEL
      _body[:request_id] = request_id if request_id != SENTINEL
      _body[:sync_attachments] = sync_attachments if sync_attachments != SENTINEL
      _body[:file_sync_config] = file_sync_config if file_sync_config != SENTINEL
      _body[:incremental_sync] = incremental_sync if incremental_sync != SENTINEL
      outlook_sync_input = _body
      api_response = sync_outlook_with_http_info_impl(outlook_sync_input, extra)
      api_response.data
    end

    # Outlook Sync
    #
    # Once you have successfully connected your Outlook account, you can choose which emails to sync with us
    # using the filters and folder parameter. "folder" should be the folder you want to sync from Outlook. By default
    # we get messages from your inbox folder.  
    # Filters is a JSON object with key value pairs. It also supports AND and OR operations.
    # For now, we support a limited set of keys listed below.
    # 
    # <b>category</b>: Custom categories that you created in Outlook.  
    # <b>after</b> or <b>before</b>: A date in YYYY/mm/dd format (example 2023/12/31). Gets emails after/before a certain date. You can also use them in combination to get emails from a certain period.    
    # <b>is</b>: Can have the following values: flagged  
    # <b>from</b>: Email address of the sender   
    # 
    # An example of a basic query with filters can be
    # ```json
    # {
    #     "filters": {
    #             "key": "category",
    #             "value": "Test"
    #         }
    # }
    # ```
    # Which will list all emails that have the category "Test".  
    # 
    # Specifying a custom folder in the same query
    # ```json
    # {
    #     "folder": "Folder Name",
    #     "filters": {
    #             "key": "category",
    #             "value": "Test"
    #         }
    # }
    # ```
    # 
    # You can use AND and OR operation in the following way:
    # ```json
    # {
    #     "filters": {
    #         "AND": [
    #             {
    #                 "key": "after",
    #                 "value": "2024/01/07"
    #             },
    #             {
    #                 "OR": [
    #                     {
    #                         "key": "category",
    #                         "value": "Personal"
    #                     },
    #                     {
    #                         "key": "category",
    #                         "value": "Test"
    #                     },
    #                 ]
    #             }
    #         ]
    #     }
    # }
    # ```
    # This will return emails after 7th of Jan that have either Personal or Test as category. 
    # Note that this is the highest level of nesting we support, i.e. you can't add more AND/OR filters within the OR filter
    # in the above example.
    #
    # @param filters [Object] 
    # @param tags [Object] 
    # @param folder [String] 
    # @param chunk_size [Integer] 
    # @param chunk_overlap [Integer] 
    # @param skip_embedding_generation [Boolean] 
    # @param embedding_model [EmbeddingGenerators] 
    # @param generate_sparse_vectors [Boolean] 
    # @param prepend_filename_to_chunks [Boolean] 
    # @param data_source_id [Integer] 
    # @param request_id [String] 
    # @param sync_attachments [Boolean] 
    # @param file_sync_config [FileSyncConfigNullable] 
    # @param incremental_sync [Boolean] 
    # @param body [OutlookSyncInput] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def sync_outlook_with_http_info(filters:, tags: SENTINEL, folder: 'Inbox', chunk_size: 1500, chunk_overlap: 20, skip_embedding_generation: false, embedding_model: SENTINEL, generate_sparse_vectors: false, prepend_filename_to_chunks: false, data_source_id: SENTINEL, request_id: SENTINEL, sync_attachments: false, file_sync_config: SENTINEL, incremental_sync: false, extra: {})
      _body = {}
      _body[:tags] = tags if tags != SENTINEL
      _body[:folder] = folder if folder != SENTINEL
      _body[:filters] = filters if filters != SENTINEL
      _body[:chunk_size] = chunk_size if chunk_size != SENTINEL
      _body[:chunk_overlap] = chunk_overlap if chunk_overlap != SENTINEL
      _body[:skip_embedding_generation] = skip_embedding_generation if skip_embedding_generation != SENTINEL
      _body[:embedding_model] = embedding_model if embedding_model != SENTINEL
      _body[:generate_sparse_vectors] = generate_sparse_vectors if generate_sparse_vectors != SENTINEL
      _body[:prepend_filename_to_chunks] = prepend_filename_to_chunks if prepend_filename_to_chunks != SENTINEL
      _body[:data_source_id] = data_source_id if data_source_id != SENTINEL
      _body[:request_id] = request_id if request_id != SENTINEL
      _body[:sync_attachments] = sync_attachments if sync_attachments != SENTINEL
      _body[:file_sync_config] = file_sync_config if file_sync_config != SENTINEL
      _body[:incremental_sync] = incremental_sync if incremental_sync != SENTINEL
      outlook_sync_input = _body
      sync_outlook_with_http_info_impl(outlook_sync_input, extra)
    end

    # Outlook Sync
    # Once you have successfully connected your Outlook account, you can choose which emails to sync with us using the filters and folder parameter. \"folder\" should be the folder you want to sync from Outlook. By default we get messages from your inbox folder.   Filters is a JSON object with key value pairs. It also supports AND and OR operations. For now, we support a limited set of keys listed below.  <b>category</b>: Custom categories that you created in Outlook.   <b>after</b> or <b>before</b>: A date in YYYY/mm/dd format (example 2023/12/31). Gets emails after/before a certain date. You can also use them in combination to get emails from a certain period.     <b>is</b>: Can have the following values: flagged   <b>from</b>: Email address of the sender     An example of a basic query with filters can be ```json {     \"filters\": {             \"key\": \"category\",             \"value\": \"Test\"         } } ``` Which will list all emails that have the category \"Test\".    Specifying a custom folder in the same query ```json {     \"folder\": \"Folder Name\",     \"filters\": {             \"key\": \"category\",             \"value\": \"Test\"         } } ```  You can use AND and OR operation in the following way: ```json {     \"filters\": {         \"AND\": [             {                 \"key\": \"after\",                 \"value\": \"2024/01/07\"             },             {                 \"OR\": [                     {                         \"key\": \"category\",                         \"value\": \"Personal\"                     },                     {                         \"key\": \"category\",                         \"value\": \"Test\"                     },                 ]             }         ]     } } ``` This will return emails after 7th of Jan that have either Personal or Test as category.  Note that this is the highest level of nesting we support, i.e. you can't add more AND/OR filters within the OR filter in the above example.
    # @param outlook_sync_input [OutlookSyncInput] 
    # @param [Hash] opts the optional parameters
    # @return [GenericSuccessResponse]
    private def sync_outlook_impl(outlook_sync_input, opts = {})
      data, _status_code, _headers = sync_outlook_with_http_info(outlook_sync_input, opts)
      data
    end

    # Outlook Sync
    # Once you have successfully connected your Outlook account, you can choose which emails to sync with us using the filters and folder parameter. \&quot;folder\&quot; should be the folder you want to sync from Outlook. By default we get messages from your inbox folder.   Filters is a JSON object with key value pairs. It also supports AND and OR operations. For now, we support a limited set of keys listed below.  &lt;b&gt;category&lt;/b&gt;: Custom categories that you created in Outlook.   &lt;b&gt;after&lt;/b&gt; or &lt;b&gt;before&lt;/b&gt;: A date in YYYY/mm/dd format (example 2023/12/31). Gets emails after/before a certain date. You can also use them in combination to get emails from a certain period.     &lt;b&gt;is&lt;/b&gt;: Can have the following values: flagged   &lt;b&gt;from&lt;/b&gt;: Email address of the sender     An example of a basic query with filters can be &#x60;&#x60;&#x60;json {     \&quot;filters\&quot;: {             \&quot;key\&quot;: \&quot;category\&quot;,             \&quot;value\&quot;: \&quot;Test\&quot;         } } &#x60;&#x60;&#x60; Which will list all emails that have the category \&quot;Test\&quot;.    Specifying a custom folder in the same query &#x60;&#x60;&#x60;json {     \&quot;folder\&quot;: \&quot;Folder Name\&quot;,     \&quot;filters\&quot;: {             \&quot;key\&quot;: \&quot;category\&quot;,             \&quot;value\&quot;: \&quot;Test\&quot;         } } &#x60;&#x60;&#x60;  You can use AND and OR operation in the following way: &#x60;&#x60;&#x60;json {     \&quot;filters\&quot;: {         \&quot;AND\&quot;: [             {                 \&quot;key\&quot;: \&quot;after\&quot;,                 \&quot;value\&quot;: \&quot;2024/01/07\&quot;             },             {                 \&quot;OR\&quot;: [                     {                         \&quot;key\&quot;: \&quot;category\&quot;,                         \&quot;value\&quot;: \&quot;Personal\&quot;                     },                     {                         \&quot;key\&quot;: \&quot;category\&quot;,                         \&quot;value\&quot;: \&quot;Test\&quot;                     },                 ]             }         ]     } } &#x60;&#x60;&#x60; This will return emails after 7th of Jan that have either Personal or Test as category.  Note that this is the highest level of nesting we support, i.e. you can&#39;t add more AND/OR filters within the OR filter in the above example.
    # @param outlook_sync_input [OutlookSyncInput] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is GenericSuccessResponse, status code, headers and response
    private def sync_outlook_with_http_info_impl(outlook_sync_input, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IntegrationsApi.sync_outlook ...'
      end
      # verify the required parameter 'outlook_sync_input' is set
      if @api_client.config.client_side_validation && outlook_sync_input.nil?
        fail ArgumentError, "Missing the required parameter 'outlook_sync_input' when calling IntegrationsApi.sync_outlook"
      end
      # resource path
      local_var_path = '/integrations/outlook/sync'

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

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(outlook_sync_input)

      # return_type
      return_type = opts[:debug_return_type] || 'GenericSuccessResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['accessToken', 'apiKey', 'customerId']

      new_options = opts.merge(
        :operation => :"IntegrationsApi.sync_outlook",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationsApi#sync_outlook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Github Sync Repos
    #
    # You can retreive repos your token has access to using /integrations/github/repos and sync their content. 
    # You can also pass full name of any public repository (username/repo-name). This will store the repo content with 
    # carbon which can be accessed through /integrations/items/list endpoint. Maximum of 25 repositories are accepted per request.
    #
    # @param repos [Array<String>] 
    # @param data_source_id [Integer] 
    # @param body [GithubFetchReposRequest] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def sync_repos(repos:, data_source_id: SENTINEL, extra: {})
      _body = {}
      _body[:repos] = repos if repos != SENTINEL
      _body[:data_source_id] = data_source_id if data_source_id != SENTINEL
      github_fetch_repos_request = _body
      api_response = sync_repos_with_http_info_impl(github_fetch_repos_request, extra)
      api_response.data
    end

    # Github Sync Repos
    #
    # You can retreive repos your token has access to using /integrations/github/repos and sync their content. 
    # You can also pass full name of any public repository (username/repo-name). This will store the repo content with 
    # carbon which can be accessed through /integrations/items/list endpoint. Maximum of 25 repositories are accepted per request.
    #
    # @param repos [Array<String>] 
    # @param data_source_id [Integer] 
    # @param body [GithubFetchReposRequest] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def sync_repos_with_http_info(repos:, data_source_id: SENTINEL, extra: {})
      _body = {}
      _body[:repos] = repos if repos != SENTINEL
      _body[:data_source_id] = data_source_id if data_source_id != SENTINEL
      github_fetch_repos_request = _body
      sync_repos_with_http_info_impl(github_fetch_repos_request, extra)
    end

    # Github Sync Repos
    # You can retreive repos your token has access to using /integrations/github/repos and sync their content.  You can also pass full name of any public repository (username/repo-name). This will store the repo content with  carbon which can be accessed through /integrations/items/list endpoint. Maximum of 25 repositories are accepted per request.
    # @param github_fetch_repos_request [GithubFetchReposRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Object]
    private def sync_repos_impl(github_fetch_repos_request, opts = {})
      data, _status_code, _headers = sync_repos_with_http_info(github_fetch_repos_request, opts)
      data
    end

    # Github Sync Repos
    # You can retreive repos your token has access to using /integrations/github/repos and sync their content.  You can also pass full name of any public repository (username/repo-name). This will store the repo content with  carbon which can be accessed through /integrations/items/list endpoint. Maximum of 25 repositories are accepted per request.
    # @param github_fetch_repos_request [GithubFetchReposRequest] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is Object, status code, headers and response
    private def sync_repos_with_http_info_impl(github_fetch_repos_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IntegrationsApi.sync_repos ...'
      end
      # verify the required parameter 'github_fetch_repos_request' is set
      if @api_client.config.client_side_validation && github_fetch_repos_request.nil?
        fail ArgumentError, "Missing the required parameter 'github_fetch_repos_request' when calling IntegrationsApi.sync_repos"
      end
      # resource path
      local_var_path = '/integrations/github/sync_repos'

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

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(github_fetch_repos_request)

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['accessToken', 'apiKey', 'customerId']

      new_options = opts.merge(
        :operation => :"IntegrationsApi.sync_repos",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationsApi#sync_repos\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Rss Feed
    #
    # @param url [String] 
    # @param tags [Object] 
    # @param chunk_size [Integer] 
    # @param chunk_overlap [Integer] 
    # @param skip_embedding_generation [Boolean] 
    # @param embedding_model [EmbeddingGenerators] 
    # @param generate_sparse_vectors [Boolean] 
    # @param prepend_filename_to_chunks [Boolean] 
    # @param request_id [String] 
    # @param data_source_tags [Object] Tags to be associated with the data source. If the data source already has tags set, then an upsert will be performed.
    # @param body [RSSFeedInput] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def sync_rss_feed(url:, tags: SENTINEL, chunk_size: 1500, chunk_overlap: 20, skip_embedding_generation: false, embedding_model: SENTINEL, generate_sparse_vectors: false, prepend_filename_to_chunks: false, request_id: SENTINEL, data_source_tags: SENTINEL, extra: {})
      _body = {}
      _body[:tags] = tags if tags != SENTINEL
      _body[:url] = url if url != SENTINEL
      _body[:chunk_size] = chunk_size if chunk_size != SENTINEL
      _body[:chunk_overlap] = chunk_overlap if chunk_overlap != SENTINEL
      _body[:skip_embedding_generation] = skip_embedding_generation if skip_embedding_generation != SENTINEL
      _body[:embedding_model] = embedding_model if embedding_model != SENTINEL
      _body[:generate_sparse_vectors] = generate_sparse_vectors if generate_sparse_vectors != SENTINEL
      _body[:prepend_filename_to_chunks] = prepend_filename_to_chunks if prepend_filename_to_chunks != SENTINEL
      _body[:request_id] = request_id if request_id != SENTINEL
      _body[:data_source_tags] = data_source_tags if data_source_tags != SENTINEL
      rss_feed_input = _body
      api_response = sync_rss_feed_with_http_info_impl(rss_feed_input, extra)
      api_response.data
    end

    # Rss Feed
    #
    # @param url [String] 
    # @param tags [Object] 
    # @param chunk_size [Integer] 
    # @param chunk_overlap [Integer] 
    # @param skip_embedding_generation [Boolean] 
    # @param embedding_model [EmbeddingGenerators] 
    # @param generate_sparse_vectors [Boolean] 
    # @param prepend_filename_to_chunks [Boolean] 
    # @param request_id [String] 
    # @param data_source_tags [Object] Tags to be associated with the data source. If the data source already has tags set, then an upsert will be performed.
    # @param body [RSSFeedInput] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def sync_rss_feed_with_http_info(url:, tags: SENTINEL, chunk_size: 1500, chunk_overlap: 20, skip_embedding_generation: false, embedding_model: SENTINEL, generate_sparse_vectors: false, prepend_filename_to_chunks: false, request_id: SENTINEL, data_source_tags: SENTINEL, extra: {})
      _body = {}
      _body[:tags] = tags if tags != SENTINEL
      _body[:url] = url if url != SENTINEL
      _body[:chunk_size] = chunk_size if chunk_size != SENTINEL
      _body[:chunk_overlap] = chunk_overlap if chunk_overlap != SENTINEL
      _body[:skip_embedding_generation] = skip_embedding_generation if skip_embedding_generation != SENTINEL
      _body[:embedding_model] = embedding_model if embedding_model != SENTINEL
      _body[:generate_sparse_vectors] = generate_sparse_vectors if generate_sparse_vectors != SENTINEL
      _body[:prepend_filename_to_chunks] = prepend_filename_to_chunks if prepend_filename_to_chunks != SENTINEL
      _body[:request_id] = request_id if request_id != SENTINEL
      _body[:data_source_tags] = data_source_tags if data_source_tags != SENTINEL
      rss_feed_input = _body
      sync_rss_feed_with_http_info_impl(rss_feed_input, extra)
    end

    # Rss Feed
    # @param rss_feed_input [RSSFeedInput] 
    # @param [Hash] opts the optional parameters
    # @return [GenericSuccessResponse]
    private def sync_rss_feed_impl(rss_feed_input, opts = {})
      data, _status_code, _headers = sync_rss_feed_with_http_info(rss_feed_input, opts)
      data
    end

    # Rss Feed
    # @param rss_feed_input [RSSFeedInput] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is GenericSuccessResponse, status code, headers and response
    private def sync_rss_feed_with_http_info_impl(rss_feed_input, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IntegrationsApi.sync_rss_feed ...'
      end
      # verify the required parameter 'rss_feed_input' is set
      if @api_client.config.client_side_validation && rss_feed_input.nil?
        fail ArgumentError, "Missing the required parameter 'rss_feed_input' when calling IntegrationsApi.sync_rss_feed"
      end
      # resource path
      local_var_path = '/integrations/rss_feed'

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

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(rss_feed_input)

      # return_type
      return_type = opts[:debug_return_type] || 'GenericSuccessResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['accessToken', 'apiKey', 'customerId']

      new_options = opts.merge(
        :operation => :"IntegrationsApi.sync_rss_feed",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationsApi#sync_rss_feed\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # S3 Files
    #
    # After optionally loading the items via /integrations/items/sync and integrations/items/list, use the bucket name 
    # and object key as the ID in this endpoint to sync them into Carbon. Additional parameters below can associate 
    # data with the selected items or modify the sync behavior
    #
    # @param ids [Array<S3GetFileInput>] Each input should be one of the following: A bucket name, a bucket name and a prefix, or a bucket name and an object key. A prefix is the common path for all objects you want to sync. Paths should end with a forward slash.
    # @param tags [Object] 
    # @param chunk_size [Integer] 
    # @param chunk_overlap [Integer] 
    # @param skip_embedding_generation [Boolean] 
    # @param embedding_model [EmbeddingGenerators] 
    # @param generate_sparse_vectors [Boolean] 
    # @param prepend_filename_to_chunks [Boolean] 
    # @param max_items_per_chunk [Integer] Number of objects per chunk. For csv, tsv, xlsx, and json files only.
    # @param set_page_as_boundary [Boolean] 
    # @param data_source_id [Integer] 
    # @param request_id [String] 
    # @param use_ocr [Boolean] 
    # @param parse_pdf_tables_with_ocr [Boolean] 
    # @param file_sync_config [FileSyncConfigNullable] 
    # @param body [S3FileSyncInput] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def sync_s3_files(ids:, tags: SENTINEL, chunk_size: 1500, chunk_overlap: 20, skip_embedding_generation: false, embedding_model: SENTINEL, generate_sparse_vectors: false, prepend_filename_to_chunks: false, max_items_per_chunk: SENTINEL, set_page_as_boundary: false, data_source_id: SENTINEL, request_id: SENTINEL, use_ocr: false, parse_pdf_tables_with_ocr: false, file_sync_config: SENTINEL, extra: {})
      _body = {}
      _body[:tags] = tags if tags != SENTINEL
      _body[:ids] = ids if ids != SENTINEL
      _body[:chunk_size] = chunk_size if chunk_size != SENTINEL
      _body[:chunk_overlap] = chunk_overlap if chunk_overlap != SENTINEL
      _body[:skip_embedding_generation] = skip_embedding_generation if skip_embedding_generation != SENTINEL
      _body[:embedding_model] = embedding_model if embedding_model != SENTINEL
      _body[:generate_sparse_vectors] = generate_sparse_vectors if generate_sparse_vectors != SENTINEL
      _body[:prepend_filename_to_chunks] = prepend_filename_to_chunks if prepend_filename_to_chunks != SENTINEL
      _body[:max_items_per_chunk] = max_items_per_chunk if max_items_per_chunk != SENTINEL
      _body[:set_page_as_boundary] = set_page_as_boundary if set_page_as_boundary != SENTINEL
      _body[:data_source_id] = data_source_id if data_source_id != SENTINEL
      _body[:request_id] = request_id if request_id != SENTINEL
      _body[:use_ocr] = use_ocr if use_ocr != SENTINEL
      _body[:parse_pdf_tables_with_ocr] = parse_pdf_tables_with_ocr if parse_pdf_tables_with_ocr != SENTINEL
      _body[:file_sync_config] = file_sync_config if file_sync_config != SENTINEL
      s3_file_sync_input = _body
      api_response = sync_s3_files_with_http_info_impl(s3_file_sync_input, extra)
      api_response.data
    end

    # S3 Files
    #
    # After optionally loading the items via /integrations/items/sync and integrations/items/list, use the bucket name 
    # and object key as the ID in this endpoint to sync them into Carbon. Additional parameters below can associate 
    # data with the selected items or modify the sync behavior
    #
    # @param ids [Array<S3GetFileInput>] Each input should be one of the following: A bucket name, a bucket name and a prefix, or a bucket name and an object key. A prefix is the common path for all objects you want to sync. Paths should end with a forward slash.
    # @param tags [Object] 
    # @param chunk_size [Integer] 
    # @param chunk_overlap [Integer] 
    # @param skip_embedding_generation [Boolean] 
    # @param embedding_model [EmbeddingGenerators] 
    # @param generate_sparse_vectors [Boolean] 
    # @param prepend_filename_to_chunks [Boolean] 
    # @param max_items_per_chunk [Integer] Number of objects per chunk. For csv, tsv, xlsx, and json files only.
    # @param set_page_as_boundary [Boolean] 
    # @param data_source_id [Integer] 
    # @param request_id [String] 
    # @param use_ocr [Boolean] 
    # @param parse_pdf_tables_with_ocr [Boolean] 
    # @param file_sync_config [FileSyncConfigNullable] 
    # @param body [S3FileSyncInput] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def sync_s3_files_with_http_info(ids:, tags: SENTINEL, chunk_size: 1500, chunk_overlap: 20, skip_embedding_generation: false, embedding_model: SENTINEL, generate_sparse_vectors: false, prepend_filename_to_chunks: false, max_items_per_chunk: SENTINEL, set_page_as_boundary: false, data_source_id: SENTINEL, request_id: SENTINEL, use_ocr: false, parse_pdf_tables_with_ocr: false, file_sync_config: SENTINEL, extra: {})
      _body = {}
      _body[:tags] = tags if tags != SENTINEL
      _body[:ids] = ids if ids != SENTINEL
      _body[:chunk_size] = chunk_size if chunk_size != SENTINEL
      _body[:chunk_overlap] = chunk_overlap if chunk_overlap != SENTINEL
      _body[:skip_embedding_generation] = skip_embedding_generation if skip_embedding_generation != SENTINEL
      _body[:embedding_model] = embedding_model if embedding_model != SENTINEL
      _body[:generate_sparse_vectors] = generate_sparse_vectors if generate_sparse_vectors != SENTINEL
      _body[:prepend_filename_to_chunks] = prepend_filename_to_chunks if prepend_filename_to_chunks != SENTINEL
      _body[:max_items_per_chunk] = max_items_per_chunk if max_items_per_chunk != SENTINEL
      _body[:set_page_as_boundary] = set_page_as_boundary if set_page_as_boundary != SENTINEL
      _body[:data_source_id] = data_source_id if data_source_id != SENTINEL
      _body[:request_id] = request_id if request_id != SENTINEL
      _body[:use_ocr] = use_ocr if use_ocr != SENTINEL
      _body[:parse_pdf_tables_with_ocr] = parse_pdf_tables_with_ocr if parse_pdf_tables_with_ocr != SENTINEL
      _body[:file_sync_config] = file_sync_config if file_sync_config != SENTINEL
      s3_file_sync_input = _body
      sync_s3_files_with_http_info_impl(s3_file_sync_input, extra)
    end

    # S3 Files
    # After optionally loading the items via /integrations/items/sync and integrations/items/list, use the bucket name  and object key as the ID in this endpoint to sync them into Carbon. Additional parameters below can associate  data with the selected items or modify the sync behavior
    # @param s3_file_sync_input [S3FileSyncInput] 
    # @param [Hash] opts the optional parameters
    # @return [GenericSuccessResponse]
    private def sync_s3_files_impl(s3_file_sync_input, opts = {})
      data, _status_code, _headers = sync_s3_files_with_http_info(s3_file_sync_input, opts)
      data
    end

    # S3 Files
    # After optionally loading the items via /integrations/items/sync and integrations/items/list, use the bucket name  and object key as the ID in this endpoint to sync them into Carbon. Additional parameters below can associate  data with the selected items or modify the sync behavior
    # @param s3_file_sync_input [S3FileSyncInput] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is GenericSuccessResponse, status code, headers and response
    private def sync_s3_files_with_http_info_impl(s3_file_sync_input, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IntegrationsApi.sync_s3_files ...'
      end
      # verify the required parameter 's3_file_sync_input' is set
      if @api_client.config.client_side_validation && s3_file_sync_input.nil?
        fail ArgumentError, "Missing the required parameter 's3_file_sync_input' when calling IntegrationsApi.sync_s3_files"
      end
      # resource path
      local_var_path = '/integrations/s3/files'

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

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(s3_file_sync_input)

      # return_type
      return_type = opts[:debug_return_type] || 'GenericSuccessResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['accessToken', 'apiKey', 'customerId']

      new_options = opts.merge(
        :operation => :"IntegrationsApi.sync_s3_files",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationsApi#sync_s3_files\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Slack Sync
    #
    # You can list all conversations using the endpoint /integrations/slack/conversations. The ID of 
    # conversation will be used as an input for this endpoint with timestamps as optional filters.
    #
    # @param filters [SlackFilters] 
    # @param tags [Object] 
    # @param chunk_size [Integer] 
    # @param chunk_overlap [Integer] 
    # @param skip_embedding_generation [Boolean] 
    # @param embedding_model [EmbeddingGenerators] 
    # @param generate_sparse_vectors [Boolean] 
    # @param prepend_filename_to_chunks [Boolean] 
    # @param data_source_id [Integer] 
    # @param request_id [String] 
    # @param body [SlackSyncRequest] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def sync_slack(filters:, tags: SENTINEL, chunk_size: 1500, chunk_overlap: 20, skip_embedding_generation: false, embedding_model: SENTINEL, generate_sparse_vectors: false, prepend_filename_to_chunks: false, data_source_id: SENTINEL, request_id: SENTINEL, extra: {})
      _body = {}
      _body[:tags] = tags if tags != SENTINEL
      _body[:filters] = filters if filters != SENTINEL
      _body[:chunk_size] = chunk_size if chunk_size != SENTINEL
      _body[:chunk_overlap] = chunk_overlap if chunk_overlap != SENTINEL
      _body[:skip_embedding_generation] = skip_embedding_generation if skip_embedding_generation != SENTINEL
      _body[:embedding_model] = embedding_model if embedding_model != SENTINEL
      _body[:generate_sparse_vectors] = generate_sparse_vectors if generate_sparse_vectors != SENTINEL
      _body[:prepend_filename_to_chunks] = prepend_filename_to_chunks if prepend_filename_to_chunks != SENTINEL
      _body[:data_source_id] = data_source_id if data_source_id != SENTINEL
      _body[:request_id] = request_id if request_id != SENTINEL
      slack_sync_request = _body
      api_response = sync_slack_with_http_info_impl(slack_sync_request, extra)
      api_response.data
    end

    # Slack Sync
    #
    # You can list all conversations using the endpoint /integrations/slack/conversations. The ID of 
    # conversation will be used as an input for this endpoint with timestamps as optional filters.
    #
    # @param filters [SlackFilters] 
    # @param tags [Object] 
    # @param chunk_size [Integer] 
    # @param chunk_overlap [Integer] 
    # @param skip_embedding_generation [Boolean] 
    # @param embedding_model [EmbeddingGenerators] 
    # @param generate_sparse_vectors [Boolean] 
    # @param prepend_filename_to_chunks [Boolean] 
    # @param data_source_id [Integer] 
    # @param request_id [String] 
    # @param body [SlackSyncRequest] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def sync_slack_with_http_info(filters:, tags: SENTINEL, chunk_size: 1500, chunk_overlap: 20, skip_embedding_generation: false, embedding_model: SENTINEL, generate_sparse_vectors: false, prepend_filename_to_chunks: false, data_source_id: SENTINEL, request_id: SENTINEL, extra: {})
      _body = {}
      _body[:tags] = tags if tags != SENTINEL
      _body[:filters] = filters if filters != SENTINEL
      _body[:chunk_size] = chunk_size if chunk_size != SENTINEL
      _body[:chunk_overlap] = chunk_overlap if chunk_overlap != SENTINEL
      _body[:skip_embedding_generation] = skip_embedding_generation if skip_embedding_generation != SENTINEL
      _body[:embedding_model] = embedding_model if embedding_model != SENTINEL
      _body[:generate_sparse_vectors] = generate_sparse_vectors if generate_sparse_vectors != SENTINEL
      _body[:prepend_filename_to_chunks] = prepend_filename_to_chunks if prepend_filename_to_chunks != SENTINEL
      _body[:data_source_id] = data_source_id if data_source_id != SENTINEL
      _body[:request_id] = request_id if request_id != SENTINEL
      slack_sync_request = _body
      sync_slack_with_http_info_impl(slack_sync_request, extra)
    end

    # Slack Sync
    # You can list all conversations using the endpoint /integrations/slack/conversations. The ID of  conversation will be used as an input for this endpoint with timestamps as optional filters.
    # @param slack_sync_request [SlackSyncRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Object]
    private def sync_slack_impl(slack_sync_request, opts = {})
      data, _status_code, _headers = sync_slack_with_http_info(slack_sync_request, opts)
      data
    end

    # Slack Sync
    # You can list all conversations using the endpoint /integrations/slack/conversations. The ID of  conversation will be used as an input for this endpoint with timestamps as optional filters.
    # @param slack_sync_request [SlackSyncRequest] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is Object, status code, headers and response
    private def sync_slack_with_http_info_impl(slack_sync_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IntegrationsApi.sync_slack ...'
      end
      # verify the required parameter 'slack_sync_request' is set
      if @api_client.config.client_side_validation && slack_sync_request.nil?
        fail ArgumentError, "Missing the required parameter 'slack_sync_request' when calling IntegrationsApi.sync_slack"
      end
      # resource path
      local_var_path = '/integrations/slack/sync'

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

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(slack_sync_request)

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['accessToken', 'apiKey', 'customerId']

      new_options = opts.merge(
        :operation => :"IntegrationsApi.sync_slack",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IntegrationsApi#sync_slack\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end
  end

  # top-level client access to avoid having the user to insantiate their own API instances
  Integrations = IntegrationsApi::new
end
