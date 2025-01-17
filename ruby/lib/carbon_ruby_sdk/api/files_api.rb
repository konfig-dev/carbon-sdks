=begin
#Carbon

#Connect external data to LLMs, no matter the source.

The version of the OpenAPI document: 1.0.0
=end

require 'cgi'

module Carbon
  class FilesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create File Tags
    #
    # A tag is a key-value pair that can be added to a file. This pair can then be used
    # for searches (e.g. embedding searches) in order to narrow down the scope of the search.
    # A file can have any number of tags. The following are reserved keys that cannot be used:
    # - db_embedding_id
    # - organization_id
    # - user_id
    # - organization_user_file_id
    # 
    # Carbon currently supports two data types for tag values - `string` and `list<string>`.
    # Keys can only be `string`. If values other than `string` and `list<string>` are used,
    # they're automatically converted to strings (e.g. 4 will become "4").
    #
    # @param tags [Hash<String, Tags1>] 
    # @param organization_user_file_id [Integer] 
    # @param body [OrganizationUserFileTagCreate] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def create_user_file_tags(tags:, organization_user_file_id:, extra: {})
      _body = {}
      _body[:tags] = tags if tags != SENTINEL
      _body[:organization_user_file_id] = organization_user_file_id if organization_user_file_id != SENTINEL
      organization_user_file_tag_create = _body
      api_response = create_user_file_tags_with_http_info_impl(organization_user_file_tag_create, extra)
      api_response.data
    end

    # Create File Tags
    #
    # A tag is a key-value pair that can be added to a file. This pair can then be used
    # for searches (e.g. embedding searches) in order to narrow down the scope of the search.
    # A file can have any number of tags. The following are reserved keys that cannot be used:
    # - db_embedding_id
    # - organization_id
    # - user_id
    # - organization_user_file_id
    # 
    # Carbon currently supports two data types for tag values - `string` and `list<string>`.
    # Keys can only be `string`. If values other than `string` and `list<string>` are used,
    # they're automatically converted to strings (e.g. 4 will become "4").
    #
    # @param tags [Hash<String, Tags1>] 
    # @param organization_user_file_id [Integer] 
    # @param body [OrganizationUserFileTagCreate] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def create_user_file_tags_with_http_info(tags:, organization_user_file_id:, extra: {})
      _body = {}
      _body[:tags] = tags if tags != SENTINEL
      _body[:organization_user_file_id] = organization_user_file_id if organization_user_file_id != SENTINEL
      organization_user_file_tag_create = _body
      create_user_file_tags_with_http_info_impl(organization_user_file_tag_create, extra)
    end

    # Create File Tags
    # A tag is a key-value pair that can be added to a file. This pair can then be used for searches (e.g. embedding searches) in order to narrow down the scope of the search. A file can have any number of tags. The following are reserved keys that cannot be used: - db_embedding_id - organization_id - user_id - organization_user_file_id  Carbon currently supports two data types for tag values - `string` and `list<string>`. Keys can only be `string`. If values other than `string` and `list<string>` are used, they're automatically converted to strings (e.g. 4 will become \"4\").
    # @param organization_user_file_tag_create [OrganizationUserFileTagCreate] 
    # @param [Hash] opts the optional parameters
    # @return [UserFile]
    private def create_user_file_tags_impl(organization_user_file_tag_create, opts = {})
      data, _status_code, _headers = create_user_file_tags_with_http_info(organization_user_file_tag_create, opts)
      data
    end

    # Create File Tags
    # A tag is a key-value pair that can be added to a file. This pair can then be used for searches (e.g. embedding searches) in order to narrow down the scope of the search. A file can have any number of tags. The following are reserved keys that cannot be used: - db_embedding_id - organization_id - user_id - organization_user_file_id  Carbon currently supports two data types for tag values - &#x60;string&#x60; and &#x60;list&lt;string&gt;&#x60;. Keys can only be &#x60;string&#x60;. If values other than &#x60;string&#x60; and &#x60;list&lt;string&gt;&#x60; are used, they&#39;re automatically converted to strings (e.g. 4 will become \&quot;4\&quot;).
    # @param organization_user_file_tag_create [OrganizationUserFileTagCreate] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is UserFile, status code, headers and response
    private def create_user_file_tags_with_http_info_impl(organization_user_file_tag_create, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FilesApi.create_user_file_tags ...'
      end
      # verify the required parameter 'organization_user_file_tag_create' is set
      if @api_client.config.client_side_validation && organization_user_file_tag_create.nil?
        fail ArgumentError, "Missing the required parameter 'organization_user_file_tag_create' when calling FilesApi.create_user_file_tags"
      end
      # resource path
      local_var_path = '/create_user_file_tags'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(organization_user_file_tag_create)

      # return_type
      return_type = opts[:debug_return_type] || 'UserFile'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['accessToken', 'apiKey', 'customerId']

      new_options = opts.merge(
        :operation => :"FilesApi.create_user_file_tags",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FilesApi#create_user_file_tags\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Delete File Tags
    #
    # @param tags [Array<String>] 
    # @param organization_user_file_id [Integer] 
    # @param body [OrganizationUserFileTagsRemove] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def delete_file_tags(tags:, organization_user_file_id:, extra: {})
      _body = {}
      _body[:tags] = tags if tags != SENTINEL
      _body[:organization_user_file_id] = organization_user_file_id if organization_user_file_id != SENTINEL
      organization_user_file_tags_remove = _body
      api_response = delete_file_tags_with_http_info_impl(organization_user_file_tags_remove, extra)
      api_response.data
    end

    # Delete File Tags
    #
    # @param tags [Array<String>] 
    # @param organization_user_file_id [Integer] 
    # @param body [OrganizationUserFileTagsRemove] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def delete_file_tags_with_http_info(tags:, organization_user_file_id:, extra: {})
      _body = {}
      _body[:tags] = tags if tags != SENTINEL
      _body[:organization_user_file_id] = organization_user_file_id if organization_user_file_id != SENTINEL
      organization_user_file_tags_remove = _body
      delete_file_tags_with_http_info_impl(organization_user_file_tags_remove, extra)
    end

    # Delete File Tags
    # @param organization_user_file_tags_remove [OrganizationUserFileTagsRemove] 
    # @param [Hash] opts the optional parameters
    # @return [UserFile]
    private def delete_file_tags_impl(organization_user_file_tags_remove, opts = {})
      data, _status_code, _headers = delete_file_tags_with_http_info(organization_user_file_tags_remove, opts)
      data
    end

    # Delete File Tags
    # @param organization_user_file_tags_remove [OrganizationUserFileTagsRemove] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is UserFile, status code, headers and response
    private def delete_file_tags_with_http_info_impl(organization_user_file_tags_remove, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FilesApi.delete_file_tags ...'
      end
      # verify the required parameter 'organization_user_file_tags_remove' is set
      if @api_client.config.client_side_validation && organization_user_file_tags_remove.nil?
        fail ArgumentError, "Missing the required parameter 'organization_user_file_tags_remove' when calling FilesApi.delete_file_tags"
      end
      # resource path
      local_var_path = '/delete_user_file_tags'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(organization_user_file_tags_remove)

      # return_type
      return_type = opts[:debug_return_type] || 'UserFile'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['accessToken', 'apiKey', 'customerId']

      new_options = opts.merge(
        :operation => :"FilesApi.delete_file_tags",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FilesApi#delete_file_tags\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Delete Files Endpoint
    #
    # @param file_ids [Array<Integer>] 
    # @param sync_statuses [Array<ExternalFileSyncStatuses>] 
    # @param delete_non_synced_only [Boolean] 
    # @param send_webhook [Boolean] 
    # @param delete_child_files [Boolean] 
    # @param body [DeleteFilesQueryInput] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def delete_many(file_ids: SENTINEL, sync_statuses: SENTINEL, delete_non_synced_only: false, send_webhook: false, delete_child_files: false, extra: {})
      _body = {}
      _body[:file_ids] = file_ids if file_ids != SENTINEL
      _body[:sync_statuses] = sync_statuses if sync_statuses != SENTINEL
      _body[:delete_non_synced_only] = delete_non_synced_only if delete_non_synced_only != SENTINEL
      _body[:send_webhook] = send_webhook if send_webhook != SENTINEL
      _body[:delete_child_files] = delete_child_files if delete_child_files != SENTINEL
      delete_files_query_input = _body
      api_response = delete_many_with_http_info_impl(delete_files_query_input, extra)
      api_response.data
    end

    # Delete Files Endpoint
    #
    # @param file_ids [Array<Integer>] 
    # @param sync_statuses [Array<ExternalFileSyncStatuses>] 
    # @param delete_non_synced_only [Boolean] 
    # @param send_webhook [Boolean] 
    # @param delete_child_files [Boolean] 
    # @param body [DeleteFilesQueryInput] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def delete_many_with_http_info(file_ids: SENTINEL, sync_statuses: SENTINEL, delete_non_synced_only: false, send_webhook: false, delete_child_files: false, extra: {})
      _body = {}
      _body[:file_ids] = file_ids if file_ids != SENTINEL
      _body[:sync_statuses] = sync_statuses if sync_statuses != SENTINEL
      _body[:delete_non_synced_only] = delete_non_synced_only if delete_non_synced_only != SENTINEL
      _body[:send_webhook] = send_webhook if send_webhook != SENTINEL
      _body[:delete_child_files] = delete_child_files if delete_child_files != SENTINEL
      delete_files_query_input = _body
      delete_many_with_http_info_impl(delete_files_query_input, extra)
    end

    # Delete Files Endpoint
    # @param delete_files_query_input [DeleteFilesQueryInput] 
    # @param [Hash] opts the optional parameters
    # @return [GenericSuccessResponse]
    private def delete_many_impl(delete_files_query_input, opts = {})
      data, _status_code, _headers = delete_many_with_http_info(delete_files_query_input, opts)
      data
    end

    # Delete Files Endpoint
    # @param delete_files_query_input [DeleteFilesQueryInput] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is GenericSuccessResponse, status code, headers and response
    private def delete_many_with_http_info_impl(delete_files_query_input, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FilesApi.delete_many ...'
      end
      # verify the required parameter 'delete_files_query_input' is set
      if @api_client.config.client_side_validation && delete_files_query_input.nil?
        fail ArgumentError, "Missing the required parameter 'delete_files_query_input' when calling FilesApi.delete_many"
      end
      # resource path
      local_var_path = '/delete_files'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(delete_files_query_input)

      # return_type
      return_type = opts[:debug_return_type] || 'GenericSuccessResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['accessToken', 'apiKey', 'customerId']

      new_options = opts.merge(
        :operation => :"FilesApi.delete_many",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FilesApi#delete_many\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Delete Files V2 Endpoint
    #
    # @param filters [OrganizationUserFilesToSyncFilters] 
    # @param send_webhook [Boolean] 
    # @param preserve_file_record [Boolean] Whether or not to delete all data related to the file from the database, BUT to preserve the file metadata, allowing for resyncs. By default `preserve_file_record` is false, which means that all data related to the file *as well as* its metadata will be deleted. Note that even if `preserve_file_record` is true, raw files uploaded via the `uploadfile` endpoint still cannot be resynced.
    # @param body [DeleteFilesV2QueryInput] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def delete_v2(filters: SENTINEL, send_webhook: false, preserve_file_record: false, extra: {})
      _body = {}
      _body[:filters] = filters if filters != SENTINEL
      _body[:send_webhook] = send_webhook if send_webhook != SENTINEL
      _body[:preserve_file_record] = preserve_file_record if preserve_file_record != SENTINEL
      delete_files_v2_query_input = _body
      api_response = delete_v2_with_http_info_impl(delete_files_v2_query_input, extra)
      api_response.data
    end

    # Delete Files V2 Endpoint
    #
    # @param filters [OrganizationUserFilesToSyncFilters] 
    # @param send_webhook [Boolean] 
    # @param preserve_file_record [Boolean] Whether or not to delete all data related to the file from the database, BUT to preserve the file metadata, allowing for resyncs. By default `preserve_file_record` is false, which means that all data related to the file *as well as* its metadata will be deleted. Note that even if `preserve_file_record` is true, raw files uploaded via the `uploadfile` endpoint still cannot be resynced.
    # @param body [DeleteFilesV2QueryInput] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def delete_v2_with_http_info(filters: SENTINEL, send_webhook: false, preserve_file_record: false, extra: {})
      _body = {}
      _body[:filters] = filters if filters != SENTINEL
      _body[:send_webhook] = send_webhook if send_webhook != SENTINEL
      _body[:preserve_file_record] = preserve_file_record if preserve_file_record != SENTINEL
      delete_files_v2_query_input = _body
      delete_v2_with_http_info_impl(delete_files_v2_query_input, extra)
    end

    # Delete Files V2 Endpoint
    # @param delete_files_v2_query_input [DeleteFilesV2QueryInput] 
    # @param [Hash] opts the optional parameters
    # @return [GenericSuccessResponse]
    private def delete_v2_impl(delete_files_v2_query_input, opts = {})
      data, _status_code, _headers = delete_v2_with_http_info(delete_files_v2_query_input, opts)
      data
    end

    # Delete Files V2 Endpoint
    # @param delete_files_v2_query_input [DeleteFilesV2QueryInput] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is GenericSuccessResponse, status code, headers and response
    private def delete_v2_with_http_info_impl(delete_files_v2_query_input, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FilesApi.delete_v2 ...'
      end
      # verify the required parameter 'delete_files_v2_query_input' is set
      if @api_client.config.client_side_validation && delete_files_v2_query_input.nil?
        fail ArgumentError, "Missing the required parameter 'delete_files_v2_query_input' when calling FilesApi.delete_v2"
      end
      # resource path
      local_var_path = '/delete_files_v2'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(delete_files_v2_query_input)

      # return_type
      return_type = opts[:debug_return_type] || 'GenericSuccessResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['accessToken', 'apiKey', 'customerId']

      new_options = opts.merge(
        :operation => :"FilesApi.delete_v2",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FilesApi#delete_v2\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Parsed File
    #
    # This route is deprecated. Use `/user_files_v2` instead.
    #
    # @param file_id [Integer] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_parsed_file(file_id:, extra: {})
      api_response = get_parsed_file_with_http_info_impl(file_id, extra)
      api_response.data
    end

    # Parsed File
    #
    # This route is deprecated. Use `/user_files_v2` instead.
    #
    # @param file_id [Integer] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_parsed_file_with_http_info(file_id:, extra: {})
      get_parsed_file_with_http_info_impl(file_id, extra)
    end

    # Parsed File
    # This route is deprecated. Use `/user_files_v2` instead.
    # @param file_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [PresignedURLResponse]
    private def get_parsed_file_impl(file_id, opts = {})
      data, _status_code, _headers = get_parsed_file_with_http_info(file_id, opts)
      data
    end

    # Parsed File
    # This route is deprecated. Use &#x60;/user_files_v2&#x60; instead.
    # @param file_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is PresignedURLResponse, status code, headers and response
    private def get_parsed_file_with_http_info_impl(file_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FilesApi.get_parsed_file ...'
      end
      # verify the required parameter 'file_id' is set
      if @api_client.config.client_side_validation && file_id.nil?
        fail ArgumentError, "Missing the required parameter 'file_id' when calling FilesApi.get_parsed_file"
      end
      # resource path
      local_var_path = '/parsed_file/{file_id}'.sub('{' + 'file_id' + '}', CGI.escape(file_id.to_s))

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
      return_type = opts[:debug_return_type] || 'PresignedURLResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['accessToken', 'apiKey', 'customerId']

      new_options = opts.merge(
        :operation => :"FilesApi.get_parsed_file",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FilesApi#get_parsed_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Raw File
    #
    # This route is deprecated. Use `/user_files_v2` instead.
    #
    # @param file_id [Integer] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_raw_file(file_id:, extra: {})
      api_response = get_raw_file_with_http_info_impl(file_id, extra)
      api_response.data
    end

    # Raw File
    #
    # This route is deprecated. Use `/user_files_v2` instead.
    #
    # @param file_id [Integer] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_raw_file_with_http_info(file_id:, extra: {})
      get_raw_file_with_http_info_impl(file_id, extra)
    end

    # Raw File
    # This route is deprecated. Use `/user_files_v2` instead.
    # @param file_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [PresignedURLResponse]
    private def get_raw_file_impl(file_id, opts = {})
      data, _status_code, _headers = get_raw_file_with_http_info(file_id, opts)
      data
    end

    # Raw File
    # This route is deprecated. Use &#x60;/user_files_v2&#x60; instead.
    # @param file_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is PresignedURLResponse, status code, headers and response
    private def get_raw_file_with_http_info_impl(file_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FilesApi.get_raw_file ...'
      end
      # verify the required parameter 'file_id' is set
      if @api_client.config.client_side_validation && file_id.nil?
        fail ArgumentError, "Missing the required parameter 'file_id' when calling FilesApi.get_raw_file"
      end
      # resource path
      local_var_path = '/raw_file/{file_id}'.sub('{' + 'file_id' + '}', CGI.escape(file_id.to_s))

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
      return_type = opts[:debug_return_type] || 'PresignedURLResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['accessToken', 'apiKey', 'customerId']

      new_options = opts.merge(
        :operation => :"FilesApi.get_raw_file",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FilesApi#get_raw_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Modify Cold Storage Parameters
    #
    # @param filters [OrganizationUserFilesToSyncFilters] 
    # @param enable_cold_storage [Boolean] 
    # @param hot_storage_time_to_live [Integer] 
    # @param body [ModifyColdStorageParametersQueryInput] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def modify_cold_storage_parameters(filters: SENTINEL, enable_cold_storage: SENTINEL, hot_storage_time_to_live: SENTINEL, extra: {})
      _body = {}
      _body[:filters] = filters if filters != SENTINEL
      _body[:enable_cold_storage] = enable_cold_storage if enable_cold_storage != SENTINEL
      _body[:hot_storage_time_to_live] = hot_storage_time_to_live if hot_storage_time_to_live != SENTINEL
      modify_cold_storage_parameters_query_input = _body
      api_response = modify_cold_storage_parameters_with_http_info_impl(modify_cold_storage_parameters_query_input, extra)
      api_response.data
    end

    # Modify Cold Storage Parameters
    #
    # @param filters [OrganizationUserFilesToSyncFilters] 
    # @param enable_cold_storage [Boolean] 
    # @param hot_storage_time_to_live [Integer] 
    # @param body [ModifyColdStorageParametersQueryInput] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def modify_cold_storage_parameters_with_http_info(filters: SENTINEL, enable_cold_storage: SENTINEL, hot_storage_time_to_live: SENTINEL, extra: {})
      _body = {}
      _body[:filters] = filters if filters != SENTINEL
      _body[:enable_cold_storage] = enable_cold_storage if enable_cold_storage != SENTINEL
      _body[:hot_storage_time_to_live] = hot_storage_time_to_live if hot_storage_time_to_live != SENTINEL
      modify_cold_storage_parameters_query_input = _body
      modify_cold_storage_parameters_with_http_info_impl(modify_cold_storage_parameters_query_input, extra)
    end

    # Modify Cold Storage Parameters
    # @param modify_cold_storage_parameters_query_input [ModifyColdStorageParametersQueryInput] 
    # @param [Hash] opts the optional parameters
    # @return [Boolean]
    private def modify_cold_storage_parameters_impl(modify_cold_storage_parameters_query_input, opts = {})
      data, _status_code, _headers = modify_cold_storage_parameters_with_http_info(modify_cold_storage_parameters_query_input, opts)
      data
    end

    # Modify Cold Storage Parameters
    # @param modify_cold_storage_parameters_query_input [ModifyColdStorageParametersQueryInput] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is Boolean, status code, headers and response
    private def modify_cold_storage_parameters_with_http_info_impl(modify_cold_storage_parameters_query_input, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FilesApi.modify_cold_storage_parameters ...'
      end
      # verify the required parameter 'modify_cold_storage_parameters_query_input' is set
      if @api_client.config.client_side_validation && modify_cold_storage_parameters_query_input.nil?
        fail ArgumentError, "Missing the required parameter 'modify_cold_storage_parameters_query_input' when calling FilesApi.modify_cold_storage_parameters"
      end
      # resource path
      local_var_path = '/modify_cold_storage_parameters'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(modify_cold_storage_parameters_query_input)

      # return_type
      return_type = opts[:debug_return_type] || 'Boolean'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['accessToken', 'apiKey', 'customerId']

      new_options = opts.merge(
        :operation => :"FilesApi.modify_cold_storage_parameters",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FilesApi#modify_cold_storage_parameters\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Move To Hot Storage
    #
    # @param filters [OrganizationUserFilesToSyncFilters] 
    # @param body [MoveToHotStorageQueryInput] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def move_to_hot_storage(filters: SENTINEL, extra: {})
      _body = {}
      _body[:filters] = filters if filters != SENTINEL
      move_to_hot_storage_query_input = _body
      api_response = move_to_hot_storage_with_http_info_impl(move_to_hot_storage_query_input, extra)
      api_response.data
    end

    # Move To Hot Storage
    #
    # @param filters [OrganizationUserFilesToSyncFilters] 
    # @param body [MoveToHotStorageQueryInput] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def move_to_hot_storage_with_http_info(filters: SENTINEL, extra: {})
      _body = {}
      _body[:filters] = filters if filters != SENTINEL
      move_to_hot_storage_query_input = _body
      move_to_hot_storage_with_http_info_impl(move_to_hot_storage_query_input, extra)
    end

    # Move To Hot Storage
    # @param move_to_hot_storage_query_input [MoveToHotStorageQueryInput] 
    # @param [Hash] opts the optional parameters
    # @return [Boolean]
    private def move_to_hot_storage_impl(move_to_hot_storage_query_input, opts = {})
      data, _status_code, _headers = move_to_hot_storage_with_http_info(move_to_hot_storage_query_input, opts)
      data
    end

    # Move To Hot Storage
    # @param move_to_hot_storage_query_input [MoveToHotStorageQueryInput] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is Boolean, status code, headers and response
    private def move_to_hot_storage_with_http_info_impl(move_to_hot_storage_query_input, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FilesApi.move_to_hot_storage ...'
      end
      # verify the required parameter 'move_to_hot_storage_query_input' is set
      if @api_client.config.client_side_validation && move_to_hot_storage_query_input.nil?
        fail ArgumentError, "Missing the required parameter 'move_to_hot_storage_query_input' when calling FilesApi.move_to_hot_storage"
      end
      # resource path
      local_var_path = '/move_to_hot_storage'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(move_to_hot_storage_query_input)

      # return_type
      return_type = opts[:debug_return_type] || 'Boolean'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['accessToken', 'apiKey', 'customerId']

      new_options = opts.merge(
        :operation => :"FilesApi.move_to_hot_storage",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FilesApi#move_to_hot_storage\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # User Files V2
    #
    # For pre-filtering documents, using `tags_v2` is preferred to using `tags` (which is now deprecated). If both `tags_v2`
    # and `tags` are specified, `tags` is ignored. `tags_v2` enables
    # building complex filters through the use of "AND", "OR", and negation logic. Take the below input as an example:
    # ```json
    # {
    #     "OR": [
    #         {
    #             "key": "subject",
    #             "value": "holy-bible",
    #             "negate": false
    #         },
    #         {
    #             "key": "person-of-interest",
    #             "value": "jesus christ",
    #             "negate": false
    #         },
    #         {
    #             "key": "genre",
    #             "value": "religion",
    #             "negate": true
    #         }
    #         {
    #             "AND": [
    #                 {
    #                     "key": "subject",
    #                     "value": "tao-te-ching",
    #                     "negate": false
    #                 },
    #                 {
    #                     "key": "author",
    #                     "value": "lao-tzu",
    #                     "negate": false
    #                 }
    #             ]
    #         }
    #     ]
    # }
    # ```
    # In this case, files will be filtered such that:
    # 1. "subject" = "holy-bible" OR
    # 2. "person-of-interest" = "jesus christ" OR
    # 3. "genre" != "religion" OR
    # 4. "subject" = "tao-te-ching" AND "author" = "lao-tzu"
    # 
    # Note that the top level of the query must be either an "OR" or "AND" array. Currently, nesting is limited to 3.
    # For tag blocks (those with "key", "value", and "negate" keys), the following typing rules apply:
    # 1. "key" isn't optional and must be a `string`
    # 2. "value" isn't optional and can be `any` or list[`any`]
    # 3. "negate" is optional and must be `true` or `false`. If present and `true`, then the filter block is negated in
    # the resulting query. It is `false` by default.
    #
    # @param pagination [Pagination] 
    # @param order_by [OrganizationUserFilesToSyncOrderByTypes] 
    # @param order_dir [OrderDir] 
    # @param filters [OrganizationUserFilesToSyncFilters] 
    # @param include_raw_file [Boolean] If true, the query will return presigned URLs for the raw file. Only relevant for the /user_files_v2 endpoint.
    # @param include_parsed_text_file [Boolean] If true, the query will return presigned URLs for the parsed text file. Only relevant for the /user_files_v2 endpoint.
    # @param include_additional_files [Boolean] If true, the query will return presigned URLs for additional files. Only relevant for the /user_files_v2 endpoint.
    # @param presigned_url_expiry_time_seconds [Integer] The expiry time for the presigned URLs. Only relevant for the /user_files_v2 endpoint.
    # @param body [OrganizationUserFilesToSyncQueryInput] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def query_user_files(pagination: SENTINEL, order_by: SENTINEL, order_dir: SENTINEL, filters: SENTINEL, include_raw_file: SENTINEL, include_parsed_text_file: SENTINEL, include_additional_files: SENTINEL, presigned_url_expiry_time_seconds: 3600, extra: {})
      _body = {}
      _body[:pagination] = pagination if pagination != SENTINEL
      _body[:order_by] = order_by if order_by != SENTINEL
      _body[:order_dir] = order_dir if order_dir != SENTINEL
      _body[:filters] = filters if filters != SENTINEL
      _body[:include_raw_file] = include_raw_file if include_raw_file != SENTINEL
      _body[:include_parsed_text_file] = include_parsed_text_file if include_parsed_text_file != SENTINEL
      _body[:include_additional_files] = include_additional_files if include_additional_files != SENTINEL
      _body[:presigned_url_expiry_time_seconds] = presigned_url_expiry_time_seconds if presigned_url_expiry_time_seconds != SENTINEL
      organization_user_files_to_sync_query_input = _body
      api_response = query_user_files_with_http_info_impl(organization_user_files_to_sync_query_input, extra)
      api_response.data
    end

    # User Files V2
    #
    # For pre-filtering documents, using `tags_v2` is preferred to using `tags` (which is now deprecated). If both `tags_v2`
    # and `tags` are specified, `tags` is ignored. `tags_v2` enables
    # building complex filters through the use of "AND", "OR", and negation logic. Take the below input as an example:
    # ```json
    # {
    #     "OR": [
    #         {
    #             "key": "subject",
    #             "value": "holy-bible",
    #             "negate": false
    #         },
    #         {
    #             "key": "person-of-interest",
    #             "value": "jesus christ",
    #             "negate": false
    #         },
    #         {
    #             "key": "genre",
    #             "value": "religion",
    #             "negate": true
    #         }
    #         {
    #             "AND": [
    #                 {
    #                     "key": "subject",
    #                     "value": "tao-te-ching",
    #                     "negate": false
    #                 },
    #                 {
    #                     "key": "author",
    #                     "value": "lao-tzu",
    #                     "negate": false
    #                 }
    #             ]
    #         }
    #     ]
    # }
    # ```
    # In this case, files will be filtered such that:
    # 1. "subject" = "holy-bible" OR
    # 2. "person-of-interest" = "jesus christ" OR
    # 3. "genre" != "religion" OR
    # 4. "subject" = "tao-te-ching" AND "author" = "lao-tzu"
    # 
    # Note that the top level of the query must be either an "OR" or "AND" array. Currently, nesting is limited to 3.
    # For tag blocks (those with "key", "value", and "negate" keys), the following typing rules apply:
    # 1. "key" isn't optional and must be a `string`
    # 2. "value" isn't optional and can be `any` or list[`any`]
    # 3. "negate" is optional and must be `true` or `false`. If present and `true`, then the filter block is negated in
    # the resulting query. It is `false` by default.
    #
    # @param pagination [Pagination] 
    # @param order_by [OrganizationUserFilesToSyncOrderByTypes] 
    # @param order_dir [OrderDir] 
    # @param filters [OrganizationUserFilesToSyncFilters] 
    # @param include_raw_file [Boolean] If true, the query will return presigned URLs for the raw file. Only relevant for the /user_files_v2 endpoint.
    # @param include_parsed_text_file [Boolean] If true, the query will return presigned URLs for the parsed text file. Only relevant for the /user_files_v2 endpoint.
    # @param include_additional_files [Boolean] If true, the query will return presigned URLs for additional files. Only relevant for the /user_files_v2 endpoint.
    # @param presigned_url_expiry_time_seconds [Integer] The expiry time for the presigned URLs. Only relevant for the /user_files_v2 endpoint.
    # @param body [OrganizationUserFilesToSyncQueryInput] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def query_user_files_with_http_info(pagination: SENTINEL, order_by: SENTINEL, order_dir: SENTINEL, filters: SENTINEL, include_raw_file: SENTINEL, include_parsed_text_file: SENTINEL, include_additional_files: SENTINEL, presigned_url_expiry_time_seconds: 3600, extra: {})
      _body = {}
      _body[:pagination] = pagination if pagination != SENTINEL
      _body[:order_by] = order_by if order_by != SENTINEL
      _body[:order_dir] = order_dir if order_dir != SENTINEL
      _body[:filters] = filters if filters != SENTINEL
      _body[:include_raw_file] = include_raw_file if include_raw_file != SENTINEL
      _body[:include_parsed_text_file] = include_parsed_text_file if include_parsed_text_file != SENTINEL
      _body[:include_additional_files] = include_additional_files if include_additional_files != SENTINEL
      _body[:presigned_url_expiry_time_seconds] = presigned_url_expiry_time_seconds if presigned_url_expiry_time_seconds != SENTINEL
      organization_user_files_to_sync_query_input = _body
      query_user_files_with_http_info_impl(organization_user_files_to_sync_query_input, extra)
    end

    # User Files V2
    # For pre-filtering documents, using `tags_v2` is preferred to using `tags` (which is now deprecated). If both `tags_v2` and `tags` are specified, `tags` is ignored. `tags_v2` enables building complex filters through the use of \"AND\", \"OR\", and negation logic. Take the below input as an example: ```json {     \"OR\": [         {             \"key\": \"subject\",             \"value\": \"holy-bible\",             \"negate\": false         },         {             \"key\": \"person-of-interest\",             \"value\": \"jesus christ\",             \"negate\": false         },         {             \"key\": \"genre\",             \"value\": \"religion\",             \"negate\": true         }         {             \"AND\": [                 {                     \"key\": \"subject\",                     \"value\": \"tao-te-ching\",                     \"negate\": false                 },                 {                     \"key\": \"author\",                     \"value\": \"lao-tzu\",                     \"negate\": false                 }             ]         }     ] } ``` In this case, files will be filtered such that: 1. \"subject\" = \"holy-bible\" OR 2. \"person-of-interest\" = \"jesus christ\" OR 3. \"genre\" != \"religion\" OR 4. \"subject\" = \"tao-te-ching\" AND \"author\" = \"lao-tzu\"  Note that the top level of the query must be either an \"OR\" or \"AND\" array. Currently, nesting is limited to 3. For tag blocks (those with \"key\", \"value\", and \"negate\" keys), the following typing rules apply: 1. \"key\" isn't optional and must be a `string` 2. \"value\" isn't optional and can be `any` or list[`any`] 3. \"negate\" is optional and must be `true` or `false`. If present and `true`, then the filter block is negated in the resulting query. It is `false` by default.
    # @param organization_user_files_to_sync_query_input [OrganizationUserFilesToSyncQueryInput] 
    # @param [Hash] opts the optional parameters
    # @return [UserFilesV2]
    private def query_user_files_impl(organization_user_files_to_sync_query_input, opts = {})
      data, _status_code, _headers = query_user_files_with_http_info(organization_user_files_to_sync_query_input, opts)
      data
    end

    # User Files V2
    # For pre-filtering documents, using &#x60;tags_v2&#x60; is preferred to using &#x60;tags&#x60; (which is now deprecated). If both &#x60;tags_v2&#x60; and &#x60;tags&#x60; are specified, &#x60;tags&#x60; is ignored. &#x60;tags_v2&#x60; enables building complex filters through the use of \&quot;AND\&quot;, \&quot;OR\&quot;, and negation logic. Take the below input as an example: &#x60;&#x60;&#x60;json {     \&quot;OR\&quot;: [         {             \&quot;key\&quot;: \&quot;subject\&quot;,             \&quot;value\&quot;: \&quot;holy-bible\&quot;,             \&quot;negate\&quot;: false         },         {             \&quot;key\&quot;: \&quot;person-of-interest\&quot;,             \&quot;value\&quot;: \&quot;jesus christ\&quot;,             \&quot;negate\&quot;: false         },         {             \&quot;key\&quot;: \&quot;genre\&quot;,             \&quot;value\&quot;: \&quot;religion\&quot;,             \&quot;negate\&quot;: true         }         {             \&quot;AND\&quot;: [                 {                     \&quot;key\&quot;: \&quot;subject\&quot;,                     \&quot;value\&quot;: \&quot;tao-te-ching\&quot;,                     \&quot;negate\&quot;: false                 },                 {                     \&quot;key\&quot;: \&quot;author\&quot;,                     \&quot;value\&quot;: \&quot;lao-tzu\&quot;,                     \&quot;negate\&quot;: false                 }             ]         }     ] } &#x60;&#x60;&#x60; In this case, files will be filtered such that: 1. \&quot;subject\&quot; &#x3D; \&quot;holy-bible\&quot; OR 2. \&quot;person-of-interest\&quot; &#x3D; \&quot;jesus christ\&quot; OR 3. \&quot;genre\&quot; !&#x3D; \&quot;religion\&quot; OR 4. \&quot;subject\&quot; &#x3D; \&quot;tao-te-ching\&quot; AND \&quot;author\&quot; &#x3D; \&quot;lao-tzu\&quot;  Note that the top level of the query must be either an \&quot;OR\&quot; or \&quot;AND\&quot; array. Currently, nesting is limited to 3. For tag blocks (those with \&quot;key\&quot;, \&quot;value\&quot;, and \&quot;negate\&quot; keys), the following typing rules apply: 1. \&quot;key\&quot; isn&#39;t optional and must be a &#x60;string&#x60; 2. \&quot;value\&quot; isn&#39;t optional and can be &#x60;any&#x60; or list[&#x60;any&#x60;] 3. \&quot;negate\&quot; is optional and must be &#x60;true&#x60; or &#x60;false&#x60;. If present and &#x60;true&#x60;, then the filter block is negated in the resulting query. It is &#x60;false&#x60; by default.
    # @param organization_user_files_to_sync_query_input [OrganizationUserFilesToSyncQueryInput] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is UserFilesV2, status code, headers and response
    private def query_user_files_with_http_info_impl(organization_user_files_to_sync_query_input, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FilesApi.query_user_files ...'
      end
      # verify the required parameter 'organization_user_files_to_sync_query_input' is set
      if @api_client.config.client_side_validation && organization_user_files_to_sync_query_input.nil?
        fail ArgumentError, "Missing the required parameter 'organization_user_files_to_sync_query_input' when calling FilesApi.query_user_files"
      end
      # resource path
      local_var_path = '/user_files_v2'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(organization_user_files_to_sync_query_input)

      # return_type
      return_type = opts[:debug_return_type] || 'UserFilesV2'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['accessToken', 'apiKey', 'customerId']

      new_options = opts.merge(
        :operation => :"FilesApi.query_user_files",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FilesApi#query_user_files\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # User Files
    #
    # This route is deprecated. Use `/user_files_v2` instead.
    #
    # @param pagination [Pagination] 
    # @param order_by [OrganizationUserFilesToSyncOrderByTypes] 
    # @param order_dir [OrderDir] 
    # @param filters [OrganizationUserFilesToSyncFilters] 
    # @param include_raw_file [Boolean] If true, the query will return presigned URLs for the raw file. Only relevant for the /user_files_v2 endpoint.
    # @param include_parsed_text_file [Boolean] If true, the query will return presigned URLs for the parsed text file. Only relevant for the /user_files_v2 endpoint.
    # @param include_additional_files [Boolean] If true, the query will return presigned URLs for additional files. Only relevant for the /user_files_v2 endpoint.
    # @param presigned_url_expiry_time_seconds [Integer] The expiry time for the presigned URLs. Only relevant for the /user_files_v2 endpoint.
    # @param body [OrganizationUserFilesToSyncQueryInput] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def query_user_files_deprecated(pagination: SENTINEL, order_by: SENTINEL, order_dir: SENTINEL, filters: SENTINEL, include_raw_file: SENTINEL, include_parsed_text_file: SENTINEL, include_additional_files: SENTINEL, presigned_url_expiry_time_seconds: 3600, extra: {})
      _body = {}
      _body[:pagination] = pagination if pagination != SENTINEL
      _body[:order_by] = order_by if order_by != SENTINEL
      _body[:order_dir] = order_dir if order_dir != SENTINEL
      _body[:filters] = filters if filters != SENTINEL
      _body[:include_raw_file] = include_raw_file if include_raw_file != SENTINEL
      _body[:include_parsed_text_file] = include_parsed_text_file if include_parsed_text_file != SENTINEL
      _body[:include_additional_files] = include_additional_files if include_additional_files != SENTINEL
      _body[:presigned_url_expiry_time_seconds] = presigned_url_expiry_time_seconds if presigned_url_expiry_time_seconds != SENTINEL
      organization_user_files_to_sync_query_input = _body
      api_response = query_user_files_deprecated_with_http_info_impl(organization_user_files_to_sync_query_input, extra)
      api_response.data
    end

    # User Files
    #
    # This route is deprecated. Use `/user_files_v2` instead.
    #
    # @param pagination [Pagination] 
    # @param order_by [OrganizationUserFilesToSyncOrderByTypes] 
    # @param order_dir [OrderDir] 
    # @param filters [OrganizationUserFilesToSyncFilters] 
    # @param include_raw_file [Boolean] If true, the query will return presigned URLs for the raw file. Only relevant for the /user_files_v2 endpoint.
    # @param include_parsed_text_file [Boolean] If true, the query will return presigned URLs for the parsed text file. Only relevant for the /user_files_v2 endpoint.
    # @param include_additional_files [Boolean] If true, the query will return presigned URLs for additional files. Only relevant for the /user_files_v2 endpoint.
    # @param presigned_url_expiry_time_seconds [Integer] The expiry time for the presigned URLs. Only relevant for the /user_files_v2 endpoint.
    # @param body [OrganizationUserFilesToSyncQueryInput] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def query_user_files_deprecated_with_http_info(pagination: SENTINEL, order_by: SENTINEL, order_dir: SENTINEL, filters: SENTINEL, include_raw_file: SENTINEL, include_parsed_text_file: SENTINEL, include_additional_files: SENTINEL, presigned_url_expiry_time_seconds: 3600, extra: {})
      _body = {}
      _body[:pagination] = pagination if pagination != SENTINEL
      _body[:order_by] = order_by if order_by != SENTINEL
      _body[:order_dir] = order_dir if order_dir != SENTINEL
      _body[:filters] = filters if filters != SENTINEL
      _body[:include_raw_file] = include_raw_file if include_raw_file != SENTINEL
      _body[:include_parsed_text_file] = include_parsed_text_file if include_parsed_text_file != SENTINEL
      _body[:include_additional_files] = include_additional_files if include_additional_files != SENTINEL
      _body[:presigned_url_expiry_time_seconds] = presigned_url_expiry_time_seconds if presigned_url_expiry_time_seconds != SENTINEL
      organization_user_files_to_sync_query_input = _body
      query_user_files_deprecated_with_http_info_impl(organization_user_files_to_sync_query_input, extra)
    end

    # User Files
    # This route is deprecated. Use `/user_files_v2` instead.
    # @param organization_user_files_to_sync_query_input [OrganizationUserFilesToSyncQueryInput] 
    # @param [Hash] opts the optional parameters
    # @return [Array<UserFile>]
    private def query_user_files_deprecated_impl(organization_user_files_to_sync_query_input, opts = {})
      data, _status_code, _headers = query_user_files_deprecated_with_http_info(organization_user_files_to_sync_query_input, opts)
      data
    end

    # User Files
    # This route is deprecated. Use &#x60;/user_files_v2&#x60; instead.
    # @param organization_user_files_to_sync_query_input [OrganizationUserFilesToSyncQueryInput] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is Array<UserFile>, status code, headers and response
    private def query_user_files_deprecated_with_http_info_impl(organization_user_files_to_sync_query_input, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FilesApi.query_user_files_deprecated ...'
      end
      # verify the required parameter 'organization_user_files_to_sync_query_input' is set
      if @api_client.config.client_side_validation && organization_user_files_to_sync_query_input.nil?
        fail ArgumentError, "Missing the required parameter 'organization_user_files_to_sync_query_input' when calling FilesApi.query_user_files_deprecated"
      end
      # resource path
      local_var_path = '/user_files'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(organization_user_files_to_sync_query_input)

      # return_type
      return_type = opts[:debug_return_type] || 'Array<UserFile>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['accessToken', 'apiKey', 'customerId']

      new_options = opts.merge(
        :operation => :"FilesApi.query_user_files_deprecated",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FilesApi#query_user_files_deprecated\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Resync File
    #
    # @param file_id [Integer] 
    # @param chunk_size [Integer] 
    # @param chunk_overlap [Integer] 
    # @param force_embedding_generation [Boolean] 
    # @param skip_file_processing [Boolean] 
    # @param body [ResyncFileQueryInput] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def resync(file_id:, chunk_size: SENTINEL, chunk_overlap: SENTINEL, force_embedding_generation: false, skip_file_processing: false, extra: {})
      _body = {}
      _body[:file_id] = file_id if file_id != SENTINEL
      _body[:chunk_size] = chunk_size if chunk_size != SENTINEL
      _body[:chunk_overlap] = chunk_overlap if chunk_overlap != SENTINEL
      _body[:force_embedding_generation] = force_embedding_generation if force_embedding_generation != SENTINEL
      _body[:skip_file_processing] = skip_file_processing if skip_file_processing != SENTINEL
      resync_file_query_input = _body
      api_response = resync_with_http_info_impl(resync_file_query_input, extra)
      api_response.data
    end

    # Resync File
    #
    # @param file_id [Integer] 
    # @param chunk_size [Integer] 
    # @param chunk_overlap [Integer] 
    # @param force_embedding_generation [Boolean] 
    # @param skip_file_processing [Boolean] 
    # @param body [ResyncFileQueryInput] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def resync_with_http_info(file_id:, chunk_size: SENTINEL, chunk_overlap: SENTINEL, force_embedding_generation: false, skip_file_processing: false, extra: {})
      _body = {}
      _body[:file_id] = file_id if file_id != SENTINEL
      _body[:chunk_size] = chunk_size if chunk_size != SENTINEL
      _body[:chunk_overlap] = chunk_overlap if chunk_overlap != SENTINEL
      _body[:force_embedding_generation] = force_embedding_generation if force_embedding_generation != SENTINEL
      _body[:skip_file_processing] = skip_file_processing if skip_file_processing != SENTINEL
      resync_file_query_input = _body
      resync_with_http_info_impl(resync_file_query_input, extra)
    end

    # Resync File
    # @param resync_file_query_input [ResyncFileQueryInput] 
    # @param [Hash] opts the optional parameters
    # @return [UserFile]
    private def resync_impl(resync_file_query_input, opts = {})
      data, _status_code, _headers = resync_with_http_info(resync_file_query_input, opts)
      data
    end

    # Resync File
    # @param resync_file_query_input [ResyncFileQueryInput] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is UserFile, status code, headers and response
    private def resync_with_http_info_impl(resync_file_query_input, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FilesApi.resync ...'
      end
      # verify the required parameter 'resync_file_query_input' is set
      if @api_client.config.client_side_validation && resync_file_query_input.nil?
        fail ArgumentError, "Missing the required parameter 'resync_file_query_input' when calling FilesApi.resync"
      end
      # resource path
      local_var_path = '/resync_file'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(resync_file_query_input)

      # return_type
      return_type = opts[:debug_return_type] || 'UserFile'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['accessToken', 'apiKey', 'customerId']

      new_options = opts.merge(
        :operation => :"FilesApi.resync",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FilesApi#resync\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Create Upload File
    #
    # This endpoint is used to directly upload local files to Carbon. The `POST` request should be a multipart form request.
    # Note that the `set_page_as_boundary` query parameter is applicable only to PDFs for now. When this value is set,
    # PDF chunks are at most one page long. Additional information can be retrieved for each chunk, however, namely the coordinates
    # of the bounding box around the chunk (this can be used for things like text highlighting). Following is a description
    # of all possible query parameters:
    # - `chunk_size`: the chunk size (in tokens) applied when splitting the document
    # - `chunk_overlap`: the chunk overlap (in tokens) applied when splitting the document
    # - `skip_embedding_generation`: whether or not to skip the generation of chunks and embeddings
    # - `set_page_as_boundary`: described above
    # - `embedding_model`: the model used to generate embeddings for the document chunks
    # - `use_ocr`: whether or not to use OCR as a preprocessing step prior to generating chunks. Valid for PDFs, JPEGs, and PNGs
    # - `generate_sparse_vectors`: whether or not to generate sparse vectors for the file. Required for hybrid search.
    # - `prepend_filename_to_chunks`: whether or not to prepend the filename to the chunk text
    # 
    # 
    # Carbon supports multiple models for use in generating embeddings for files. For images, we support Vertex AI's
    # multimodal model; for text, we support OpenAI's `text-embedding-ada-002` and Cohere's embed-multilingual-v3.0.
    # The model can be specified via the `embedding_model` parameter (in the POST body for `/embeddings`, and a query 
    # parameter in `/uploadfile`). If no model is supplied, the `text-embedding-ada-002` is used by default. When performing
    # embedding queries, embeddings from files that used the specified model will be considered in the query.
    # For example, if files A and B have embeddings generated with `OPENAI`, and files C and D have embeddings generated with
    # `COHERE_MULTILINGUAL_V3`, then by default, queries will only consider files A and B. If `COHERE_MULTILINGUAL_V3` is
    # specified as the `embedding_model` in `/embeddings`, then only files C and D will be considered. Make sure that
    # the set of all files you want considered for a query have embeddings generated via the same model. For now, **do not**
    # set `VERTEX_MULTIMODAL` as an `embedding_model`. This model is used automatically by Carbon when it detects an image file.
    #
    # @param file [File] 
    # @param chunk_size [Integer] Chunk size in tiktoken tokens to be used when processing file.
    # @param chunk_overlap [Integer] Chunk overlap in tiktoken tokens to be used when processing file.
    # @param skip_embedding_generation [Boolean] Flag to control whether or not embeddings should be generated and stored when processing file.
    # @param set_page_as_boundary [Boolean] Flag to control whether or not to set the a page's worth of content as the maximum amount of content that can appear in a chunk. Only valid for PDFs. See description route description for more information.
    # @param embedding_model [EmbeddingModel] Embedding model that will be used to embed file chunks.
    # @param use_ocr [Boolean] Whether or not to use OCR when processing files. Valid for PDFs, JPEGs, and PNGs. Useful for documents with tables, images, and/or scanned text.
    # @param generate_sparse_vectors [Boolean] Whether or not to generate sparse vectors for the file. This is *required* for the file to be a candidate for hybrid search.
    # @param prepend_filename_to_chunks [Boolean] Whether or not to prepend the file's name to chunks.
    # @param max_items_per_chunk [Integer] Number of objects per chunk. For csv, tsv, xlsx, and json files only.
    # @param parse_pdf_tables_with_ocr [Boolean] Whether to use rich table parsing when `use_ocr` is enabled.
    # @param detect_audio_language [Boolean] Whether to automatically detect the language of the uploaded audio file.
    # @param transcription_service [TranscriptionServiceNullable] The transcription service to use for audio files. If no service is specified, 'deepgram' will be used.
    # @param include_speaker_labels [Boolean] Detect multiple speakers and label segments of speech by speaker for audio files.
    # @param media_type [FileContentTypesNullable] The media type of the file. If not provided, it will be inferred from the file extension.
    # @param split_rows [Boolean] Whether to split tabular rows into chunks. Currently only valid for CSV, TSV, and XLSX files.
    # @param enable_cold_storage [Boolean] Enable cold storage for the file. If set to true, the file will be moved to cold storage after a certain period of inactivity. Default is false.
    # @param hot_storage_time_to_live [Integer] Time in days after which the file will be moved to cold storage. Must be one of [1, 3, 7, 14, 30].
    # @param generate_chunks_only [Boolean] If this flag is enabled, the file will be chunked and stored with Carbon, but no embeddings will be generated. This overrides the skip_embedding_generation flag.
    # @param store_file_only [Boolean] If this flag is enabled, the file will be stored with Carbon, but no processing will be done.
    # @param body [BodyCreateUploadFileUploadfilePost] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def upload(file:, chunk_size: SENTINEL, chunk_overlap: SENTINEL, skip_embedding_generation: false, set_page_as_boundary: false, embedding_model: 'OPENAI', use_ocr: false, generate_sparse_vectors: false, prepend_filename_to_chunks: false, max_items_per_chunk: SENTINEL, parse_pdf_tables_with_ocr: false, detect_audio_language: false, transcription_service: SENTINEL, include_speaker_labels: false, media_type: SENTINEL, split_rows: false, enable_cold_storage: false, hot_storage_time_to_live: SENTINEL, generate_chunks_only: false, store_file_only: false, extra: {})
      _body = {}
      _body[:file] = file if file != SENTINEL
      body_create_upload_file_uploadfile_post = _body
      extra[:chunk_size] = chunk_size if chunk_size != SENTINEL
      extra[:chunk_overlap] = chunk_overlap if chunk_overlap != SENTINEL
      extra[:skip_embedding_generation] = skip_embedding_generation if skip_embedding_generation != SENTINEL
      extra[:set_page_as_boundary] = set_page_as_boundary if set_page_as_boundary != SENTINEL
      extra[:embedding_model] = embedding_model if embedding_model != SENTINEL
      extra[:use_ocr] = use_ocr if use_ocr != SENTINEL
      extra[:generate_sparse_vectors] = generate_sparse_vectors if generate_sparse_vectors != SENTINEL
      extra[:prepend_filename_to_chunks] = prepend_filename_to_chunks if prepend_filename_to_chunks != SENTINEL
      extra[:max_items_per_chunk] = max_items_per_chunk if max_items_per_chunk != SENTINEL
      extra[:parse_pdf_tables_with_ocr] = parse_pdf_tables_with_ocr if parse_pdf_tables_with_ocr != SENTINEL
      extra[:detect_audio_language] = detect_audio_language if detect_audio_language != SENTINEL
      extra[:transcription_service] = transcription_service if transcription_service != SENTINEL
      extra[:include_speaker_labels] = include_speaker_labels if include_speaker_labels != SENTINEL
      extra[:media_type] = media_type if media_type != SENTINEL
      extra[:split_rows] = split_rows if split_rows != SENTINEL
      extra[:enable_cold_storage] = enable_cold_storage if enable_cold_storage != SENTINEL
      extra[:hot_storage_time_to_live] = hot_storage_time_to_live if hot_storage_time_to_live != SENTINEL
      extra[:generate_chunks_only] = generate_chunks_only if generate_chunks_only != SENTINEL
      extra[:store_file_only] = store_file_only if store_file_only != SENTINEL
      api_response = upload_with_http_info_impl(file, body_create_upload_file_uploadfile_post, extra)
      api_response.data
    end

    # Create Upload File
    #
    # This endpoint is used to directly upload local files to Carbon. The `POST` request should be a multipart form request.
    # Note that the `set_page_as_boundary` query parameter is applicable only to PDFs for now. When this value is set,
    # PDF chunks are at most one page long. Additional information can be retrieved for each chunk, however, namely the coordinates
    # of the bounding box around the chunk (this can be used for things like text highlighting). Following is a description
    # of all possible query parameters:
    # - `chunk_size`: the chunk size (in tokens) applied when splitting the document
    # - `chunk_overlap`: the chunk overlap (in tokens) applied when splitting the document
    # - `skip_embedding_generation`: whether or not to skip the generation of chunks and embeddings
    # - `set_page_as_boundary`: described above
    # - `embedding_model`: the model used to generate embeddings for the document chunks
    # - `use_ocr`: whether or not to use OCR as a preprocessing step prior to generating chunks. Valid for PDFs, JPEGs, and PNGs
    # - `generate_sparse_vectors`: whether or not to generate sparse vectors for the file. Required for hybrid search.
    # - `prepend_filename_to_chunks`: whether or not to prepend the filename to the chunk text
    # 
    # 
    # Carbon supports multiple models for use in generating embeddings for files. For images, we support Vertex AI's
    # multimodal model; for text, we support OpenAI's `text-embedding-ada-002` and Cohere's embed-multilingual-v3.0.
    # The model can be specified via the `embedding_model` parameter (in the POST body for `/embeddings`, and a query 
    # parameter in `/uploadfile`). If no model is supplied, the `text-embedding-ada-002` is used by default. When performing
    # embedding queries, embeddings from files that used the specified model will be considered in the query.
    # For example, if files A and B have embeddings generated with `OPENAI`, and files C and D have embeddings generated with
    # `COHERE_MULTILINGUAL_V3`, then by default, queries will only consider files A and B. If `COHERE_MULTILINGUAL_V3` is
    # specified as the `embedding_model` in `/embeddings`, then only files C and D will be considered. Make sure that
    # the set of all files you want considered for a query have embeddings generated via the same model. For now, **do not**
    # set `VERTEX_MULTIMODAL` as an `embedding_model`. This model is used automatically by Carbon when it detects an image file.
    #
    # @param file [File] 
    # @param chunk_size [Integer] Chunk size in tiktoken tokens to be used when processing file.
    # @param chunk_overlap [Integer] Chunk overlap in tiktoken tokens to be used when processing file.
    # @param skip_embedding_generation [Boolean] Flag to control whether or not embeddings should be generated and stored when processing file.
    # @param set_page_as_boundary [Boolean] Flag to control whether or not to set the a page's worth of content as the maximum amount of content that can appear in a chunk. Only valid for PDFs. See description route description for more information.
    # @param embedding_model [EmbeddingModel] Embedding model that will be used to embed file chunks.
    # @param use_ocr [Boolean] Whether or not to use OCR when processing files. Valid for PDFs, JPEGs, and PNGs. Useful for documents with tables, images, and/or scanned text.
    # @param generate_sparse_vectors [Boolean] Whether or not to generate sparse vectors for the file. This is *required* for the file to be a candidate for hybrid search.
    # @param prepend_filename_to_chunks [Boolean] Whether or not to prepend the file's name to chunks.
    # @param max_items_per_chunk [Integer] Number of objects per chunk. For csv, tsv, xlsx, and json files only.
    # @param parse_pdf_tables_with_ocr [Boolean] Whether to use rich table parsing when `use_ocr` is enabled.
    # @param detect_audio_language [Boolean] Whether to automatically detect the language of the uploaded audio file.
    # @param transcription_service [TranscriptionServiceNullable] The transcription service to use for audio files. If no service is specified, 'deepgram' will be used.
    # @param include_speaker_labels [Boolean] Detect multiple speakers and label segments of speech by speaker for audio files.
    # @param media_type [FileContentTypesNullable] The media type of the file. If not provided, it will be inferred from the file extension.
    # @param split_rows [Boolean] Whether to split tabular rows into chunks. Currently only valid for CSV, TSV, and XLSX files.
    # @param enable_cold_storage [Boolean] Enable cold storage for the file. If set to true, the file will be moved to cold storage after a certain period of inactivity. Default is false.
    # @param hot_storage_time_to_live [Integer] Time in days after which the file will be moved to cold storage. Must be one of [1, 3, 7, 14, 30].
    # @param generate_chunks_only [Boolean] If this flag is enabled, the file will be chunked and stored with Carbon, but no embeddings will be generated. This overrides the skip_embedding_generation flag.
    # @param store_file_only [Boolean] If this flag is enabled, the file will be stored with Carbon, but no processing will be done.
    # @param body [BodyCreateUploadFileUploadfilePost] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def upload_with_http_info(file:, chunk_size: SENTINEL, chunk_overlap: SENTINEL, skip_embedding_generation: false, set_page_as_boundary: false, embedding_model: 'OPENAI', use_ocr: false, generate_sparse_vectors: false, prepend_filename_to_chunks: false, max_items_per_chunk: SENTINEL, parse_pdf_tables_with_ocr: false, detect_audio_language: false, transcription_service: SENTINEL, include_speaker_labels: false, media_type: SENTINEL, split_rows: false, enable_cold_storage: false, hot_storage_time_to_live: SENTINEL, generate_chunks_only: false, store_file_only: false, extra: {})
      _body = {}
      _body[:file] = file if file != SENTINEL
      body_create_upload_file_uploadfile_post = _body
      extra[:chunk_size] = chunk_size if chunk_size != SENTINEL
      extra[:chunk_overlap] = chunk_overlap if chunk_overlap != SENTINEL
      extra[:skip_embedding_generation] = skip_embedding_generation if skip_embedding_generation != SENTINEL
      extra[:set_page_as_boundary] = set_page_as_boundary if set_page_as_boundary != SENTINEL
      extra[:embedding_model] = embedding_model if embedding_model != SENTINEL
      extra[:use_ocr] = use_ocr if use_ocr != SENTINEL
      extra[:generate_sparse_vectors] = generate_sparse_vectors if generate_sparse_vectors != SENTINEL
      extra[:prepend_filename_to_chunks] = prepend_filename_to_chunks if prepend_filename_to_chunks != SENTINEL
      extra[:max_items_per_chunk] = max_items_per_chunk if max_items_per_chunk != SENTINEL
      extra[:parse_pdf_tables_with_ocr] = parse_pdf_tables_with_ocr if parse_pdf_tables_with_ocr != SENTINEL
      extra[:detect_audio_language] = detect_audio_language if detect_audio_language != SENTINEL
      extra[:transcription_service] = transcription_service if transcription_service != SENTINEL
      extra[:include_speaker_labels] = include_speaker_labels if include_speaker_labels != SENTINEL
      extra[:media_type] = media_type if media_type != SENTINEL
      extra[:split_rows] = split_rows if split_rows != SENTINEL
      extra[:enable_cold_storage] = enable_cold_storage if enable_cold_storage != SENTINEL
      extra[:hot_storage_time_to_live] = hot_storage_time_to_live if hot_storage_time_to_live != SENTINEL
      extra[:generate_chunks_only] = generate_chunks_only if generate_chunks_only != SENTINEL
      extra[:store_file_only] = store_file_only if store_file_only != SENTINEL
      upload_with_http_info_impl(file, body_create_upload_file_uploadfile_post, extra)
    end

    # Create Upload File
    # This endpoint is used to directly upload local files to Carbon. The `POST` request should be a multipart form request. Note that the `set_page_as_boundary` query parameter is applicable only to PDFs for now. When this value is set, PDF chunks are at most one page long. Additional information can be retrieved for each chunk, however, namely the coordinates of the bounding box around the chunk (this can be used for things like text highlighting). Following is a description of all possible query parameters: - `chunk_size`: the chunk size (in tokens) applied when splitting the document - `chunk_overlap`: the chunk overlap (in tokens) applied when splitting the document - `skip_embedding_generation`: whether or not to skip the generation of chunks and embeddings - `set_page_as_boundary`: described above - `embedding_model`: the model used to generate embeddings for the document chunks - `use_ocr`: whether or not to use OCR as a preprocessing step prior to generating chunks. Valid for PDFs, JPEGs, and PNGs - `generate_sparse_vectors`: whether or not to generate sparse vectors for the file. Required for hybrid search. - `prepend_filename_to_chunks`: whether or not to prepend the filename to the chunk text   Carbon supports multiple models for use in generating embeddings for files. For images, we support Vertex AI's multimodal model; for text, we support OpenAI's `text-embedding-ada-002` and Cohere's embed-multilingual-v3.0. The model can be specified via the `embedding_model` parameter (in the POST body for `/embeddings`, and a query  parameter in `/uploadfile`). If no model is supplied, the `text-embedding-ada-002` is used by default. When performing embedding queries, embeddings from files that used the specified model will be considered in the query. For example, if files A and B have embeddings generated with `OPENAI`, and files C and D have embeddings generated with `COHERE_MULTILINGUAL_V3`, then by default, queries will only consider files A and B. If `COHERE_MULTILINGUAL_V3` is specified as the `embedding_model` in `/embeddings`, then only files C and D will be considered. Make sure that the set of all files you want considered for a query have embeddings generated via the same model. For now, **do not** set `VERTEX_MULTIMODAL` as an `embedding_model`. This model is used automatically by Carbon when it detects an image file.
    # @param file [File] 
    # @param body_create_upload_file_uploadfile_post [BodyCreateUploadFileUploadfilePost] 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :chunk_size Chunk size in tiktoken tokens to be used when processing file.
    # @option opts [Integer] :chunk_overlap Chunk overlap in tiktoken tokens to be used when processing file.
    # @option opts [Boolean] :skip_embedding_generation Flag to control whether or not embeddings should be generated and stored             when processing file. (default to false)
    # @option opts [Boolean] :set_page_as_boundary Flag to control whether or not to set the a page's worth of content as the maximum             amount of content that can appear in a chunk. Only valid for PDFs. See description route description for             more information. (default to false)
    # @option opts [EmbeddingModel] :embedding_model Embedding model that will be used to embed file chunks. (default to 'OPENAI')
    # @option opts [Boolean] :use_ocr Whether or not to use OCR when processing files. Valid for PDFs, JPEGs, and PNGs. Useful for documents with             tables, images, and/or scanned text. (default to false)
    # @option opts [Boolean] :generate_sparse_vectors Whether or not to generate sparse vectors for the file. This is *required* for the file to be a             candidate for hybrid search. (default to false)
    # @option opts [Boolean] :prepend_filename_to_chunks Whether or not to prepend the file's name to chunks. (default to false)
    # @option opts [Integer] :max_items_per_chunk Number of objects per chunk. For csv, tsv, xlsx, and json files only.
    # @option opts [Boolean] :parse_pdf_tables_with_ocr Whether to use rich table parsing when `use_ocr` is enabled. (default to false)
    # @option opts [Boolean] :detect_audio_language Whether to automatically detect the language of the uploaded audio file. (default to false)
    # @option opts [TranscriptionServiceNullable] :transcription_service The transcription service to use for audio files. If no service is specified, 'deepgram' will be used.
    # @option opts [Boolean] :include_speaker_labels Detect multiple speakers and label segments of speech by speaker for audio files. (default to false)
    # @option opts [FileContentTypesNullable] :media_type The media type of the file. If not provided, it will be inferred from the file extension.
    # @option opts [Boolean] :split_rows Whether to split tabular rows into chunks. Currently only valid for CSV, TSV, and XLSX files. (default to false)
    # @option opts [Boolean] :enable_cold_storage Enable cold storage for the file. If set to true, the file will be moved to cold storage after a certain period of inactivity. Default is false. (default to false)
    # @option opts [Integer] :hot_storage_time_to_live Time in days after which the file will be moved to cold storage. Must be one of [1, 3, 7, 14, 30].
    # @option opts [Boolean] :generate_chunks_only If this flag is enabled, the file will be chunked and stored with Carbon,             but no embeddings will be generated. This overrides the skip_embedding_generation flag. (default to false)
    # @option opts [Boolean] :store_file_only If this flag is enabled, the file will be stored with Carbon, but no processing will be done. (default to false)
    # @return [UserFile]
    private def upload_impl(file, body_create_upload_file_uploadfile_post, opts = {})
      data, _status_code, _headers = upload_with_http_info(file, body_create_upload_file_uploadfile_post, opts)
      data
    end

    # Create Upload File
    # This endpoint is used to directly upload local files to Carbon. The &#x60;POST&#x60; request should be a multipart form request. Note that the &#x60;set_page_as_boundary&#x60; query parameter is applicable only to PDFs for now. When this value is set, PDF chunks are at most one page long. Additional information can be retrieved for each chunk, however, namely the coordinates of the bounding box around the chunk (this can be used for things like text highlighting). Following is a description of all possible query parameters: - &#x60;chunk_size&#x60;: the chunk size (in tokens) applied when splitting the document - &#x60;chunk_overlap&#x60;: the chunk overlap (in tokens) applied when splitting the document - &#x60;skip_embedding_generation&#x60;: whether or not to skip the generation of chunks and embeddings - &#x60;set_page_as_boundary&#x60;: described above - &#x60;embedding_model&#x60;: the model used to generate embeddings for the document chunks - &#x60;use_ocr&#x60;: whether or not to use OCR as a preprocessing step prior to generating chunks. Valid for PDFs, JPEGs, and PNGs - &#x60;generate_sparse_vectors&#x60;: whether or not to generate sparse vectors for the file. Required for hybrid search. - &#x60;prepend_filename_to_chunks&#x60;: whether or not to prepend the filename to the chunk text   Carbon supports multiple models for use in generating embeddings for files. For images, we support Vertex AI&#39;s multimodal model; for text, we support OpenAI&#39;s &#x60;text-embedding-ada-002&#x60; and Cohere&#39;s embed-multilingual-v3.0. The model can be specified via the &#x60;embedding_model&#x60; parameter (in the POST body for &#x60;/embeddings&#x60;, and a query  parameter in &#x60;/uploadfile&#x60;). If no model is supplied, the &#x60;text-embedding-ada-002&#x60; is used by default. When performing embedding queries, embeddings from files that used the specified model will be considered in the query. For example, if files A and B have embeddings generated with &#x60;OPENAI&#x60;, and files C and D have embeddings generated with &#x60;COHERE_MULTILINGUAL_V3&#x60;, then by default, queries will only consider files A and B. If &#x60;COHERE_MULTILINGUAL_V3&#x60; is specified as the &#x60;embedding_model&#x60; in &#x60;/embeddings&#x60;, then only files C and D will be considered. Make sure that the set of all files you want considered for a query have embeddings generated via the same model. For now, **do not** set &#x60;VERTEX_MULTIMODAL&#x60; as an &#x60;embedding_model&#x60;. This model is used automatically by Carbon when it detects an image file.
    # @param file [File] 
    # @param body_create_upload_file_uploadfile_post [BodyCreateUploadFileUploadfilePost] 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :chunk_size Chunk size in tiktoken tokens to be used when processing file.
    # @option opts [Integer] :chunk_overlap Chunk overlap in tiktoken tokens to be used when processing file.
    # @option opts [Boolean] :skip_embedding_generation Flag to control whether or not embeddings should be generated and stored             when processing file. (default to false)
    # @option opts [Boolean] :set_page_as_boundary Flag to control whether or not to set the a page's worth of content as the maximum             amount of content that can appear in a chunk. Only valid for PDFs. See description route description for             more information. (default to false)
    # @option opts [EmbeddingModel] :embedding_model Embedding model that will be used to embed file chunks. (default to 'OPENAI')
    # @option opts [Boolean] :use_ocr Whether or not to use OCR when processing files. Valid for PDFs, JPEGs, and PNGs. Useful for documents with             tables, images, and/or scanned text. (default to false)
    # @option opts [Boolean] :generate_sparse_vectors Whether or not to generate sparse vectors for the file. This is *required* for the file to be a             candidate for hybrid search. (default to false)
    # @option opts [Boolean] :prepend_filename_to_chunks Whether or not to prepend the file's name to chunks. (default to false)
    # @option opts [Integer] :max_items_per_chunk Number of objects per chunk. For csv, tsv, xlsx, and json files only.
    # @option opts [Boolean] :parse_pdf_tables_with_ocr Whether to use rich table parsing when `use_ocr` is enabled. (default to false)
    # @option opts [Boolean] :detect_audio_language Whether to automatically detect the language of the uploaded audio file. (default to false)
    # @option opts [TranscriptionServiceNullable] :transcription_service The transcription service to use for audio files. If no service is specified, 'deepgram' will be used.
    # @option opts [Boolean] :include_speaker_labels Detect multiple speakers and label segments of speech by speaker for audio files. (default to false)
    # @option opts [FileContentTypesNullable] :media_type The media type of the file. If not provided, it will be inferred from the file extension.
    # @option opts [Boolean] :split_rows Whether to split tabular rows into chunks. Currently only valid for CSV, TSV, and XLSX files. (default to false)
    # @option opts [Boolean] :enable_cold_storage Enable cold storage for the file. If set to true, the file will be moved to cold storage after a certain period of inactivity. Default is false. (default to false)
    # @option opts [Integer] :hot_storage_time_to_live Time in days after which the file will be moved to cold storage. Must be one of [1, 3, 7, 14, 30].
    # @option opts [Boolean] :generate_chunks_only If this flag is enabled, the file will be chunked and stored with Carbon,             but no embeddings will be generated. This overrides the skip_embedding_generation flag. (default to false)
    # @option opts [Boolean] :store_file_only If this flag is enabled, the file will be stored with Carbon, but no processing will be done. (default to false)
    # @return [APIResponse] data is UserFile, status code, headers and response
    private def upload_with_http_info_impl(file, body_create_upload_file_uploadfile_post, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FilesApi.upload ...'
      end
      # verify the required parameter 'file' is set
      if @api_client.config.client_side_validation && file.nil?
        fail ArgumentError, "Missing the required parameter 'file' when calling FilesApi.upload"
      end
      # verify the required parameter 'body_create_upload_file_uploadfile_post' is set
      if @api_client.config.client_side_validation && body_create_upload_file_uploadfile_post.nil?
        fail ArgumentError, "Missing the required parameter 'body_create_upload_file_uploadfile_post' when calling FilesApi.upload"
      end
      # resource path
      local_var_path = '/uploadfile'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'chunk_size'] = opts[:'chunk_size'] if !opts[:'chunk_size'].nil?
      query_params[:'chunk_overlap'] = opts[:'chunk_overlap'] if !opts[:'chunk_overlap'].nil?
      query_params[:'skip_embedding_generation'] = opts[:'skip_embedding_generation'] if !opts[:'skip_embedding_generation'].nil?
      query_params[:'set_page_as_boundary'] = opts[:'set_page_as_boundary'] if !opts[:'set_page_as_boundary'].nil?
      query_params[:'embedding_model'] = opts[:'embedding_model'] if !opts[:'embedding_model'].nil?
      query_params[:'use_ocr'] = opts[:'use_ocr'] if !opts[:'use_ocr'].nil?
      query_params[:'generate_sparse_vectors'] = opts[:'generate_sparse_vectors'] if !opts[:'generate_sparse_vectors'].nil?
      query_params[:'prepend_filename_to_chunks'] = opts[:'prepend_filename_to_chunks'] if !opts[:'prepend_filename_to_chunks'].nil?
      query_params[:'max_items_per_chunk'] = opts[:'max_items_per_chunk'] if !opts[:'max_items_per_chunk'].nil?
      query_params[:'parse_pdf_tables_with_ocr'] = opts[:'parse_pdf_tables_with_ocr'] if !opts[:'parse_pdf_tables_with_ocr'].nil?
      query_params[:'detect_audio_language'] = opts[:'detect_audio_language'] if !opts[:'detect_audio_language'].nil?
      query_params[:'transcription_service'] = opts[:'transcription_service'] if !opts[:'transcription_service'].nil?
      query_params[:'include_speaker_labels'] = opts[:'include_speaker_labels'] if !opts[:'include_speaker_labels'].nil?
      query_params[:'media_type'] = opts[:'media_type'] if !opts[:'media_type'].nil?
      query_params[:'split_rows'] = opts[:'split_rows'] if !opts[:'split_rows'].nil?
      query_params[:'enable_cold_storage'] = opts[:'enable_cold_storage'] if !opts[:'enable_cold_storage'].nil?
      query_params[:'hot_storage_time_to_live'] = opts[:'hot_storage_time_to_live'] if !opts[:'hot_storage_time_to_live'].nil?
      query_params[:'generate_chunks_only'] = opts[:'generate_chunks_only'] if !opts[:'generate_chunks_only'].nil?
      query_params[:'store_file_only'] = opts[:'store_file_only'] if !opts[:'store_file_only'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['multipart/form-data'])
      if !content_type.nil?
        header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['file'] = file

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body_create_upload_file_uploadfile_post)

      # return_type
      return_type = opts[:debug_return_type] || 'UserFile'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['accessToken', 'apiKey', 'customerId']

      new_options = opts.merge(
        :operation => :"FilesApi.upload",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FilesApi#upload\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Create Upload File From Url
    #
    # @param url [String] 
    # @param file_name [String] 
    # @param chunk_size [Integer] 
    # @param chunk_overlap [Integer] 
    # @param skip_embedding_generation [Boolean] 
    # @param set_page_as_boundary [Boolean] 
    # @param embedding_model [EmbeddingGenerators] 
    # @param generate_sparse_vectors [Boolean] 
    # @param use_textract [Boolean] 
    # @param prepend_filename_to_chunks [Boolean] 
    # @param max_items_per_chunk [Integer] Number of objects per chunk. For csv, tsv, xlsx, and json files only.
    # @param parse_pdf_tables_with_ocr [Boolean] 
    # @param detect_audio_language [Boolean] 
    # @param transcription_service [TranscriptionServiceNullable] 
    # @param include_speaker_labels [Boolean] 
    # @param media_type [FileContentTypesNullable] 
    # @param split_rows [Boolean] 
    # @param cold_storage_params [ColdStorageProps] 
    # @param generate_chunks_only [Boolean] If this flag is enabled, the file will be chunked and stored with Carbon, but no embeddings will be generated. This overrides the skip_embedding_generation flag.
    # @param store_file_only [Boolean] If this flag is enabled, the file will be stored with Carbon, but no processing will be done.
    # @param body [UploadFileFromUrlInput] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def upload_from_url(url:, file_name: SENTINEL, chunk_size: SENTINEL, chunk_overlap: SENTINEL, skip_embedding_generation: false, set_page_as_boundary: false, embedding_model: SENTINEL, generate_sparse_vectors: false, use_textract: false, prepend_filename_to_chunks: false, max_items_per_chunk: SENTINEL, parse_pdf_tables_with_ocr: false, detect_audio_language: false, transcription_service: SENTINEL, include_speaker_labels: false, media_type: SENTINEL, split_rows: false, cold_storage_params: SENTINEL, generate_chunks_only: false, store_file_only: false, extra: {})
      _body = {}
      _body[:url] = url if url != SENTINEL
      _body[:file_name] = file_name if file_name != SENTINEL
      _body[:chunk_size] = chunk_size if chunk_size != SENTINEL
      _body[:chunk_overlap] = chunk_overlap if chunk_overlap != SENTINEL
      _body[:skip_embedding_generation] = skip_embedding_generation if skip_embedding_generation != SENTINEL
      _body[:set_page_as_boundary] = set_page_as_boundary if set_page_as_boundary != SENTINEL
      _body[:embedding_model] = embedding_model if embedding_model != SENTINEL
      _body[:generate_sparse_vectors] = generate_sparse_vectors if generate_sparse_vectors != SENTINEL
      _body[:use_textract] = use_textract if use_textract != SENTINEL
      _body[:prepend_filename_to_chunks] = prepend_filename_to_chunks if prepend_filename_to_chunks != SENTINEL
      _body[:max_items_per_chunk] = max_items_per_chunk if max_items_per_chunk != SENTINEL
      _body[:parse_pdf_tables_with_ocr] = parse_pdf_tables_with_ocr if parse_pdf_tables_with_ocr != SENTINEL
      _body[:detect_audio_language] = detect_audio_language if detect_audio_language != SENTINEL
      _body[:transcription_service] = transcription_service if transcription_service != SENTINEL
      _body[:include_speaker_labels] = include_speaker_labels if include_speaker_labels != SENTINEL
      _body[:media_type] = media_type if media_type != SENTINEL
      _body[:split_rows] = split_rows if split_rows != SENTINEL
      _body[:cold_storage_params] = cold_storage_params if cold_storage_params != SENTINEL
      _body[:generate_chunks_only] = generate_chunks_only if generate_chunks_only != SENTINEL
      _body[:store_file_only] = store_file_only if store_file_only != SENTINEL
      upload_file_from_url_input = _body
      api_response = upload_from_url_with_http_info_impl(upload_file_from_url_input, extra)
      api_response.data
    end

    # Create Upload File From Url
    #
    # @param url [String] 
    # @param file_name [String] 
    # @param chunk_size [Integer] 
    # @param chunk_overlap [Integer] 
    # @param skip_embedding_generation [Boolean] 
    # @param set_page_as_boundary [Boolean] 
    # @param embedding_model [EmbeddingGenerators] 
    # @param generate_sparse_vectors [Boolean] 
    # @param use_textract [Boolean] 
    # @param prepend_filename_to_chunks [Boolean] 
    # @param max_items_per_chunk [Integer] Number of objects per chunk. For csv, tsv, xlsx, and json files only.
    # @param parse_pdf_tables_with_ocr [Boolean] 
    # @param detect_audio_language [Boolean] 
    # @param transcription_service [TranscriptionServiceNullable] 
    # @param include_speaker_labels [Boolean] 
    # @param media_type [FileContentTypesNullable] 
    # @param split_rows [Boolean] 
    # @param cold_storage_params [ColdStorageProps] 
    # @param generate_chunks_only [Boolean] If this flag is enabled, the file will be chunked and stored with Carbon, but no embeddings will be generated. This overrides the skip_embedding_generation flag.
    # @param store_file_only [Boolean] If this flag is enabled, the file will be stored with Carbon, but no processing will be done.
    # @param body [UploadFileFromUrlInput] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def upload_from_url_with_http_info(url:, file_name: SENTINEL, chunk_size: SENTINEL, chunk_overlap: SENTINEL, skip_embedding_generation: false, set_page_as_boundary: false, embedding_model: SENTINEL, generate_sparse_vectors: false, use_textract: false, prepend_filename_to_chunks: false, max_items_per_chunk: SENTINEL, parse_pdf_tables_with_ocr: false, detect_audio_language: false, transcription_service: SENTINEL, include_speaker_labels: false, media_type: SENTINEL, split_rows: false, cold_storage_params: SENTINEL, generate_chunks_only: false, store_file_only: false, extra: {})
      _body = {}
      _body[:url] = url if url != SENTINEL
      _body[:file_name] = file_name if file_name != SENTINEL
      _body[:chunk_size] = chunk_size if chunk_size != SENTINEL
      _body[:chunk_overlap] = chunk_overlap if chunk_overlap != SENTINEL
      _body[:skip_embedding_generation] = skip_embedding_generation if skip_embedding_generation != SENTINEL
      _body[:set_page_as_boundary] = set_page_as_boundary if set_page_as_boundary != SENTINEL
      _body[:embedding_model] = embedding_model if embedding_model != SENTINEL
      _body[:generate_sparse_vectors] = generate_sparse_vectors if generate_sparse_vectors != SENTINEL
      _body[:use_textract] = use_textract if use_textract != SENTINEL
      _body[:prepend_filename_to_chunks] = prepend_filename_to_chunks if prepend_filename_to_chunks != SENTINEL
      _body[:max_items_per_chunk] = max_items_per_chunk if max_items_per_chunk != SENTINEL
      _body[:parse_pdf_tables_with_ocr] = parse_pdf_tables_with_ocr if parse_pdf_tables_with_ocr != SENTINEL
      _body[:detect_audio_language] = detect_audio_language if detect_audio_language != SENTINEL
      _body[:transcription_service] = transcription_service if transcription_service != SENTINEL
      _body[:include_speaker_labels] = include_speaker_labels if include_speaker_labels != SENTINEL
      _body[:media_type] = media_type if media_type != SENTINEL
      _body[:split_rows] = split_rows if split_rows != SENTINEL
      _body[:cold_storage_params] = cold_storage_params if cold_storage_params != SENTINEL
      _body[:generate_chunks_only] = generate_chunks_only if generate_chunks_only != SENTINEL
      _body[:store_file_only] = store_file_only if store_file_only != SENTINEL
      upload_file_from_url_input = _body
      upload_from_url_with_http_info_impl(upload_file_from_url_input, extra)
    end

    # Create Upload File From Url
    # @param upload_file_from_url_input [UploadFileFromUrlInput] 
    # @param [Hash] opts the optional parameters
    # @return [UserFile]
    private def upload_from_url_impl(upload_file_from_url_input, opts = {})
      data, _status_code, _headers = upload_from_url_with_http_info(upload_file_from_url_input, opts)
      data
    end

    # Create Upload File From Url
    # @param upload_file_from_url_input [UploadFileFromUrlInput] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is UserFile, status code, headers and response
    private def upload_from_url_with_http_info_impl(upload_file_from_url_input, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FilesApi.upload_from_url ...'
      end
      # verify the required parameter 'upload_file_from_url_input' is set
      if @api_client.config.client_side_validation && upload_file_from_url_input.nil?
        fail ArgumentError, "Missing the required parameter 'upload_file_from_url_input' when calling FilesApi.upload_from_url"
      end
      # resource path
      local_var_path = '/upload_file_from_url'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(upload_file_from_url_input)

      # return_type
      return_type = opts[:debug_return_type] || 'UserFile'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['accessToken', 'apiKey', 'customerId']

      new_options = opts.merge(
        :operation => :"FilesApi.upload_from_url",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FilesApi#upload_from_url\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Create Raw Text
    #
    # Carbon supports multiple models for use in generating embeddings for files. For images, we support Vertex AI's
    # multimodal model; for text, we support OpenAI's `text-embedding-ada-002` and Cohere's embed-multilingual-v3.0.
    # The model can be specified via the `embedding_model` parameter (in the POST body for `/embeddings`, and a query 
    # parameter in `/uploadfile`). If no model is supplied, the `text-embedding-ada-002` is used by default. When performing
    # embedding queries, embeddings from files that used the specified model will be considered in the query.
    # For example, if files A and B have embeddings generated with `OPENAI`, and files C and D have embeddings generated with
    # `COHERE_MULTILINGUAL_V3`, then by default, queries will only consider files A and B. If `COHERE_MULTILINGUAL_V3` is
    # specified as the `embedding_model` in `/embeddings`, then only files C and D will be considered. Make sure that
    # the set of all files you want considered for a query have embeddings generated via the same model. For now, **do not**
    # set `VERTEX_MULTIMODAL` as an `embedding_model`. This model is used automatically by Carbon when it detects an image file.
    #
    # @param contents [String] 
    # @param name [String] 
    # @param chunk_size [Integer] 
    # @param chunk_overlap [Integer] 
    # @param skip_embedding_generation [Boolean] 
    # @param overwrite_file_id [Integer] 
    # @param embedding_model [EmbeddingGeneratorsNullable] 
    # @param generate_sparse_vectors [Boolean] 
    # @param cold_storage_params [ColdStorageProps] 
    # @param generate_chunks_only [Boolean] If this flag is enabled, the file will be chunked and stored with Carbon, but no embeddings will be generated. This overrides the skip_embedding_generation flag.
    # @param store_file_only [Boolean] If this flag is enabled, the file will be stored with Carbon, but no processing will be done.
    # @param body [RawTextInput] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def upload_text(contents:, name: SENTINEL, chunk_size: SENTINEL, chunk_overlap: SENTINEL, skip_embedding_generation: false, overwrite_file_id: SENTINEL, embedding_model: 'OPENAI', generate_sparse_vectors: false, cold_storage_params: SENTINEL, generate_chunks_only: false, store_file_only: false, extra: {})
      _body = {}
      _body[:contents] = contents if contents != SENTINEL
      _body[:name] = name if name != SENTINEL
      _body[:chunk_size] = chunk_size if chunk_size != SENTINEL
      _body[:chunk_overlap] = chunk_overlap if chunk_overlap != SENTINEL
      _body[:skip_embedding_generation] = skip_embedding_generation if skip_embedding_generation != SENTINEL
      _body[:overwrite_file_id] = overwrite_file_id if overwrite_file_id != SENTINEL
      _body[:embedding_model] = embedding_model if embedding_model != SENTINEL
      _body[:generate_sparse_vectors] = generate_sparse_vectors if generate_sparse_vectors != SENTINEL
      _body[:cold_storage_params] = cold_storage_params if cold_storage_params != SENTINEL
      _body[:generate_chunks_only] = generate_chunks_only if generate_chunks_only != SENTINEL
      _body[:store_file_only] = store_file_only if store_file_only != SENTINEL
      raw_text_input = _body
      api_response = upload_text_with_http_info_impl(raw_text_input, extra)
      api_response.data
    end

    # Create Raw Text
    #
    # Carbon supports multiple models for use in generating embeddings for files. For images, we support Vertex AI's
    # multimodal model; for text, we support OpenAI's `text-embedding-ada-002` and Cohere's embed-multilingual-v3.0.
    # The model can be specified via the `embedding_model` parameter (in the POST body for `/embeddings`, and a query 
    # parameter in `/uploadfile`). If no model is supplied, the `text-embedding-ada-002` is used by default. When performing
    # embedding queries, embeddings from files that used the specified model will be considered in the query.
    # For example, if files A and B have embeddings generated with `OPENAI`, and files C and D have embeddings generated with
    # `COHERE_MULTILINGUAL_V3`, then by default, queries will only consider files A and B. If `COHERE_MULTILINGUAL_V3` is
    # specified as the `embedding_model` in `/embeddings`, then only files C and D will be considered. Make sure that
    # the set of all files you want considered for a query have embeddings generated via the same model. For now, **do not**
    # set `VERTEX_MULTIMODAL` as an `embedding_model`. This model is used automatically by Carbon when it detects an image file.
    #
    # @param contents [String] 
    # @param name [String] 
    # @param chunk_size [Integer] 
    # @param chunk_overlap [Integer] 
    # @param skip_embedding_generation [Boolean] 
    # @param overwrite_file_id [Integer] 
    # @param embedding_model [EmbeddingGeneratorsNullable] 
    # @param generate_sparse_vectors [Boolean] 
    # @param cold_storage_params [ColdStorageProps] 
    # @param generate_chunks_only [Boolean] If this flag is enabled, the file will be chunked and stored with Carbon, but no embeddings will be generated. This overrides the skip_embedding_generation flag.
    # @param store_file_only [Boolean] If this flag is enabled, the file will be stored with Carbon, but no processing will be done.
    # @param body [RawTextInput] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def upload_text_with_http_info(contents:, name: SENTINEL, chunk_size: SENTINEL, chunk_overlap: SENTINEL, skip_embedding_generation: false, overwrite_file_id: SENTINEL, embedding_model: 'OPENAI', generate_sparse_vectors: false, cold_storage_params: SENTINEL, generate_chunks_only: false, store_file_only: false, extra: {})
      _body = {}
      _body[:contents] = contents if contents != SENTINEL
      _body[:name] = name if name != SENTINEL
      _body[:chunk_size] = chunk_size if chunk_size != SENTINEL
      _body[:chunk_overlap] = chunk_overlap if chunk_overlap != SENTINEL
      _body[:skip_embedding_generation] = skip_embedding_generation if skip_embedding_generation != SENTINEL
      _body[:overwrite_file_id] = overwrite_file_id if overwrite_file_id != SENTINEL
      _body[:embedding_model] = embedding_model if embedding_model != SENTINEL
      _body[:generate_sparse_vectors] = generate_sparse_vectors if generate_sparse_vectors != SENTINEL
      _body[:cold_storage_params] = cold_storage_params if cold_storage_params != SENTINEL
      _body[:generate_chunks_only] = generate_chunks_only if generate_chunks_only != SENTINEL
      _body[:store_file_only] = store_file_only if store_file_only != SENTINEL
      raw_text_input = _body
      upload_text_with_http_info_impl(raw_text_input, extra)
    end

    # Create Raw Text
    # Carbon supports multiple models for use in generating embeddings for files. For images, we support Vertex AI's multimodal model; for text, we support OpenAI's `text-embedding-ada-002` and Cohere's embed-multilingual-v3.0. The model can be specified via the `embedding_model` parameter (in the POST body for `/embeddings`, and a query  parameter in `/uploadfile`). If no model is supplied, the `text-embedding-ada-002` is used by default. When performing embedding queries, embeddings from files that used the specified model will be considered in the query. For example, if files A and B have embeddings generated with `OPENAI`, and files C and D have embeddings generated with `COHERE_MULTILINGUAL_V3`, then by default, queries will only consider files A and B. If `COHERE_MULTILINGUAL_V3` is specified as the `embedding_model` in `/embeddings`, then only files C and D will be considered. Make sure that the set of all files you want considered for a query have embeddings generated via the same model. For now, **do not** set `VERTEX_MULTIMODAL` as an `embedding_model`. This model is used automatically by Carbon when it detects an image file.
    # @param raw_text_input [RawTextInput] 
    # @param [Hash] opts the optional parameters
    # @return [UserFile]
    private def upload_text_impl(raw_text_input, opts = {})
      data, _status_code, _headers = upload_text_with_http_info(raw_text_input, opts)
      data
    end

    # Create Raw Text
    # Carbon supports multiple models for use in generating embeddings for files. For images, we support Vertex AI&#39;s multimodal model; for text, we support OpenAI&#39;s &#x60;text-embedding-ada-002&#x60; and Cohere&#39;s embed-multilingual-v3.0. The model can be specified via the &#x60;embedding_model&#x60; parameter (in the POST body for &#x60;/embeddings&#x60;, and a query  parameter in &#x60;/uploadfile&#x60;). If no model is supplied, the &#x60;text-embedding-ada-002&#x60; is used by default. When performing embedding queries, embeddings from files that used the specified model will be considered in the query. For example, if files A and B have embeddings generated with &#x60;OPENAI&#x60;, and files C and D have embeddings generated with &#x60;COHERE_MULTILINGUAL_V3&#x60;, then by default, queries will only consider files A and B. If &#x60;COHERE_MULTILINGUAL_V3&#x60; is specified as the &#x60;embedding_model&#x60; in &#x60;/embeddings&#x60;, then only files C and D will be considered. Make sure that the set of all files you want considered for a query have embeddings generated via the same model. For now, **do not** set &#x60;VERTEX_MULTIMODAL&#x60; as an &#x60;embedding_model&#x60;. This model is used automatically by Carbon when it detects an image file.
    # @param raw_text_input [RawTextInput] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is UserFile, status code, headers and response
    private def upload_text_with_http_info_impl(raw_text_input, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FilesApi.upload_text ...'
      end
      # verify the required parameter 'raw_text_input' is set
      if @api_client.config.client_side_validation && raw_text_input.nil?
        fail ArgumentError, "Missing the required parameter 'raw_text_input' when calling FilesApi.upload_text"
      end
      # resource path
      local_var_path = '/upload_text'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(raw_text_input)

      # return_type
      return_type = opts[:debug_return_type] || 'UserFile'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['accessToken', 'apiKey', 'customerId']

      new_options = opts.merge(
        :operation => :"FilesApi.upload_text",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FilesApi#upload_text\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end
  end

  # top-level client access to avoid having the user to insantiate their own API instances
  Files = FilesApi::new
end
