=begin
#Carbon

#Connect external data to LLMs, no matter the source.

The version of the OpenAPI document: 1.0.0
=end

require 'cgi'

module Carbon
  class UsersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Delete Users
    #
    # @param customer_ids [Array<String>] 
    # @param body [DeleteUsersInput] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def delete(customer_ids:, extra: {})
      _body = {}
      _body[:customer_ids] = customer_ids if customer_ids != SENTINEL
      delete_users_input = _body
      api_response = delete_with_http_info_impl(delete_users_input, extra)
      api_response.data
    end

    # Delete Users
    #
    # @param customer_ids [Array<String>] 
    # @param body [DeleteUsersInput] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def delete_with_http_info(customer_ids:, extra: {})
      _body = {}
      _body[:customer_ids] = customer_ids if customer_ids != SENTINEL
      delete_users_input = _body
      delete_with_http_info_impl(delete_users_input, extra)
    end

    # Delete Users
    # @param delete_users_input [DeleteUsersInput] 
    # @param [Hash] opts the optional parameters
    # @return [GenericSuccessResponse]
    private def delete_impl(delete_users_input, opts = {})
      data, _status_code, _headers = delete_with_http_info(delete_users_input, opts)
      data
    end

    # Delete Users
    # @param delete_users_input [DeleteUsersInput] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is GenericSuccessResponse, status code, headers and response
    private def delete_with_http_info_impl(delete_users_input, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.delete ...'
      end
      # verify the required parameter 'delete_users_input' is set
      if @api_client.config.client_side_validation && delete_users_input.nil?
        fail ArgumentError, "Missing the required parameter 'delete_users_input' when calling UsersApi.delete"
      end
      # resource path
      local_var_path = '/delete_users'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(delete_users_input)

      # return_type
      return_type = opts[:debug_return_type] || 'GenericSuccessResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey']

      new_options = opts.merge(
        :operation => :"UsersApi.delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # User Endpoint
    #
    # @param customer_id [String] 
    # @param body [UserRequestContent] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get(customer_id:, extra: {})
      _body = {}
      _body[:customer_id] = customer_id if customer_id != SENTINEL
      user_request_content = _body
      api_response = get_with_http_info_impl(user_request_content, extra)
      api_response.data
    end

    # User Endpoint
    #
    # @param customer_id [String] 
    # @param body [UserRequestContent] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_with_http_info(customer_id:, extra: {})
      _body = {}
      _body[:customer_id] = customer_id if customer_id != SENTINEL
      user_request_content = _body
      get_with_http_info_impl(user_request_content, extra)
    end

    # User Endpoint
    # @param user_request_content [UserRequestContent] 
    # @param [Hash] opts the optional parameters
    # @return [UserResponse]
    private def get_impl(user_request_content, opts = {})
      data, _status_code, _headers = get_with_http_info(user_request_content, opts)
      data
    end

    # User Endpoint
    # @param user_request_content [UserRequestContent] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is UserResponse, status code, headers and response
    private def get_with_http_info_impl(user_request_content, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.get ...'
      end
      # verify the required parameter 'user_request_content' is set
      if @api_client.config.client_side_validation && user_request_content.nil?
        fail ArgumentError, "Missing the required parameter 'user_request_content' when calling UsersApi.get"
      end
      # resource path
      local_var_path = '/user'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(user_request_content)

      # return_type
      return_type = opts[:debug_return_type] || 'UserResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey']

      new_options = opts.merge(
        :operation => :"UsersApi.get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # List Users Endpoint
    #
    # List users within an organization
    #
    # @param pagination [Pagination] 
    # @param filters [ListUsersFilters] 
    # @param order_by [ListUsersOrderByTypes] 
    # @param order_dir [OrderDirV2] 
    # @param include_count [Boolean] 
    # @param body [ListUsersRequest] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list(pagination: SENTINEL, filters: SENTINEL, order_by: SENTINEL, order_dir: SENTINEL, include_count: false, extra: {})
      _body = {}
      _body[:pagination] = pagination if pagination != SENTINEL
      _body[:filters] = filters if filters != SENTINEL
      _body[:order_by] = order_by if order_by != SENTINEL
      _body[:order_dir] = order_dir if order_dir != SENTINEL
      _body[:include_count] = include_count if include_count != SENTINEL
      list_users_request = _body
      api_response = list_with_http_info_impl(list_users_request, extra)
      api_response.data
    end

    # List Users Endpoint
    #
    # List users within an organization
    #
    # @param pagination [Pagination] 
    # @param filters [ListUsersFilters] 
    # @param order_by [ListUsersOrderByTypes] 
    # @param order_dir [OrderDirV2] 
    # @param include_count [Boolean] 
    # @param body [ListUsersRequest] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_with_http_info(pagination: SENTINEL, filters: SENTINEL, order_by: SENTINEL, order_dir: SENTINEL, include_count: false, extra: {})
      _body = {}
      _body[:pagination] = pagination if pagination != SENTINEL
      _body[:filters] = filters if filters != SENTINEL
      _body[:order_by] = order_by if order_by != SENTINEL
      _body[:order_dir] = order_dir if order_dir != SENTINEL
      _body[:include_count] = include_count if include_count != SENTINEL
      list_users_request = _body
      list_with_http_info_impl(list_users_request, extra)
    end

    # List Users Endpoint
    # List users within an organization
    # @param list_users_request [ListUsersRequest] 
    # @param [Hash] opts the optional parameters
    # @return [UserListResponse]
    private def list_impl(list_users_request, opts = {})
      data, _status_code, _headers = list_with_http_info(list_users_request, opts)
      data
    end

    # List Users Endpoint
    # List users within an organization
    # @param list_users_request [ListUsersRequest] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is UserListResponse, status code, headers and response
    private def list_with_http_info_impl(list_users_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.list ...'
      end
      # verify the required parameter 'list_users_request' is set
      if @api_client.config.client_side_validation && list_users_request.nil?
        fail ArgumentError, "Missing the required parameter 'list_users_request' when calling UsersApi.list"
      end
      # resource path
      local_var_path = '/list_users'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(list_users_request)

      # return_type
      return_type = opts[:debug_return_type] || 'UserListResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey']

      new_options = opts.merge(
        :operation => :"UsersApi.list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Toggle User Features
    #
    # @param configuration_key_name [ConfigurationKeys] 
    # @param value [Object] 
    # @param body [ModifyUserConfigurationInput] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def toggle_user_features(configuration_key_name:, value:, extra: {})
      _body = {}
      _body[:configuration_key_name] = configuration_key_name if configuration_key_name != SENTINEL
      _body[:value] = value if value != SENTINEL
      modify_user_configuration_input = _body
      api_response = toggle_user_features_with_http_info_impl(modify_user_configuration_input, extra)
      api_response.data
    end

    # Toggle User Features
    #
    # @param configuration_key_name [ConfigurationKeys] 
    # @param value [Object] 
    # @param body [ModifyUserConfigurationInput] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def toggle_user_features_with_http_info(configuration_key_name:, value:, extra: {})
      _body = {}
      _body[:configuration_key_name] = configuration_key_name if configuration_key_name != SENTINEL
      _body[:value] = value if value != SENTINEL
      modify_user_configuration_input = _body
      toggle_user_features_with_http_info_impl(modify_user_configuration_input, extra)
    end

    # Toggle User Features
    # @param modify_user_configuration_input [ModifyUserConfigurationInput] 
    # @param [Hash] opts the optional parameters
    # @return [GenericSuccessResponse]
    private def toggle_user_features_impl(modify_user_configuration_input, opts = {})
      data, _status_code, _headers = toggle_user_features_with_http_info(modify_user_configuration_input, opts)
      data
    end

    # Toggle User Features
    # @param modify_user_configuration_input [ModifyUserConfigurationInput] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is GenericSuccessResponse, status code, headers and response
    private def toggle_user_features_with_http_info_impl(modify_user_configuration_input, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.toggle_user_features ...'
      end
      # verify the required parameter 'modify_user_configuration_input' is set
      if @api_client.config.client_side_validation && modify_user_configuration_input.nil?
        fail ArgumentError, "Missing the required parameter 'modify_user_configuration_input' when calling UsersApi.toggle_user_features"
      end
      # resource path
      local_var_path = '/modify_user_configuration'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(modify_user_configuration_input)

      # return_type
      return_type = opts[:debug_return_type] || 'GenericSuccessResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['accessToken', 'apiKey', 'customerId']

      new_options = opts.merge(
        :operation => :"UsersApi.toggle_user_features",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#toggle_user_features\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Update Users
    #
    # @param customer_ids [Array<String>] List of organization supplied user IDs
    # @param auto_sync_enabled_sources [AutoSyncEnabledSourcesProperty] 
    # @param max_files [Integer] Custom file upload limit for the user over *all* user's files across all uploads. If set, then the user will not be allowed to upload more files than this limit. If not set, or if set to -1, then the user will have no limit.
    # @param max_files_per_upload [Integer] Custom file upload limit for the user across a single upload. If set, then the user will not be allowed to upload more files than this limit in a single upload. If not set, or if set to -1, then the user will have no limit.
    # @param max_characters [Integer] Custom character upload limit for the user over *all* user's files across all uploads. If set, then the user will not be allowed to upload more characters than this limit. If not set, or if set to -1, then the user will have no limit.
    # @param max_characters_per_file [Integer] A single file upload from the user can not exceed this character limit. If set, then the file will not be synced if it exceeds this limit. If not set, or if set to -1, then the user will have no limit.
    # @param max_characters_per_upload [Integer] Custom character upload limit for the user across a single upload. If set, then the user won't be able to sync more than this many characters in one upload. If not set, or if set to -1, then the user will have no limit.
    # @param auto_sync_interval [Integer] The interval in hours at which the user's data sources should be synced. If not set or set to -1, the user will be synced at the organization level interval or default interval if that is also not set. Must be one of [3, 6, 12, 24]
    # @param body [UpdateUsersInput] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def update_users(customer_ids:, auto_sync_enabled_sources: SENTINEL, max_files: SENTINEL, max_files_per_upload: SENTINEL, max_characters: SENTINEL, max_characters_per_file: SENTINEL, max_characters_per_upload: SENTINEL, auto_sync_interval: SENTINEL, extra: {})
      _body = {}
      _body[:auto_sync_enabled_sources] = auto_sync_enabled_sources if auto_sync_enabled_sources != SENTINEL
      _body[:max_files] = max_files if max_files != SENTINEL
      _body[:max_files_per_upload] = max_files_per_upload if max_files_per_upload != SENTINEL
      _body[:max_characters] = max_characters if max_characters != SENTINEL
      _body[:max_characters_per_file] = max_characters_per_file if max_characters_per_file != SENTINEL
      _body[:max_characters_per_upload] = max_characters_per_upload if max_characters_per_upload != SENTINEL
      _body[:auto_sync_interval] = auto_sync_interval if auto_sync_interval != SENTINEL
      _body[:customer_ids] = customer_ids if customer_ids != SENTINEL
      update_users_input = _body
      api_response = update_users_with_http_info_impl(update_users_input, extra)
      api_response.data
    end

    # Update Users
    #
    # @param customer_ids [Array<String>] List of organization supplied user IDs
    # @param auto_sync_enabled_sources [AutoSyncEnabledSourcesProperty] 
    # @param max_files [Integer] Custom file upload limit for the user over *all* user's files across all uploads. If set, then the user will not be allowed to upload more files than this limit. If not set, or if set to -1, then the user will have no limit.
    # @param max_files_per_upload [Integer] Custom file upload limit for the user across a single upload. If set, then the user will not be allowed to upload more files than this limit in a single upload. If not set, or if set to -1, then the user will have no limit.
    # @param max_characters [Integer] Custom character upload limit for the user over *all* user's files across all uploads. If set, then the user will not be allowed to upload more characters than this limit. If not set, or if set to -1, then the user will have no limit.
    # @param max_characters_per_file [Integer] A single file upload from the user can not exceed this character limit. If set, then the file will not be synced if it exceeds this limit. If not set, or if set to -1, then the user will have no limit.
    # @param max_characters_per_upload [Integer] Custom character upload limit for the user across a single upload. If set, then the user won't be able to sync more than this many characters in one upload. If not set, or if set to -1, then the user will have no limit.
    # @param auto_sync_interval [Integer] The interval in hours at which the user's data sources should be synced. If not set or set to -1, the user will be synced at the organization level interval or default interval if that is also not set. Must be one of [3, 6, 12, 24]
    # @param body [UpdateUsersInput] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def update_users_with_http_info(customer_ids:, auto_sync_enabled_sources: SENTINEL, max_files: SENTINEL, max_files_per_upload: SENTINEL, max_characters: SENTINEL, max_characters_per_file: SENTINEL, max_characters_per_upload: SENTINEL, auto_sync_interval: SENTINEL, extra: {})
      _body = {}
      _body[:auto_sync_enabled_sources] = auto_sync_enabled_sources if auto_sync_enabled_sources != SENTINEL
      _body[:max_files] = max_files if max_files != SENTINEL
      _body[:max_files_per_upload] = max_files_per_upload if max_files_per_upload != SENTINEL
      _body[:max_characters] = max_characters if max_characters != SENTINEL
      _body[:max_characters_per_file] = max_characters_per_file if max_characters_per_file != SENTINEL
      _body[:max_characters_per_upload] = max_characters_per_upload if max_characters_per_upload != SENTINEL
      _body[:auto_sync_interval] = auto_sync_interval if auto_sync_interval != SENTINEL
      _body[:customer_ids] = customer_ids if customer_ids != SENTINEL
      update_users_input = _body
      update_users_with_http_info_impl(update_users_input, extra)
    end

    # Update Users
    # @param update_users_input [UpdateUsersInput] 
    # @param [Hash] opts the optional parameters
    # @return [GenericSuccessResponse]
    private def update_users_impl(update_users_input, opts = {})
      data, _status_code, _headers = update_users_with_http_info(update_users_input, opts)
      data
    end

    # Update Users
    # @param update_users_input [UpdateUsersInput] 
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is GenericSuccessResponse, status code, headers and response
    private def update_users_with_http_info_impl(update_users_input, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.update_users ...'
      end
      # verify the required parameter 'update_users_input' is set
      if @api_client.config.client_side_validation && update_users_input.nil?
        fail ArgumentError, "Missing the required parameter 'update_users_input' when calling UsersApi.update_users"
      end
      # resource path
      local_var_path = '/update_users'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_users_input)

      # return_type
      return_type = opts[:debug_return_type] || 'GenericSuccessResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey']

      new_options = opts.merge(
        :operation => :"UsersApi.update_users",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#update_users\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end


    # Me Endpoint
    #
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def who_am_i(extra: {})
      api_response = who_am_i_with_http_info_impl(extra)
      api_response.data
    end

    # Me Endpoint
    #
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def who_am_i_with_http_info(extra: {})
      who_am_i_with_http_info_impl(extra)
    end

    # Me Endpoint
    # @param [Hash] opts the optional parameters
    # @return [UserResponse]
    private def who_am_i_impl(opts = {})
      data, _status_code, _headers = who_am_i_with_http_info(opts)
      data
    end

    # Me Endpoint
    # @param [Hash] opts the optional parameters
    # @return [APIResponse] data is UserResponse, status code, headers and response
    private def who_am_i_with_http_info_impl(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.who_am_i ...'
      end
      # resource path
      local_var_path = '/whoami'

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
      return_type = opts[:debug_return_type] || 'UserResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['accessToken', 'apiKey', 'customerId']

      new_options = opts.merge(
        :operation => :"UsersApi.who_am_i",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#who_am_i\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      APIResponse::new(data, status_code, headers, response)
    end
  end

  # top-level client access to avoid having the user to insantiate their own API instances
  Users = UsersApi::new
end
